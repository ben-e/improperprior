---
title: Staying Stuck in Emacs
author: Ben Ewing
date: '2021-01-17'
slug: staying-stuck-in-emacs
categories:
  - technical
  - personal
tags:
  - emacs
  - editors
description: ''
---

I recently saw this post, [The values of Emacs, the Neovim revolution, and the VSCode gorilla](https://www.murilopereira.com/the-values-of-emacs-the-neovim-revolution-and-the-vscode-gorilla/), pop up on HackerNews (_I know_, it's terrible there), and it really captured why I feel stuck to a degree in Emacs despite the other genuinely good options out there. 

For context, I use [Doom Emacs](https://github.com/hlissner/doom-emacs) as my distribution of choice: Evil Mode is great and it's fast. I'm also interested in checking out [Centaur Emacs](https://github.com/seagle0128/.emacs.d) at some point. I found [Spacemacs](https://www.spacemacs.org/) to be customized to an overwhelming degree. Perhaps I'll write more about this at some point, but I found it hard to _see_ Emacs underneath Spacemacs, so to speak. Whereas with Doom, I know it's "just" setting a bunch of sensible defaults and loading many useful packages. The Doom CLI for updating packages is also very useful.

## Keyboard Centrism

Using Emacs means I can almost exclusively use the keyboard in a consistent manner, no matter my task. Honestly the killer feature for me, right now, is how easy writing and testing SQL has become. I can write my query in one buffer, and interact with the results of my query (and my query/result history!) in a SQLi buffer, all using Vim-keys.

[TODO: Gif here?]

## Text Centrism

Because _everything_ in Emacs is just text, it's super easy to pull snippets from one buffer to another, or just out of Emacs to share with a friend. This can be particularly useful when working with Git via [Magit](https://magit.vc/), which offers far more power than the Git CLI (or maybe I just don't know the CLI as well) while still being text only. 

## Extensibility

With Emacs it's really easy (once you learn a little elisp, I'm still quite reliant on StackOverflow) to add small convenience functions to Emacs on-the-fly. Right now I have a few convenience functions for: encrypting files for a given set of users, connecting to a specified database, opening up new buffers with a specific template. While this is certainly possible in VSCode or Vim, the former requires you set up a whole package and write code in TypeScript or JavaScript, and the latter is actually perfectly capable of doing these things too.

## But...

Emacs is often frustrating. Probably once every three or four months I end up screwing up some package (I still can't figure out why vterm won't load!), it's still pretty easy to get lost among all of the buffers that slowly accumulate (though Centaur's tabs have been a great help here), and it's single threaded nature can lead to very frustrating stutters. While VS Code is often criticized for its memory footprint, Emacs is actually quite large as well (though, I am conflating "large" in-memory vs. on hard drive).

I'm still quite a novice when it comes to more interesting text editors. I've spent most of my time in either R Studio or Sublime Text, both of which I love for the things they do really well and dislike for their hard limitations. Emacs doesn't feel like it has these limitations, if only _I_ could figure out how to remove them.