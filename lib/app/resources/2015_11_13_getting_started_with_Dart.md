In this post I will explain how to setup your development environment to be able to develop web and server side applications using Dart.

There are a few places on the web showing the basics, but I want to show the little "gotcha"s that aren't very well documented. I've seen people giving up on Dart just because of this.

***Disclaimer : I'm personally using Linux, but I'll try to give you pointers for every platform I can think of.***

So the steps are :
* Understanding the ecosystem
* Downloading and installing the SDK
* Downloading and installing Dartium
* Downloading and installing an IDE

## Understanding the ecosystem

### What is the SDK?
The SDK contains all the files needed to run Dart code. It also comes with several tools like:
* `dart2js` - Dart to Javascript transpiler
* `dartfmt` - Code formatter based on the official conventions and guidelines
* `dartdoc` - Online documentation generator for your applications/libraries
* `pub` - A tool that integrates in the development workflow, that does a bunch of things like fetching dependencies, run your code, run tests, etc.

### What is Dartium?
If you want to develop web applications using Dart, you can use Dartium. Dartium is a custom built version of Chromium that uses the Dart VM to run the application in the browser. This allows you to change code and view modifications to your app almost instantly. You can however use any other browser, but the refresh-cycle will be longer as `dart2js` (the Dart to Javascript transpiler needs to do its work).

The advantages of using Dartium are:
* It's faster to develop (faster refresh-cycle)
* You get to debug actual Dart code. Not Javascript/source maps.

The advantages of using a standard browser:
* You get the real result, what the users will see in production
* Dartium can have slow updates, so new browser features can be slow to be supported. _(Note: The Dart team is working on a new system to have faster updates)_

### What IDE should I use?
The Dart team has given their confidence in WebStorm Community Edition to be the de-facto IDE. It doesn't mean you can't use anything else. I'm using IntelliJ, and sometimes Vim. I've seen people use Atom or Sublime too. The thing to understand with Dart though, is that most IDEs use `dartanalyzer` or the CLI version available to analyze the code and provide hints to the IDE. So there are a lot of text editor plugins for Dart out there as it's somewhat easier than for other languages to integrate into the IDE.

## Downloading and installing the SDK
Depending on what operating system you are using, the strategy you want to use may differ. One thing to know is that the Dart SDK doesn't natively auto-updates itself. Some people have come up with solutions to this.

### No self-updater
If you don't have admin rights on your computer, this is probably what you want to do. All Dart versions can be found on the official website, or the one I personally use is the [archive website](http://gsdview.appspot.com/dart-archive/channels/) where you can also get the bleeding edge versions, to try new experimental features.

From there, if you just want to [get the latest stable version](http://gsdview.appspot.com/dart-archive/channels/stable/release/latest/sdk/), get the `.zip` file that corresponds to your system's architecture. Unzip it somewhere. Then you'll have to add Dart's `bin` directory to your path. On Linux you can follow the [following instructions](http://www.cyberciti.biz/faq/unix-linux-adding-path/) to do that.

```bash
export PATH=$PATH:$HOME/apps/dart-sdk/bin
```

Now if a new version comes out, you'll have to download the new `.zip` file and overwrite your existing `dart-sdk` directory.

If you want a tool that does that for you, I've written a [dart package](https://pub.dartlang.org/packages/dart_updater) for that (Works on Linux, maybe on Mac). There are probably other solutions 

### Package manager
The advantages of keeping Dart in the package manager, is to have a version that is always up to date. You need admin access though.

On Mac [the instructions](https://www.dartlang.org/downloads/mac.html) are pretty straight forward I think.

On Windows [the instructions](https://www.dartlang.org/downloads/windows.html) are also pretty straight forward. 

On Linux, things can be a little more tricky.

For Arch you can get [the package](https://www.archlinux.org/packages/community/x86_64/dart) from the the official repositories.

For Ubuntu (or any Debian based distribution) you can use the [PPA from Google](https://www.dartlang.org/downloads/linux.html).

*** Make sure you add symlinks to the binaries in `/usr/lib/dart/bin` or add the directory to your `PATH` variable for Ubuntu's PPA. The package is not doing that for you, and you might get stuck executing commands like `pub get` to fetch a project's dependencies. ***

## Downloading and installing Dartium
For Windows and Mac, Dartium can be in installed via the package manager (see instructions). As far as I know, on Linux, Dartium isn't shipped with any package. So you have to maintain it.

_Note: Dartium builds expire after 1 year. So when that happens, just redownload it._

If you're on Linux, you can download it [here](http://gsdview.appspot.com/dart-archive/channels/stable/release/latest/dartium). To install it, just extract it somewhere and launch it with `./chrome`.

## Downloading and installing an IDE
Most people use [WebStorm](https://www.jetbrains.com/webstorm/download/) as their IDE. To use it, you just have to download the installer or extract the `.zip` archive depending on your platform.

Once it's installed and running, you can install the Dart plugin by going in the `Plugins` option (File -> Settings -> Plugins), and then select the plugin called `Dart`.
