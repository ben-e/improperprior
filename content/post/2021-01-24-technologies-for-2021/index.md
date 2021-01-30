---
title: Technologies for 2021
author: Ben Ewing
date: '2021-01-24'
slug: technologies-for-2021
categories:
  - personal
  - technical
tags:
  - r
  - bayesian-stat
---

These are my goals for the coming year. I've tried to make each actionable, with a rough plan, time estimate, and an end goal. The end goals are all something to be built, not something to be necessarily finished. The "How" section of each of these goals may list a particular book or tutorials, but I want to be clear that the goal is not finishing these, but to use them to accomplish the goal.

The overarching goal of learning these technologies is to (1) expand on my data science skills, and (2) be able to build minimum viable products by way of webapps. To account for my wandering attention span, I will tackle these goals asynchronously, working on what interests me at a given moment.

## Ruby and Ruby on Rails

__Why__: This may seem like a strange choice in 2021, both Ruby and Rails are plagued by constant proclamations that they are dead. However, my goal is not to become a web developer, just to produce minimum viable web apps. From what I've read, Rails is first-class when it comes to building things quickly.

__How__: [The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails).

__Goal__: A simple website that can serve up user-specific model results (forecasts, recommendations, something of this nature). I am not including more than the minimum HTML/CSS/JavaScript in my learning here; I expect this project will be ugly.

## Rust

__Why__: I've wanted to learn a low-level (no interpreter, no VM, no garbage collector) for a while, and I think Rust is it. I'm tempted by the perceived simplicity of C, but Rust's safety promises just seem so valuable for producing tools quickly without worrying about odds and ends.

__How__: [The Rust Programming Language](https://doc.rust-lang.org/stable/book/title-page.html). This book is a bit intimidating (other than [Ferris](https://www.rustacean.net/)) with respect to its size, but the writing (at least for the first two chapters) is very approachable.

__Goal__: I deal with YAML files a lot at work (too much, probably). I'd like to build some simple utilities for working with them (I am being intentionally vague here).

## TensorFlow and Keras (by way of Python)

__Why__: While I spent a decent amount of time reading about neural nets in grad school, I wrote very little related code. Most of it was either written from scratch or in PyTorch. I'm interested in picking up TensorFlow and Keras, as opposed to PyTorch, for a few reasons: (1) TensorFlow Probability is the backend for a few up-and-coming Bayesian frameworks (PyMC4, Edward), (2) R Keras.

__How__: [Deep Learning with Python](https://www.manning.com/books/deep-learning-with-python-second-edition?query=deep%20learning%20with%20python).

__Goal__: I'd love to train a GAN to generate scientific illustrations, [basically this project](https://www.cunicode.com/works/confusing-coleopterists/#StyleGAN) (though I swear I've had this idea for years before seeing this post!).

## Tidymodels (with a tiny bit of R Keras)

__Why__: Tidymodels has really come together well over the last ~3 years (and not just the headlining packages, [workflowsets](https://github.com/tidymodels/workflowsets) would have been so convenient at my last job), to the point where I don't think I should ignore it anymore. While it may not have _as many_ models or features as scikit-learn, it does bring that tidyverse goodness to the modeling world. While not strictly part of the Tidymodels world, I'd also like to look at the Stacks package for ensembling.

__How__: [Tidy Modeling with R](https://www.tmwr.org/)

__Goal__: I'd like to put together a simple Tidymodels compliant package for using genetic algorithms to tune model parameters or ensemble models.

## Time Series Modeling/Forecasting

__Why__: This has always felt like a big blind spot in my education. I don't need to go deep here, a high-level of familiarity will still be valuable. 

__How__: [Forecasting: Principles and Practice](https://otexts.com/fpp2/). This is an undergraduate level book recommended by my Bayesian stat professor, I think it should be a quick enough read.

__Goal__: A simple sabermetric analysis of pitching performance over career.

## Odds and Ends: Apache Airflow and PostgreSQL

__Why__: Any project of sufficient size will eventually need some kind of workflow manager and some kind of database. I think that Airflow and Postgres are both reasonable choices. Further, I do use Jenkins and Redshift at work, but I think the experience of setting up and managing both of these (if just for a single user) will be valuable.

__How__: No specific resource.

__Goal__: Set up a small ETL pipeline on my home server to be (either a RaspPi or an old laptop; my actual server literally went up in flames). This pipeline will just gather some disparate data about my life I might find useful to have on hand: account balances, Strava activities, and whatever sensors I hook up to my wife's  more finicky plants.

## Odds and Ends: Drawing

__Why__: I'd love to be competent at a hobby that does not require either exercising or screens.

__How__: Working through Rudy De Renya's [How to Draw What You See](https://www.penguinrandomhouse.com/books/39671/how-to-draw-what-you-see-by-rudy-de-reyna/) and Juliette Aristides' [Beginning Drawing Atelier](https://www.aristidesarts.com/explore).

__Goal__: Finishing these two books would be sufficient.

## Bonus: Text Analysis (by way of Tidymodels)

__Why__: This feels like another blind spot for me.

__How__: [Supervised Machine Learning for Text Analysis in R](https://smltar.com/)

__Goal__: TBD if I decide to take this on later this year.

