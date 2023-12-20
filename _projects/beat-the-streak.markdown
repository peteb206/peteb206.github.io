---
title: "Beat the Streak Shiny App"
excerpt: "A Shiny for Python web app to make better predictions in MLB's Beat the Streak contest."
header:
  teaser: "/assets/images/beat-the-streak/Beat the Streak.png"
classes: wide
sort_value: 3
tags: [
    sabermetrics,
    statcast,
    predictive analytics,
    web development
]
---

<img src="/assets/images/beat-the-streak/Beat the Streak.png" class="project-title-image">

From the [Beat the Streak contest FAQ's](https://www.mlb.com/apps/beat-the-streak/faqs):
> **What is Beat the Streak?**<br><br>Beat the Streak is a free-to-play contest where fans predict an MLB player to get a hit. If fans build a streak of 57 correct picks (beating baseball’s famous 56-game hitting streak), they could win $5.6 Million. [...] See Beat the Streak’s [Official Rules](https://www.mlb.com/apps/beat-the-streak/official-rules) here.

## Summary
This is a contest where the odds of winning are extremely low. At the end of the day, even MLB's best hitters are human beings and might go hitless against a lesser pitching opponent.

However, the contest is really fun to compete in. I have been playing for years, and I found myself looking up all kinds of stats on <a href="https://baseballsavant.mlb.com"><i class="fa-solid fa-arrow-up-right-from-square"></i><span class="external-link-label">Baseball Savant</span></a>, <a href="https://www.fangraphs.com"><i class="fa-solid fa-arrow-up-right-from-square"></i><span class="external-link-label">Fangraphs</span></a> and other sites to evaluate the batters and pitchers who would be competing each day. This process was very informative but not very scientific, and it was often hard to know which stats mattered the most in order to make the best decision. This inspired me to start collecting useful data and try to build predictive models to best aggregate these statistics into a single number that offered a player's chance to get a hit on a given day.

## Data

## Models
I am currently using a Logistic Regression classifier to calculate the probability of each player getting a hit on a given day.

The model uses MLB data from 2016 to 2023 and takes in 36 features (all numeric), normalizes them to a -1 to 1 scale, reduces them to X principal components (X is determined how many components it takes to explain 99% of the variance).

When applied to test data (game dates reserved for testing), the model was able to achieve a pick accuracy of 79% and a max streak of 38 when doubling down every day. See [log_reg.ipynb](https://github.com/peteb206/bts-shiny/blob/main/models/log_reg.ipynb) and supporting code to see how this model was trained.

## App
<iframe src="https://peteberryman.shinyapps.io/bts-shiny/" width="100%" height="500px"></iframe>

## Links
<a href="https://peteberryman.shinyapps.io/bts-shiny/"><i class="fa-solid fa-arrow-up-right-from-square"></i><span class="external-link-label">Link to Web App</span></a>

For more technical details of the project, visit the<br>
<a href="https://github.com/peteb206/bts-shiny"><i class="fab fa-fw fa-github"></i><span class="label">GitHub Repository</span></a>