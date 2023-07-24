<template>
  <section class="bg-[#F8FAFC]">
    <div class="container p-20 space-y-7">
      <div class="text-center col-span-2">
        <h2 class="text-5xl">See what our customers are saying</h2>
        <p>2,157 people have said how good we are</p>
      </div>

      <div class="grid grid-cols-2 max-w-5xl mx-auto">
        <div class="flex-center">
          <div class="max-w-sm flex flex-col items-star gap-7">
            <p class="text-2xl">
              “This is the best course for React! Highly Recommened”
            </p>
            <div class="relative space-y-2">
              <img src="/images/testimonial-man.png" alt="Dianne Russell"/>
              <svg class="absolute scale-125 top-1/2 left-1/2 transform  -translate-y-1/2 -translate-x-1/2"
                   xmlns="http://www.w3.org/2000/svg"
                   xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 522 522">
                <defs>
                  <filter id="BG" x="0" y="0" width="522" height="522" filterUnits="userSpaceOnUse">
                    <feOffset dy="24" input="SourceAlpha"/>
                    <feGaussianBlur stdDeviation="77" result="blur"/>
                    <feFlood flood-opacity="0.251"/>
                    <feComposite operator="in" in2="blur"/>
                    <feComposite in="SourceGraphic"/>
                  </filter>
                  <clipPath id="clip-path">
                    <rect id="Icon_Outline_play_Background_Mask_" data-name="Icon/Outline/play (Background/Mask)"
                          width="23" height="23" fill="none"/>
                  </clipPath>
                </defs>
                <g id="Play" transform="translate(231 207)">
                  <g transform="matrix(1, 0, 0, 1, -231, -207)" filter="url(#BG)">
                    <circle id="BG-2" data-name="BG" cx="30" cy="30" r="30" transform="translate(231 207)" fill="#fff"/>
                  </g>
                  <g id="Icon_Outline_play" data-name="Icon/Outline/play" transform="translate(20 19)">
                    <rect id="Icon_Outline_play_Background_Mask_2" data-name="Icon/Outline/play (Background/Mask)"
                          width="23" height="23" fill="none"/>
                    <g id="Icon_Outline_play-2" data-name="Icon/Outline/play" clip-path="url(#clip-path)">
                      <path id="Icon"
                            d="M0,3.939A2,2,0,0,1,3.18,2.324l7.069,5.166a2,2,0,0,1,0,3.23L3.18,15.884A2,2,0,0,1,0,14.27Z"
                            transform="translate(5.75 1.917)" fill="#18181b"/>
                    </g>
                  </g>
                </g>
              </svg>
              <div class="flex justify-between items-center">
                <h5>Dianne Russell</h5>
                <p>Founder, ExtendSales</p>
              </div>
            </div>
          </div>
        </div>

        <div class="flex-center">
          <div class="max-w-sm flex flex-col items-star gap-7">
            <p class="text-2xl">
              “I love how easy it was to learn every section. Easy to understand”
            </p>

            <div class="relative space-y-2">
              <img src="/images/testimonial-woman.png" alt="Theresa Webb"/>
              <svg class="absolute scale-125 top-1/2 left-1/2 transform  -translate-y-1/2 -translate-x-1/2"
                   xmlns="http://www.w3.org/2000/svg"
                   xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 522 522">
                <defs>
                  <filter id="BG" x="0" y="0" width="522" height="522" filterUnits="userSpaceOnUse">
                    <feOffset dy="24" input="SourceAlpha"/>
                    <feGaussianBlur stdDeviation="77" result="blur"/>
                    <feFlood flood-opacity="0.251"/>
                    <feComposite operator="in" in2="blur"/>
                    <feComposite in="SourceGraphic"/>
                  </filter>
                  <clipPath id="clip-path">
                    <rect id="Icon_Outline_play_Background_Mask_" data-name="Icon/Outline/play (Background/Mask)"
                          width="23" height="23" fill="none"/>
                  </clipPath>
                </defs>
                <g id="Play" transform="translate(231 207)">
                  <g transform="matrix(1, 0, 0, 1, -231, -207)" filter="url(#BG)">
                    <circle id="BG-2" data-name="BG" cx="30" cy="30" r="30" transform="translate(231 207)" fill="#fff"/>
                  </g>
                  <g id="Icon_Outline_play" data-name="Icon/Outline/play" transform="translate(20 19)">
                    <rect id="Icon_Outline_play_Background_Mask_2" data-name="Icon/Outline/play (Background/Mask)"
                          width="23" height="23" fill="none"/>
                    <g id="Icon_Outline_play-2" data-name="Icon/Outline/play" clip-path="url(#clip-path)">
                      <path id="Icon"
                            d="M0,3.939A2,2,0,0,1,3.18,2.324l7.069,5.166a2,2,0,0,1,0,3.23L3.18,15.884A2,2,0,0,1,0,14.27Z"
                            transform="translate(5.75 1.917)" fill="#18181b"/>
                    </g>
                  </g>
                </g>
              </svg>
              <div class="flex justify-between items-center">
                <h5>Theresa Webb</h5>
                <p>Co-Founder, Martino</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
