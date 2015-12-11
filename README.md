Multilingual
============

A hybrid demo app written in Swift, Objective-C, and JavaScript with [React Native](https://facebook.github.io/react-native/).

## Setup

* Download [Xcode](https://developer.apple.com/downloads/) 7.2

* Install [nvm](https://github.com/creationix/nvm)

  ```sh
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
  ```

* Install [Node.js](https://nodejs.org/) 4.0 or newer

  ```sh
  nvm install node && nvm alias default node
  ```

* Install [npm 2](https://www.npmjs.com/package/npm2)

  ```sh
  npm install -g npm@2
  ```

* Install [Homebrew](http://brew.sh/)

  ```sh
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew doctor
  ```

* Install [watchman](https://facebook.github.io/watchman/) & [flow](http://flowtype.org/)

  ```sh
  brew install watchman flow
  ```

* Install [CocoaPods](https://cocoapods.org/)

  ```sh
  gem install CocoaPods
  ```

* Install [react-native-cli](https://www.npmjs.com/package/react-native-cli)

  ```sh
  npm install -g react-native-cli
  ```

## Launch The App

* Set up dependencies

  ```sh
  npm install
  pod install
  ```

* Start React Native development server

  ```sh
  rake start
  ```

* Open `Multilingual.xcworkspace` and run the app
