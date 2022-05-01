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