---
layout: post
title: The Problem with Like Buttons
subtitle: ____
tags:
  - music
  - streaming
  - recommendation
  - product
  - spotify
show-avatar: false
nav-short: true
full-width: false
published: false
date created: 2023-09-03
date modified: 2023-09-04
---
chat -- https://chat.openai.com/c/8f4f3f71-819d-4a27-beab-a1fa80c07f54

<div style="text-align:center"><img src="../assets/img/spotify-like.png"></div>

Last time when you liked a song what was the intend behind it? I am pretty sure
you probably wanted to save that song to come back to later or just wanted to
signal the app that you liked the vibe and including it in recommendations.

But two use cases that are broken are first one you encounter a song that you
have already liked and feel like boosting that song to the top of the like songs
as a mean to save it for easier discovery later and.or to signal algorithm to
include more of these songs in the recommendations.

> Have you ever wondered about the reasons behind that 'like' button you often tap when listening to music on your favorite streaming platform? More often than not, it's a subtle act with intentions—intentions to save the track for later or to nudge the app's recommendation algorithm in the direction of your musical taste.
> 
> But let's delve into two intriguing scenarios that often go unnoticed. First, what happens when you stumble upon a song you've already liked? Your inclination might be to boost it to the top of your 'liked songs' list. Why? Well, it could be to ensure easier rediscovery down the road or to send a clear signal to the algorithm: 'Give me more of this!

Liked playlist plays random songs at instances is there any way to know if the
user is listening to the like playlist for recent songs or for the entire
historical context.

Basically how to know if a user want a nostalgic feel to the like a playlist or
a cache where they can put in songs to find them again easily.

What were the intention behind the like button? It would obviously depend on the
kind of platform we are taking about eg. A social network would have like to
express/signal you enjoying given content. But on GitHub it might be to save
them for later. But in music it can be both you might like the song but also
want to save it to a place to come back to it later (GitHub repos are saved and
not signalled for liking as there is no recommendation system to signal to! Is
that an opportunity? PMs at GitHub here you go!)

When we talk about going back to liked items there are again to intends one is
to look for a particular song while another is to just play a collection that
you know is good but again it can be good because of nostalgia it can offer or
the recent/relevant liked songs it can play. There is no way to know what the
true intend is here.

And it becomes more and more important in case of music because the content
velocity is slow and consumption is dependent on what the app has to offer out
of same relatively stationary capture by mean of collections and auto plays.

I know I am overthinking it but I am in search of some overarching insight
around how we consume music/content. Sadly I don't have any good solutions to
solve this hiccups but we can experiment with following

1. Separate like and dislike button which would enable user to like a song
    multiple times
2. Make the like button larger/darker per like
3. Have a drop down for taste filters.

Now I am going to talk about some over the board solutions to better engage like
playlist. There is a fundamental difference between the like and any typical
playlist. Typical playlists inherently have a musical theme to it but liked
playlist usually involve very different themes and have commonality that is very
abstract and might not be very content based. The logic to liked playlist is
affinity based irrespective of the taste.