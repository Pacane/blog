Today I show you how to create a project in Dart using the [`stagehand`](https://pub.dartlang.org/packages/stagehand) package. It is a tool that helps creating different types of Dart projects.

The Dart SDK comes with a tool called `pub` to manage a project's dependencies. It can also install packages globally. This is what we're going to do with `stagehand`. 

## Requirements
At this point you should [have a working Dart development environment](/getting-started-with-dart). You need to have `pub` and `dart` executables on your path.

## Installing stagehand
To install a package globally with `pub` you need to type in the command line

`pub global activate packageName`

In our case, we want to install the latest version of `stagehand`, so :

`pub global activate stagehand`

_Note that you can deactivate a global package by writing `pub global deactivate packageName`. For more information about `pub` and how to use it, please refer to its [official documentation page](https://www.dartlang.org/tools/pub/)._

You should now have `stagehand` installed.

### Where does `pub` download this from?
`pub` actually uses https://pub.dartlang.org/ as its first source. But you can also install packages from other sources: from path dependencies, to git repositories. See the [documentation](https://www.dartlang.org/tools/pub/cmd/pub-global.html#activating-a-package-with-git) for more information.

## Running a globally installed package
There are two ways to run a globally installed package. The first one is by typing :

`pub global run packageName`

But this can be tedious if you run global packages often. The other way is too add pub's global packages path to your system's PATH. The path you want to add is by default `~/.pub-cache/bin` on Linux systems.

To make sure it's set up correctly, you can type `which stagehand` after installing it, and you should see something like 

```bash
❯ which stagehand
/home/joel/.pub-cache/bin/stagehand
```

## Creating the project
`stagehand` comes with many templates. Taken from its documentation, it can create :

* `console-full` - A larger command-line application sample.
* `console-simple` - A simple command-line application.
* `package-simple` - A starting point for Dart libraries or applications.
* `server-appengine` - A simple App Engine application.
* `server-shelf` - A web server built using the shelf package.
* `web-polymer` - A web app built using polymer.dart.
* `web-simple` - An absolute bare-bones web app.

Let's create a `console-simple` project. You need to create the directory that will host the project:

```bash
 ❯ mkdir hello-world                     
 ❯ cd hello-world                     
 ❯ stagehand console-simple                     
Creating console-simple application 'hello-world':
  /home/joel/code/dart/hello-world/bin/main.dart
  /home/joel/code/dart/hello-world/pubspec.yaml
2 files written.

--> run your app using 'dart bin/main.dart'
```

You can now run the project from the command line by typing `dart bin/main.dart` and see the output:
> Hello world!

It is also possible to run projects from your IDE.

## Opening the project in the IDE
I'm currently using IntelliJ, but you could also be using WebStorm or anything else really. Just make sure you have the [Dart Plugin](https://plugins.jetbrains.com/plugin/6351) installed.

Then you can just import/open the project from there. If you open a file in the IDE, it'll prompt you to enable "Dart Support for the current project".

From IntelliJ, you can run any Dart executable by right clicking on the file, and hit "run". If you have installed Dart locally, the IDE might ask you to specify the path to the SDK.

That's it!
In the next post, I'll show you how to handle HTTP requests to create a simple Web server using Dart.

Happy coding!
