<?php

namespace App\Http\Livewire;

use Exception;
use Illuminate\Contracts\View\View;
use Livewire\Component;
use OpenAI\Laravel\Facades\OpenAI;

class ChatBot extends Component
{
    public array $chats = [];

    public string $type = "chat";

    public string $input = '';

    public function render(): View
    {
        return view('livewire.chat-bot');
    }

    /**
     * @return void
     * @throws Exception
     */
    public function submit(): void
    {
        $this->chats[] = ['user' => 'human', "type" => "chat", 'request' => $this->input];

        if ($this->type === 'chat') {
            $result = $this->completion($this->input);
        } elseif ($this->type === 'image') {
            $result = $this->imageGeneration($this->input);
        }else {
            throw new Exception("Unknown type");
        }

        $this->chats[] = ['user' => 'ai', 'response' => $result, 'type' => $this->type];

        $this->input = "";
    }

    private function completion(string $input): string
    {
        $result = OpenAI::completions()->create([
            'max_tokens' => 100,
            'model' => 'text-davinci-003',
            'prompt' => $input
        ]);

        return array_reduce(
            $result->toArray()['choices'],
            fn(string $result, array $choice) => $result . $choice['text'],
            ""
        );
    }

    private function imageGeneration(string $input): string
    {
        $result = OpenAI::images()->create([
            'prompt' => $input,
            "size"=>"1024x1024",
            "n"=>1,
        ]);

        return data_get($result->toArray(), 'data.0.url', '');
    }
}
