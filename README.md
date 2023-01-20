# Carbon Flutter

## Getting Started
This assumes you have Android, iOS, and other platform-specific tooling installed or are familiar with how to install and configure those tools. We are assuming you will be using VS Code as your IDE and are using a Mac.

### Windows
If you also need to support Windows development, [Parallels](https://www.parallels.com/) is amazing for running Windows on your Mac. In addition to VS Code, you will also need to install the community version of Visual Studio with the "Desktop development with C++" workload so that you can run the Windows desktop app.

If you see that files have changed but there is no diff (likely line endings), this command will help you.
`git add --renormalize .`

### Project Tools
- [Flutter](https://flutter.dev/): Flutter is the framework used in this project. **Please install Flutter using Sidekick! (see below)**
- [Sidekick](https://github.com/fluttertools/sidekick): Sidekick is a great tool for managing your Flutter versions.
- [VS Code](https://code.visualstudio.com/): VS Code is the primary IDE we recommend for your Flutter development.

### Shell
You will want to add the following line to your shell if you plan on supporting a web or desktop app:
`export CHROME_EXECUTABLE="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"`
`flutter config --enable-web`
`flutter config --enable-windows-desktop`
`flutter config --enable-macos-desktop

***

## Project Architecture

### Project Structure
The entry point for the app will be `main.dart` (or `main_flavor.dart` if multiple application flavors exist).

All of your Flutter app code lives in the `lib`, `assets`, and `test` directories. Platform-specific code will be in the appropriate sibling directories (ex: `android`, `ios`, etc.).

- `assets`: Images, videos, sounds, etc.
- `lib/app`: Application class.
- `lib/app/clients`: Clients are the classes that handle interacting with 3rd party SaaS tools, device APIs, etc.
- `lib/app/services`: Services are the classes that coordinate business logic across other app services, app clients, etc.
- `lib/l10n`: Localization values and supporting (generated code).
- `lib/domain`: Application domain logic (models, state management, etc).
- `lib/ui/screens`: Application screens.
- `lib/ui/widgets`: Reusable widgets that should be composed into screens.
- `lib/util`: Utility code.
- `test`: Automated tests.

### Localization
Localization documentation can be found on the [Flutter website](https://docs.flutter.dev/development/accessibility-and-localization/internationalization). Application-specific localization tooling configuration values can be found in the `l10n.yaml` file in the project root directory.

### Code Generation
The best-written code is code a human doesn't need to write. Code generation is isolated to certain directories to reduce the time needed to generate code. You can find this configuration in `build.yaml`.

If you need to manually re-run codegen:
```
flutter pub run build_runner build --delete-conflicting-outputs
```

#### Localization
The localization dependency documented above generates appropriate Dart code for supported languages.

#### Freezed
The Dart language is missing constructs like data classes, sealed classes, pattern matching, copy constructors, and reflection-based JSON serialization/deserialized. [Freezed](https://pub.dev/packages/freezed) is used to generate the boilerplate code that would otherwise be required to make all of this happen.

***

## Tooling

### Shell
These commands are sometimes useful during development.
- `flutter analyze`: Runs the code linter (configured via `analysis_optins.yaml`). This output should match what you see in VS Code.
- `flutter test --coverage`: Runs the project automated tests with code coverage enabled.
    - If you want to generate a HTML report:
        - If you are on MacOS you will need to install lcov first: `brew install lcov`.

### VS Code
Helpful hint: If VS Code seems like it is confused about the real state of what is going on with Dart, `Cmd+Shift+P` and choose `Dart: Restart Analysis Server` and see if that helps.

### VS Code Extensions
These extensions are already added as workspace recommendations and you should install them during development.

- `build_runner`: This will automatically generate the necessary Dart code for you. You need to enable this by clicking the "Remove watch" button at the bottom of VS Code.
- `flutter-intl`: This will automatically generate app localization files.
- `vscode-coverage-gutters`: This will show you code coverage completion in the left editor gutter. You need to enable this by clicking the "No coverage" button at the bottom of VS Code.
- `flutter-coverage`: This will show you a code coverage summary in the Testing panel.

### VS Code Code Snippets
These are application code snippets to help develop quality code faster. You can invoke these in the editor by typing the name of the snippet and looking at the available [IntelliSense](https://code.visualstudio.com/docs/editor/intellisense) actions. You can add more snippets as necessary by looking at the [Snippets in VS Code Guide](https://code.visualstudio.com/docs/editor/userdefinedsnippets)

#### Freezed
[Freezed](https://pub.dev/packages/freezed) is great at eliminating a lot of code but still requires some boilerplate we can automate.
- `freezed_imports`: Creates the needed imports for a file that uses Freezed.
- `freezed_type`: Creates a simple class setup with Freezed. If the file doesn't have it already, you'll also need to include the file imports (see the `freezed_imports` snippet).
- `freezed_union`: Creates a union (sealed) class setup with Freezed. If the file doesn't have it already, you'll also need to include the file imports (see the `freezed_imports` snippet).