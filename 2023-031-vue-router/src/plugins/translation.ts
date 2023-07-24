import type {App} from "vue";

type TranslationLanguage = "en" | "fr";
type TranslationOption = {
    language: TranslationLanguage;
    translations: Record<TranslationLanguage, Record<string, string>>;
};

export default {
    install(app: App, options: TranslationOption) {
        app.config.globalProperties.$t = (key: string) => {
            const {language, translations} = options;
            const translation = translations[language][key];
            return translation ?? key;
        }
    }
}