---
title: "PJB Sports Data"
toc: true
toc_sticky: true
toc_icon: "bars-staggered"
excerpt: "A data engineering project to pull sports data from a variety of sources into a data warehouse for efficient querying and analysis."
header:
  teaser: "/assets/images/BigQuery.png"
sort_value: 1
tags: [
  data engineering,
  cloud computing,
  data warehousing
]
---

<img src="/assets/images/BigQuery.png" class="project-title-image">

## Introduction
Much of the MLB research I have done in recent years has involved loading Statcast data from [Baseball Savant](https://baseballsavant.mlb.com/). This publicly-available data provides an incredible opportunity to conduct in-depth studies of what we see happening on the diamond. However, I found that I was left with two options when working with this data:
1. Query all the statcast pitches from a given time range
- Examples
  - Python: pybaseball's [statcast function](https://github.com/jldbc/pybaseball/blob/master/docs/statcast.md)
  - R: baseballr's [statcast_search function](https://billpetti.github.io/baseballr/reference/statcast_search.html)

    | ---- | ---- |
    | Pros | Cons |
    | ---- | ---- |
    | Once this data is loaded, it is extremely detailed. There are many analysis options from here | Slow: getting all the pitches from 5 days of games takes almost a minute |
    | Risks bogging down Baseball Savant's servers | |
    | ---- | ---- |

2. Loading aggregated data

    | ---- | ---- |
    | Pros | Cons |
    | ---- | ---- |
    | Faster | It would only answer one question but new data would have to be queried to address other questions |
    | ---- | ---- |

In the end, the point of this project is to knock out a lot of the data engineering work that inevitably has to happen with most analytics projects. Hopefully, I will be able to 

## Central Data Warehouse
With this in mind, I decided that I would build out my own sports data warehouse where I could...
1. Efficiently query data from tables
2. Map tables before loading to memory
3. Avoid bogging down external sources by querying daily/weekly/etc. to update my data warehouse
4. Build scripts and dashboards to better understand data

## BigQuery
I chose Google BigQuery as a data warehouse because...
- 10 GB free storage each month
- 1 TB free queries each month
- [SQL!](https://cloud.google.com/bigquery/docs/introduction-sql)
- Google Cloud is a valuable skill in the data engineering world
- Easy connection to Python, R, etc.
- Easy setup compared to Oracle, in my personal opinion.

## Current Data Sources
- MLB
  - [Statcast](https://baseballsavant.mlb.com/statcast_search) (via Baseball Savant)
  - [Injuries](https://www.fangraphs.com/roster-resource/injury-report) (via Fangraphs)

## Links
For more technical details of the project, visit the<br>
<a href="https://github.com/peteb206/pjb-sports-data"><i class="fab fa-fw fa-github"></i><span class="label">GitHub Repository</span></a>