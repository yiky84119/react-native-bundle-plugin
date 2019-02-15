declare module "react-native-bundle-plugin" {
    export default class MultipleShare {
        static load(name: string, path: string): void;
        static unload(): void;
    }
}