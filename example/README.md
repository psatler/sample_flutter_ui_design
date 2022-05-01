# example

A new Flutter project.

## Deploying example app as Flutter web

- The web version will be deployed at https://psatler.github.io/sample_flutter_ui_design/

- https://dev.to/janux_de/automatically-publish-a-flutter-web-app-on-github-pages-3m1f

- github action used to deploy on github pages: https://github.com/bluefireteam/flutter-gh-pages
  - Changing the directory where the project is: https://github.com/bluefireteam/flutter-gh-pages/blob/main/action.yml#L14
  - example project which uses the github action: https://github.com/ksch-workflows/registration-desk

## Embedding Figma files in the stories

- [Figma Embed page](https://www.figma.com/developers/embed)

## Running on development

```
flutter run -d chrome --web-renderer html
```

# Flutter Storybook

- It uses this [Flutter Storybook](https://pub.dev/packages/storybook_flutter) package

- It can be found [here](example/lib/pages/storybook)


# Flutter Widgetbook

- It uses this [Widgetbook](https://pub.dev/packages/widgetbook) package
- An example can be found [here](example/lib/pages/widgetbook)
- An [youtube video](https://www.youtube.com/watch?v=qcTZxJDLEAE&ab_channel=Widgetbook) demonstrating the tool

- Their [official example](https://demo.widgetbook.io/#/?theme=Light&locale=en&device=iPhone+12+Pro+Max&text-scale-factor=1.0&orientation=portrait&frame=Widgetbook&path=mealdetail%2Flong-name)

- Flutter Community AMA - [Figma to Widgetbook plugin](https://youtu.be/crtN584rz_Q?t=3086)

## Installing

```
flutter pub add widgetbook --dev
```

# Showcase without any external package

- An example can be found [here](example/lib/pages/showcase_vanilla)


# More related tools

- Other similar [storybook for flutter](https://www.reddit.com/r/FlutterDev/comments/n2313h/4_different_libraries_are_racing_to_be_the/) tools.