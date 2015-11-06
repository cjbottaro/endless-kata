# Endless Kata

This is a collection of programming katas that replicates features of the game
Endless Sky (which is an open source remake of Escape Velocity).

This is not meant to teach programming, but rather practice and hone your
existing skills by essentially making a 2D game engine.

Also, to be clear, this isn't about making a game; we're not going to generate
tons of content (story, artwork, items, etc), but maybe by the end of it, you'll
have a game engine that could make a decent game if you generated a bunch of content.

Lastly, why do katas in the context of a 2D game? Because it's fun! Practing/writing programs that input and output text is boring and
unimpressive... :P The katas you do here will be fun to show your friends (even
your non programming ones).

## What language is it in?

Ruby. Also, the hints / tutorials assume you're using the Gosu framework.

But really, this is a just a list of problem specifications. You can use any
language and framework you want to solve them with. If you use something other
than Ruby/Gosu though, the hints and tutorials may not (and probably won't)
apply to you.

## What OS can I use?

I'm using OS X and the setup instructions below are specific to OS X.

If you're using Linux, it should be easy enough to translate over the
instructions.

If you're using Windows... I'm sorry?

## How does it work?

Each kata directory will have a `README.md` that describes the problem and has
a few examples of the desired output. There are also some directories that are
shared amoung all the katas (`assets`, `lib`). In the `bin` directory, there is
a `run` command that setups your Ruby environment and runs the kata.

# Dependencies

* Git Large File Storage (LFS)
* SDL2

## Quickstart

```
brew install git-lfs sdl2 # OS X specific, not sure of Linux/Windows equivalent
git clone https://github.com/cjbottaro/endless-kata.git
cd endless-kata
bundle install
touch kata-01/main.rb # Put your code in here.
bin/run kata-01/main.rb
```

## Getting started with Gosu

Gosu programs use the event loop paradigm. You define a class that represents
your window, then the Gosu event loop will call methods on your class at various
times (when a button is pressed, mouse is clicked, periodically on ticks).

You should respond to these events by changing the state of your game. When the
state of your game changes, you may (or may not) need to redraw the window.

See the [`hello_world.rb`](https://github.com/cjbottaro/endless-kata/blob/master/hello_world.rb) program for an extremely basic Gosu program: when the
spacebar is pressed, "Hello, world!" is drawn in the window.

```
bin/run hello_world.rb
```

Gosu Homepage:

https://libgosu.org

Gosu Ruby API documentation:

https://www.libgosu.org/rdoc/Gosu.html

## Sharing your solutions

Think you have a really clever solution to one of the problems?

Awesome! Fork the repo, make a branch with your Github name, then submit a
pull request.
