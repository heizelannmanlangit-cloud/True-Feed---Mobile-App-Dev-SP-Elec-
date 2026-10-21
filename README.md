# TrueFeed

A news app that shows a credibility label and a match score on every story,
so you can check a headline before you share it.

Group project. Members:
- Aldan Joseph Carlo C. Mahinay
- Heizel Ann V. Manlangit

## Status

Early start. This is the first checkpoint, not the finished app.

- [x] UI prototype (see `docs/ui-prototype.pdf`)
- [x] Project folders set up in MVVM
- [x] Article model and sample articles
- [x] Home feed with article cards
- [x] Bottom navigation (Home, Search, Saved, Report)
- [x] Open an article from the feed
- [ ] Headline Check box on the Article screen
- [ ] Search and filter by label
- [ ] Save articles and show them on the Saved screen
- [ ] Report form
- [ ] Real news data (right now it uses sample articles)
- [ ] Match score from real checking (right now the scores are typed in)

## How to run

1. Install Flutter: https://docs.flutter.dev/get-started/install
2. In this folder, run `flutter create .` once (adds the android and ios folders).
3. Run `flutter pub get`
4. Run `flutter run`

If your editor shows red everywhere, it usually means `flutter pub get` has not run
yet. Run it, then restart the editor (or run "Dart: Restart Analysis Server").
Needs Flutter 3.10 or newer.

## Folder structure (MVVM)

```
lib/
  models/       Article (the data)
  data/         sample articles used for now
  viewmodels/   FeedViewModel, ReportViewModel (logic and state)
  views/        the screens
  widgets/      small reusable pieces (article card, label chip)
  main.dart     starts the app
```

How it fits together:
- **Model**: `Article` holds the data.
- **ViewModel**: holds the state and tells the screens when it changes.
  Extends `ChangeNotifier`. `FeedViewModel` only holds the article list so far.
  `ReportViewModel` is an empty stub.
- **View**: screens listen to a ViewModel and rebuild when it changes.

## Navigation

```
Bottom bar:  Home | Search | Saved | Report
Home  ->  tap a card  ->  Article screen  ->  back arrow  ->  Home
```

## Who did what (checkpoint 1)

Aldan: project setup, Article model, sample data, FeedViewModel,
article card and label chip, Home screen, Article screen.

Heizel: UI prototype in `docs/`, bottom navigation, `main.dart`,
Search, Saved and Report screens (placeholders), ReportViewModel stub.
