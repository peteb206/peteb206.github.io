---
title: "Canadians in College Baseball"
toc: true
toc_sticky: true
toc_icon: "bars-staggered"
excerpt: "How many Canadians are playing college baseball? What are these players' stats? The CBN can tell you because of a web-scraping project I began in 2021."
header:
  teaser: "/assets/images/Canadian Baseball Network.png"
---

<img src="/assets/images/Canadian Baseball Network.png" class="project-title-image">

## Introduction
The 2023-2024 school year marks the fourth season I have worked with the Canadian Baseball Network (CBN) to help identify Canadians who are playing college baseball at the [NCAA](https://web3.ncaa.org/directory/memberList?type=12&sportCode=MBA) (Div. I, II and III), [NAIA](https://naiastats.prestosports.com/sports/bsb/2023-24/teams), [NJCAA](https://www.njcaa.org/sports/bsb/teams) (Div. I, II and III), [CCCAA](https://www.cccaasports.org/sports/bsb/2023-24/teams), [NWAC](https://nwacsports.com/sports/bsb/2023-24/teams) and [USCAA](https://uscaa.prestosports.com/sports/bsb/2023-24/teams) levels. 

Bob Elliott, the site's Editor in Chief, has known my dad for a long time, as he covered my dad's college football team at the University of Ottawa. My dad connected us due to my interest in working in the baseball industry and Bob's [extensive career](https://en.wikipedia.org/wiki/Bob_Elliott_(sportswriter)) working as a baseball reporter.

Bob told me that he maintained a list of Canadians playing college baseball and that it was a very tedious process for him as he checked each college's roster to see if any players' hometowns were in Canada. He recognized that this process needed to be improved and asked me if I knew anything about web scraping. So, my work with the CBN began.

## Canadians in College
The main focus of the project was writing code that would accurately identify the Canadian players who are playing at the 1,700+ college baseball programs in the country.

Since my background is in software development, I was not satisfied just emailing Mr. Elliott this list each week. I wanted to create an end product that required no work on their end. Thus, the deliverable is a formatted Google Sheet that is embedded on the CBN website. See the spreadsheet [here](https://www.canadianbaseballnetwork.com/canadian-baseball-network-canadians-in-college).

<img src="https://docs.google.com/drawings/d/e/2PACX-1vRD3IaTaUDLiaXbn-ghC1xvHSwAVz9-kXSK7GLJ7m-1JuP4E-w-ZSVKlWMoi0MTVoerhtUjLvnVSw7Q/pub?w=974&h=717">

## Canadians in College Stats
Once the Canadians in College part of the project was running smoothly, an obvious expansion emerged... collecting player stats. After all, what is a baseball project without stats?

Since not every school's website keeps a stats page that can be scraped, I determined that I would need to get the stats from the website of each league (NCAA, NAIA, NJCAA, etc.).

Similarly to Canadians in College, the goal here was to create a formatted Google Sheet that could be embedded on the CBN website. See the spreadsheet [here](https://www.canadianbaseballnetwork.com/canadians-in-college-stats).

<img src="https://docs.google.com/drawings/d/e/2PACX-1vTVl8VsKx2_3d5M3Q4hO8NY7zunjbQpxtdlHD5a2cQqDSwYrS1w1k8iqs4mkVeZ9RaUx2T7Uu9JqOr4/pub?w=973&h=731">

## All-Canadian Ballot
At the end of each season, Mr. Elliott sends out a ballot to qualified voters to determine which players will be named to the CBN's [All-Canadian team](https://www.canadianbaseballnetwork.com/all-canadian-college-team).

Since I collect each Canadian players' stats throughout the season, I wrote a script that generates a new Google Sheet that separates the players by position and displays their stats.

Once I share the spreadsheet with Mr. Elliott, he removes players who did not play much or whose stats are below average. He then distributes a read-only copy of the spreadsheet to the voters, so they can place their votes with all of the eligible candidates and their statistics in front of them.

## Summary
Overall, this project has been a great opportunity to take a real-world problem and build a technical solution to help solve it. It has furthered my skills in a number of areas including...
- Python coding
- Web Scraping
- Automation
- Data Quality
- Google Sheets API
- Customer Service (the CBN and its users as the customers)

I look forward to continuing to partner with the CBN and helping them inform their readers with accurate information and statistics.

## Links
<a href="https://www.canadianbaseballnetwork.com/canadian-baseball-network-canadians-in-college"><i class="fa-solid fa-arrow-up-right-from-square"></i><span class="external-link-label">Canadians in College</span></a>

<a href="https://www.canadianbaseballnetwork.com/canadians-in-college-stats"><i class="fa-solid fa-arrow-up-right-from-square"></i><span class="external-link-label">Canadians in College Stats</span></a>

For more technical details of the project, visit the<br>
<a href="https://github.com/peteb206/canadians-in-college-baseball"><i class="fab fa-fw fa-github"></i><span class="label">GitHub Repository</span></a>