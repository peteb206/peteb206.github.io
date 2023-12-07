---
layout: single
title: "Expected Run Value"
date: 2023-12-07 16:30:00 +0000
header:
    teaser: "/assets/images/Home Plate.webp"
excerpt: "Similar to how xwOBA is an adjusted version of wOBA, I have constructed a statistic called Expected Run Value to modify a player's Run Value based on the quality of his contact in any of the 24 baserunner/out scenarios (RE24 states)."
tags: [
    mlb,
    sabermetrics
]
toc: true
toc_sticky: true
toc_icon: "bars-staggered"
classes: wide
---

## Introduction
[Run Value](https://www.youtube.com/watch?v=FEq8ITlvftc) is a way to translate the result of a pitch to an actual number of runs. Seeing that runs are the main currency in baseball games, this value is helpful for isolating the effect a player has on a game.

[wOBA](https://www.mlb.com/glossary/advanced-stats/weighted-on-base-average) is one of the most popular ways to attach a single evaluative number to today's MLB hitters. Unlike OBP, wOBA recognizes that doubles are more valuable than singles. Unlike SLG, wOBA recognizes that doubles are not exactly twice as valuable as singles. Instead, it weighs each at bat's outcome in terms of how many runs that outcome is good for, on average. The stat takes the situations out of baseball so that hitters are not rewarded or punished for things they cannot control, like their teammates getting on base.

Statcast has blessed us with some incredible metrics to describe the action we see during MLB games. [xwOBA](https://www.mlb.com/glossary/statcast/expected-woba) takes wOBA a step further by measuring the predicted wOBA based solely off of the velocity and angle of the ball off the bat and the batter's sprint speed. If a player's wOBA is less than his xwOBA, this suggests that he has been somewhat unlucky and that his results should have been better than they were. The opposite goes for when wOBA exceeds xwOBA. In summary, xwOBA is possibly the best metric to determine the quality of contact. Deep line drives have a high xwOBA, and weak grounders have a low xwOBA.

Naturally, Run Value and xwOBA can be used to evaluate both hitters and pitchers. While hitters seek to generate runs and square up the baseball, pitchers try to prevent runs and miss barrels. While these two stats are useful, xwOBA ignores the importance of situational baseball on run scoring. Run Value does not accurately reflect the skill involved in a play. It even credits the batter if his teammate steals a base or punishes him if his teammate is caught stealing because these events happened during his at bat.

Take a look at these two clips with runners on second and third from the 2023 MLB season.

<table style="margin: 0 auto; display: table; width: auto;">
    <thead>
        <tr>
            <th>Play Result</th>
            <th>Exit Velocity</th>
            <th>Launch Angle</th>
            <th>xwOBA</th>
            <th>Run Value</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Line Out</td>
            <td>108.8 mph</td>
            <td>19°</td>
            <td>1.224</td>
            <td>-.379</td>
        </tr>
    </tbody>
</table>
<figure>
    <video src="/assets/videos/Triston Casas Lineout.mp4" autoplay loop muted playsinline></video> <!-- https://sporty-clips.mlb.com/22044da2-867a-4cf9-ae64-54fb172d1af7.mp4 -->
    <figcaption>Triston Casas ropes a line drive deep down the right field line before Fernando Tatis Jr. runs it down to end the inning and strand the two runners in scoring position.</figcaption>
</figure>
---
<table style="margin: 0 auto; display: table; width: auto;">
    <thead>
        <tr>
            <th>Play Result</th>
            <th>Exit Velocity</th>
            <th>Launch Angle</th>
            <th>xwOBA</th>
            <th>Run Value</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Double</td>
            <td>71.6 mph</td>
            <td>38°</td>
            <td>.401</td>
            <td>1.336</td>
        </tr>
    </tbody>
</table>
<figure>
    <video src="/assets/videos/Jose Ramirez Bloop Double.mp4" autoplay loop muted playsinline></video> <!-- https://sporty-clips.mlb.com/5ea300b3-71e3-4e20-b245-40e6bdbb9a0d.mp4 -->
    <figcaption>Jose Ramirez hits a pop fly to shallow right center field that drops in after Kolten Wong tries to make an over-the-shoulder catch. Two runs score as a result.</figcaption>
</figure>

The Casas play results in a very high xwOBA of 1.224, but Run Value says he costed his team .379 runs. Meanwhile, Ramirez posted a xwOBA of just .401 but generated 1.336 runs based on Run Value.

Now, check out these two frozen ropes Aaron Judge hit:

<table style="margin: 0 auto; display: table; width: auto;">
    <thead>
        <tr>
            <th>Play Result</th>
            <th>Exit Velocity</th>
            <th>Launch Angle</th>
            <th>xwOBA</th>
            <th>Run Value</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Solo Home Run</td>
            <td>111.4 mph</td>
            <td>22°</td>
            <td>1.813</td>
            <td>.975</td>
        </tr>
    </tbody>
</table>
<figure>
    <video src="/assets/videos/Aaron Judge Solo Home Run.mp4" autoplay loop muted playsinline></video> <!-- https://sporty-clips.mlb.com/de7f5439-6104-444c-9f81-fdb215e017d3.mp4 -->
    <figcaption>Aaron Judge rips a solo HR to left center field with an xwOBA of 1.813 and a Run Value of .975.</figcaption>
</figure>
---
<table style="margin: 0 auto; display: table; width: auto;">
    <thead>
        <tr>
            <th>Play Result</th>
            <th>Exit Velocity</th>
            <th>Launch Angle</th>
            <th>xwOBA</th>
            <th>Run Value</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Grand Slam</td>
            <td>110.0 mph</td>
            <td>22°</td>
            <td>1.753</td>
            <td>3.043</td>
        </tr>
    </tbody>
</table>
<figure>
    <video src="/assets/videos/Aaron Judge Grand Slam.mp4" autoplay loop muted playsinline></video> <!-- https://sporty-clips.mlb.com/7c3ece22-f094-44cf-b088-844413454357.mp4 -->
    <figcaption>Aaron Judge smashes a grand slam to dead center field with an xwOBA of 1.753 and a Run Value of 3.043.</figcaption>
</figure>

In this scenario, we see how situations have a major effect on a player's Run Value. Aaron Judge crushed both of these balls almost identically except one was slightly pulled whereas the other was right back up the middle. xwOBA does not consider horizontal launch angle, so these two swings have very similar xwOBA values. However, one was with the bases empty, and the other was with the bases loaded. The grand slam produced a much higher Run Value for Judge than the solo shot.

What these 4 clips tell us is that neither xwOBA nor Run Value perfectly describe what happens on a play. My goal is to measure how many runs a hitter generates or a pitcher prevents but removing factors that do not reflect their skill.

## Expected Run Value
Similar to how xwOBA is an adjusted version of wOBA, I have constructed a statistic called Expected Run Value to modify a player's Run Value based on the quality of his contact in any of the 24 baserunner/out scenarios (RE24 states). When MLB developed the xwOBA statistic, they went to great lengths to make it a metric that accurately evaluates the run-scoring capability of a ball in play. Read more about their process [here](https://technology.mlblogs.com/an-introduction-to-expected-weighted-on-base-average-xwoba-29d6070ba52b). I am using this established metric to determine how "lucky" a player's run value on a ball in play is based on the xwOBA. The relationship between xwOBA and Run Value is not particularly linear, even when grouped by RE24 state:

![2023 xwOBA vs Run Value by State](/assets/images/2023 xwOBA vs Run Value by State.png)

To find a solid non-linear predictor of Run Value, I turned to the K-nearest neighbors algorithm, which takes the average of the Run Values of the *k* most similar xwOBA values with the same RE24 state. I tried a number of different *k* values until I found the one that was most predictive of Run Value:

![2023 Expected Run Value KNN Testing](/assets/images/2023 Expected Run Value KNN Testing.png)

Naturally, balls in play with more extreme Run Values (think greater than 1.5 or less than -0.5) will generally have less extreme Expected Run Values. The following histograms show that Expected Run Value has a slightly more narrow distribution than Run Value:

![2023 Actual vs Expected Run Value Histograms](/assets/images/2023 Actual vs Expected Run Value Histograms.png)

## Applying the Statistic
Now that I have a way of evaluating the number of runs that players "should have" generated on each batted ball, I want to apply the metric to 2023's hitters and pitchers to see how it may cause us to rethink their performances.

When applying Expected Run Value to player seasons, most players' Run Values are slightly adjusted (+/- 5 runs), but the following histograms show some extreme adjustments, too:

![2023 Expected Run Value Adjustments](/assets/images/2023 Expected Run Value Adjustments.png)

Next, I wanted to see which players were affected significantly by these adjustments.

### Hitters by Expected Run Value

| Rank (<i class="fa-solid fa-arrow-up"></i><i class="fa-solid fa-arrow-down"></i>)   | Player                                                                                                      | Run Value         | Exp. Run Value    | +/-                                      |
|:------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|:------------------|:------------------|:-----------------------------------------|
| 1                                                                                   | <img src="https://content.mlb.com/images/headshots/current/60x60/660670.png" width="40px">Acuña Jr., Ronald | <span>66.6</span> | <span>80.9</span> | <span style="color: green;">+14.3</span> |
| 2 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 2</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/605141.png" width="40px">Betts, Mookie     | <span>61</span>   | <span>61.5</span> | <span style="color: green;">+0.5</span>  |
| 3 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 5</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/665742.png" width="40px">Soto, Juan        | <span>44.8</span> | <span>61.1</span> | <span style="color: green;">+16.3</span> |
| 4 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 2</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/518692.png" width="40px">Freeman, Freddie  | <span>64.3</span> | <span>57.7</span> | <span style="color: red;">-6.6</span>    |
| 5 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 2</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/592450.png" width="40px">Judge, Aaron      | <span>45</span>   | <span>56.2</span> | <span style="color: green;">+11.2</span> |
| 6                                                                                   | <img src="https://content.mlb.com/images/headshots/current/60x60/670541.png" width="40px">Alvarez, Yordan   | <span>48.7</span> | <span>54.9</span> | <span style="color: green;">+6.2</span>  |
| 7 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 4</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/663656.png" width="40px">Tucker, Kyle      | <span>41</span>   | <span>51.4</span> | <span style="color: green;">+10.4</span> |
| 8 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 5</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/621566.png" width="40px">Olson, Matt       | <span>63.6</span> | <span>48.4</span> | <span style="color: red;">-15.2</span>   |
| 9 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 4</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/660271.png" width="40px">Ohtani, Shohei    | <span>53.5</span> | <span>45.8</span> | <span style="color: red;">-7.7</span>    |
| 10 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 1</span>)      | <img src="https://content.mlb.com/images/headshots/current/60x60/608369.png" width="40px">Seager, Corey     | <span>43.9</span> | <span>40.5</span> | <span style="color: red;">-3.4</span>    |
| ...                                                                               | ...                                                                                                         | ...                | ...                | ...                                     |
|:----------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|:-------------------|:-------------------|:----------------------------------------|
| 642 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 45</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/686668.png" width="40px">Doyle, Brenton    | <span>-12.2</span> | <span>-20.6</span> | <span style="color: red;">-8.4</span>   |
| 643 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 5</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/668930.png" width="40px">Turang, Brice     | <span>-21.3</span> | <span>-21.2</span> | <span style="color: green;">+0.1</span> |
| 644 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 16</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/500871.png" width="40px">Escobar, Eduardo  | <span>-16.5</span> | <span>-21.5</span> | <span style="color: red;">-5</span>     |
| 645 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 4</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/455117.png" width="40px">Maldonado, Martín | <span>-26.4</span> | <span>-21.8</span> | <span style="color: green;">+4.6</span> |
| 646 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 360</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/665923.png" width="40px">Ruiz, Esteury     | <span>-1.1</span>  | <span>-22.1</span> | <span style="color: red;">-21</span>    |
| 647 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 53</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/665926.png" width="40px">Giménez, Andrés   | <span>-12</span>   | <span>-23.3</span> | <span style="color: red;">-11.3</span>  |
| 648 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 3</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/641313.png" width="40px">Anderson, Tim     | <span>-30.2</span> | <span>-23.6</span> | <span style="color: green;">+6.6</span> |
| 649 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 22</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/657136.png" width="40px">Wong, Connor      | <span>-16.2</span> | <span>-24.2</span> | <span style="color: red;">-8</span>     |
| 650 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 160</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/593160.png" width="40px">Merrifield, Whit  | <span>-6.1</span>  | <span>-28</span>   | <span style="color: red;">-21.9</span>  |
| 651 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 1</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/664702.png" width="40px">Straw, Myles      | <span>-29.6</span> | <span>-28.4</span> | <span style="color: green;">+1.2</span> |

Ronald Acuña Jr.'s MLB-best Run Value of 66.6 is further legitimized by his Expected Run Value of 80.9. In fact, his Expected Run Value is nearly 20 runs higher than the second highest, Mookie Betts' 61.5! All of the top-10 performers here are highly regarded superstars, but I am surprised to see Whit Merrifield with the second-lowest Expected Run Value with -28. Merrifield was a solid contribitor to the Blue Jays' offense this season but did have the fourth lowest average exit velocity of all qualified hitters in 2023.

### Pitchers by Expected Run Value
Note: pitchers would desire a negative Run Value, as it would reflect run prevention.

| Rank (<i class="fa-solid fa-arrow-up"></i><i class="fa-solid fa-arrow-down"></i>)   | Player                                                                                                      | Run Value          | Exp. Run Value     | +/-                                      |
|:------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|:-------------------|:-------------------|:-----------------------------------------|
| 1 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 15</span>)      | <img src="https://content.mlb.com/images/headshots/current/60x60/641154.png" width="40px">López, Pablo      | <span>-21.6</span> | <span>-38.9</span> | <span style="color: red;">-17.3</span>   |
| 2 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 1</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/543037.png" width="40px">Cole, Gerrit      | <span>-44.6</span> | <span>-27.8</span> | <span style="color: green;">+16.8</span> |
| 3 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 5</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/642585.png" width="40px">Bautista, Félix   | <span>-25.1</span> | <span>-25.5</span> | <span style="color: red;">-0.4</span>    |
| 4 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 44</span>)      | <img src="https://content.mlb.com/images/headshots/current/60x60/675911.png" width="40px">Strider, Spencer  | <span>-15.3</span> | <span>-25.1</span> | <span style="color: red;">-9.8</span>    |
| 5 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 20</span>)      | <img src="https://content.mlb.com/images/headshots/current/60x60/657006.png" width="40px">Steele, Justin    | <span>-18.5</span> | <span>-23.9</span> | <span style="color: red;">-5.4</span>    |
| 6 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 20</span>)      | <img src="https://content.mlb.com/images/headshots/current/60x60/621107.png" width="40px">Eflin, Zach       | <span>-18.4</span> | <span>-21.4</span> | <span style="color: red;">-3</span>      |
| 7 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 1</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/656945.png" width="40px">Scott, Tanner     | <span>-25.1</span> | <span>-20.8</span> | <span style="color: green;">+4.3</span>  |
| 8 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 6</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/605483.png" width="40px">Snell, Blake      | <span>-43.8</span> | <span>-19.9</span> | <span style="color: green;">+23.9</span> |
| 9 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 8</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/434378.png" width="40px">Verlander, Justin | <span>-20.7</span> | <span>-19.7</span> | <span style="color: green;">+1</span>    |
| 10 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 9</span>)      | <img src="https://content.mlb.com/images/headshots/current/60x60/554430.png" width="40px">Wheeler, Zack     | <span>-20</span>   | <span>-19.3</span> | <span style="color: green;">+0.7</span>  |
| ...                                                                               | ...                                                                                                         | ...               | ...               | ...                                      |
|:----------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|:------------------|:------------------|:-----------------------------------------|
| 854 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 127</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/682847.png" width="40px">Ortiz, Luis L.    | <span>7.2</span>  | <span>20.6</span> | <span style="color: green;">+13.4</span> |
| 855 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 20</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/592789.png" width="40px">Syndergaard, Noah | <span>16.4</span> | <span>21.8</span> | <span style="color: green;">+5.4</span>  |
| 856 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 5</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/666201.png" width="40px">Manoah, Alek      | <span>20.7</span> | <span>22.9</span> | <span style="color: green;">+2.2</span>  |
| 857                                                                               | <img src="https://content.mlb.com/images/headshots/current/60x60/623167.png" width="40px">Flexen, Chris     | <span>28.5</span> | <span>23.4</span> | <span style="color: red;">-5.1</span>    |
| 858 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 114</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/656731.png" width="40px">Megill, Tylor     | <span>7.9</span>  | <span>23.7</span> | <span style="color: green;">+15.8</span> |
| 859 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 6</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/596295.png" width="40px">Gomber, Austin    | <span>22.9</span> | <span>25.3</span> | <span style="color: green;">+2.4</span>  |
| 860 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 2</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/666205.png" width="40px">Muller, Kyle      | <span>28.6</span> | <span>27.9</span> | <span style="color: red;">-0.7</span>    |
| 861                                                                               | <img src="https://content.mlb.com/images/headshots/current/60x60/543475.png" width="40px">Lyles, Jordan     | <span>31.1</span> | <span>29.2</span> | <span style="color: red;">-1.9</span>    |
| 862 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 1</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/425794.png" width="40px">Wainwright, Adam  | <span>36</span>   | <span>36.4</span> | <span style="color: green;">+0.4</span>  |
| 863 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 18</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/571578.png" width="40px">Corbin, Patrick   | <span>19.7</span> | <span>45.3</span> | <span style="color: green;">+25.6</span> |

The top 10 pitchers in regards to Expected Run Value were much more surprising than the hitters. Pablo Lopez is held in high regard right now due to his excellent postseason performance in 2023, but it turns out his regular season was every bit as impressive, as he had by far the highest Expected Run Value. It is also worth noting that relievers Felix Bautista and Tanner Scott are the only relievers who made the top 10. They were at a major disadvantage considering that Run Value is a counting stat, and relievers do not log as many innings as most starters.

### Biggest Differences in Expected vs. Actual Run Value
#### Hitters

| Rank (<i class="fa-solid fa-arrow-up"></i><i class="fa-solid fa-arrow-down"></i>)   | Player                                                                                                           | Run Value          | Exp. Run Value    | +/-                                      |
|:------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------|:-------------------|:------------------|:-----------------------------------------|
| 17 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 54</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/665489.png" width="40px">Guerrero Jr., Vladimir | <span>12.1</span>  | <span>30.4</span> | <span style="color: green;">+18.3</span> |
| 3 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 5</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/665742.png" width="40px">Soto, Juan             | <span>44.8</span>  | <span>61.1</span> | <span style="color: green;">+16.3</span> |
| 24 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 60</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/624585.png" width="40px">Soler, Jorge           | <span>10.6</span>  | <span>26.6</span> | <span style="color: green;">+16</span>   |
| 79 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 402</span>)    | <img src="https://content.mlb.com/images/headshots/current/60x60/605137.png" width="40px">Bell, Josh             | <span>-5.9</span>  | <span>9.6</span>  | <span style="color: green;">+15.5</span> |
| 12 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 28</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/668939.png" width="40px">Rutschman, Adley       | <span>19.8</span>  | <span>34.9</span> | <span style="color: green;">+15.1</span> |
| 31 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 83</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/665487.png" width="40px">Tatis Jr., Fernando    | <span>7</span>     | <span>22</span>   | <span style="color: green;">+15</span>   |
| 33 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 90</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/608070.png" width="40px">Ramírez, José          | <span>6</span>     | <span>20.5</span> | <span style="color: green;">+14.5</span> |
| 111 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 440</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/641343.png" width="40px">Bauers, Jake           | <span>-8.5</span>  | <span>5.9</span>  | <span style="color: green;">+14.4</span> |
| 278 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 344</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/676475.png" width="40px">Burleson, Alec         | <span>-15.3</span> | <span>-1</span>   | <span style="color: green;">+14.3</span> |
| 135 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 444</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/672386.png" width="40px">Kirk, Alejandro        | <span>-10.7</span> | <span>3.6</span>  | <span style="color: green;">+14.3</span> |
| ...                                                                               | ...                                                                                                         | ...               | ...                | ...                                    |
|:----------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|:------------------|:-------------------|:---------------------------------------|
| 149 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 111</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/680574.png" width="40px">McLain, Matt      | <span>20.8</span> | <span>2.5</span>   | <span style="color: red;">-18.3</span> |
| 499 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 429</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/623912.png" width="40px">Ramírez, Harold   | <span>12.2</span> | <span>-6.3</span>  | <span style="color: red;">-18.5</span> |
| 116 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 91</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/514888.png" width="40px">Altuve, Jose      | <span>24.9</span> | <span>4.8</span>   | <span style="color: red;">-20.1</span> |
| 640 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 443</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/660707.png" width="40px">Montero, Elehuris | <span>1.3</span>  | <span>-19.1</span> | <span style="color: red;">-20.4</span> |
| 646 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 360</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/665923.png" width="40px">Ruiz, Esteury     | <span>-1.1</span> | <span>-22.1</span> | <span style="color: red;">-21</span>   |
| 650 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 160</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/593160.png" width="40px">Merrifield, Whit  | <span>-6.1</span> | <span>-28</span>   | <span style="color: red;">-21.9</span> |
| 86 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 71</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/682998.png" width="40px">Carroll, Corbin   | <span>31</span>   | <span>8.2</span>   | <span style="color: red;">-22.8</span> |
| 274 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 244</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/641355.png" width="40px">Bellinger, Cody   | <span>22.9</span> | <span>-0.9</span>  | <span style="color: red;">-23.8</span> |
| 372 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 350</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/670623.png" width="40px">Paredes, Isaac    | <span>25.4</span> | <span>-2.9</span>  | <span style="color: red;">-28.3</span> |
| 595 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 554</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/670770.png" width="40px">Friedl, TJ        | <span>19.7</span> | <span>-11.5</span> | <span style="color: red;">-31.2</span> |

People were quick to criticize Vladimir Guerrero Jr.'s performance in 2023, but he did not get the results he deserved on batted balls. Several players also had outstanding Run Value seasons but had the benefit of good fortune along the way. Jose Altuve, NL Rookie of the Year Corbin Carroll and NL Comeback Player of the Year Cody Bellinger are among a list of star-studded players who rank in the bottom 10 in terms of *Expected Run Value - Run Value*.

#### Pitchers

| Rank (<i class="fa-solid fa-arrow-up"></i><i class="fa-solid fa-arrow-down"></i>)   | Player                                                                                                     | Run Value          | Exp. Run Value     | +/-                                      |
|:------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------|:-------------------|:-------------------|:-----------------------------------------|
| 830 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 786</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/664285.png" width="40px">Valdez, Framber  | <span>-15.8</span> | <span>12.7</span>  | <span style="color: green;">+28.5</span> |
| 863 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 18</span>)    | <img src="https://content.mlb.com/images/headshots/current/60x60/571578.png" width="40px">Corbin, Patrick  | <span>19.7</span>  | <span>45.3</span>  | <span style="color: green;">+25.6</span> |
| 335 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 329</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/668678.png" width="40px">Gallen, Zac      | <span>-26.1</span> | <span>-1</span>    | <span style="color: green;">+25.1</span> |
| 8 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 6</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/605483.png" width="40px">Snell, Blake     | <span>-43.8</span> | <span>-19.9</span> | <span style="color: green;">+23.9</span> |
| 18 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 15</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/543243.png" width="40px">Gray, Sonny      | <span>-38</span>   | <span>-17.7</span> | <span style="color: green;">+20.3</span> |
| 81 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 77</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/673540.png" width="40px">Senga, Kodai     | <span>-28.3</span> | <span>-10</span>   | <span style="color: green;">+18.3</span> |
| 678 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 621</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/665871.png" width="40px">Assad, Javier    | <span>-13.9</span> | <span>3.9</span>   | <span style="color: green;">+17.8</span> |
| 80 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 75</span>)     | <img src="https://content.mlb.com/images/headshots/current/60x60/680694.png" width="40px">Bradish, Kyle    | <span>-27.5</span> | <span>-10.1</span> | <span style="color: green;">+17.4</span> |
| 2 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 1</span>)       | <img src="https://content.mlb.com/images/headshots/current/60x60/543037.png" width="40px">Cole, Gerrit     | <span>-44.6</span> | <span>-27.8</span> | <span style="color: green;">+16.8</span> |
| 721 (<span style="color: red;"><i class="fa-solid fa-arrow-down"></i> 633</span>)   | <img src="https://content.mlb.com/images/headshots/current/60x60/666129.png" width="40px">Garrett, Braxton | <span>-11.3</span> | <span>5.1</span>   | <span style="color: green;">+16.4</span> |
| ...                                                                               | ...                                                                                                       | ...                | ...                | ...                                    |
|:----------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------|:-------------------|:-------------------|:---------------------------------------|
| 525 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 308</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/657612.png" width="40px">Hill, Tim       | <span>15.9</span>  | <span>1.4</span>   | <span style="color: red;">-14.5</span> |
| 25 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 313</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/657746.png" width="40px">Ryan, Joe       | <span>-0.8</span>  | <span>-16.1</span> | <span style="color: red;">-15.3</span> |
| 46 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 506</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/605400.png" width="40px">Nola, Aaron     | <span>2.5</span>   | <span>-13.2</span> | <span style="color: red;">-15.7</span> |
| 1 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 15</span>)    | <img src="https://content.mlb.com/images/headshots/current/60x60/641154.png" width="40px">López, Pablo    | <span>-21.6</span> | <span>-38.9</span> | <span style="color: red;">-17.3</span> |
| 466 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 376</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/686613.png" width="40px">Brown, Hunter   | <span>18.2</span>  | <span>0.7</span>   | <span style="color: red;">-17.5</span> |
| 290 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 542</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/694297.png" width="40px">Pfaadt, Brandon | <span>15.8</span>  | <span>-1.8</span>  | <span style="color: red;">-17.6</span> |
| 804 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 55</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/622663.png" width="40px">Severino, Luis  | <span>28.9</span>  | <span>9.4</span>   | <span style="color: red;">-19.5</span> |
| 117 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 686</span>) | <img src="https://content.mlb.com/images/headshots/current/60x60/592767.png" width="40px">Smyly, Drew     | <span>12.1</span>  | <span>-7.7</span>  | <span style="color: red;">-19.8</span> |
| 63 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 751</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/668881.png" width="40px">Greene, Hunter  | <span>13.1</span>  | <span>-11.4</span> | <span style="color: red;">-24.5</span> |
| 799 (<span style="color: green;"><i class="fa-solid fa-arrow-up"></i> 63</span>)  | <img src="https://content.mlb.com/images/headshots/current/60x60/657756.png" width="40px">Seabold, Connor | <span>34.9</span>  | <span>9.1</span>   | <span style="color: red;">-25.8</span> |

Framber Valdez, who had a lot of ups and downs in 2023, could have done a lot worse than his solid -15.8 Run Value. Hunter Greene's Expected Run Value should provide optimism for Reds fans that he may get some better results going forward.

To view the data for every hitter and pitcher:<br>
<a href="https://docs.google.com/spreadsheets/d/1lp58oIk9SBJ1azep6i-J3sh2feuX4dq8LWNKeionY78/edit?usp=sharing"><i class="fa-solid fa-arrow-up-right-from-square"></i><span class="external-link-label">Google Sheet</span></a>

### Balls in Play: Biggest Differences in Expected vs. Actual Run Value
While Expected Run Value is useful for re-evaluating player seasons, it can also be applied to any individual batted ball. Here is the play that holds the greatest *Expected Run Value - Run Value* metric for the 2023 season:
<table style="margin: 0 auto; display: table; width: auto;">
    <thead>
        <tr>
            <th>Play Result</th>
            <th>xwOBA</th>
            <th>Run Value</th>
            <th>Expected Run Value</th>
            <th>+/-</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Fly Out</td>
            <td>1.488</td>
            <td>-.875</td>
            <td>2.506</td>
            <td><span style="color: green;">+3.381</span></td>
        </tr>
    </tbody>
</table>
<figure>
    <video src="/assets/videos/Ty France Fly Out.mp4" autoplay loop muted playsinline></video> <!-- https://sporty-clips.mlb.com/6856c56b-b3d2-4a2e-bbd9-abfbcad598cc.mp4 -->
    <figcaption>Ty France flies out sharply to center field with the bases loaded and 2 outs.</figcaption>
</figure>

On the flip side, here is the lowest *Expected Run Value - Run Value* play for the 2023 season:
<table style="margin: 0 auto; display: table; width: auto;">
    <thead>
        <tr>
            <th>Play Result</th>
            <th>xwOBA</th>
            <th>Run Value</th>
            <th>Expected Run Value</th>
            <th>+/-</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Grand Slam</td>
            <td>.091</td>
            <td>3.353</td>
            <td>-.534</td>
            <td><span style="color: red;">-3.888</span></td>
        </tr>
    </tbody>
</table>
<figure>
    <video src="/assets/videos/Isaac Paredes Grand Slam.mp4" autoplay loop muted playsinline></video> <!-- https://sporty-clips.mlb.com/797381f8-2800-44d3-a4f7-9b84bfa4a8bd.mp4 -->
    <figcaption>Isaac Paredes hits a grand slam to left field despite a low xwOBA of .091.</figcaption>
</figure>

## Conclusions
In player evalulation, there are no perfect stats to determine how well someone has performed. Run Value and xwOBA are both useful tools but do not paint the full picture. My Expected Run Value statistic attempts to use the positive characteristics of these two stats to counter each other's weaknesses. My perception of many players' 2023 seasons certainly changed when I saw their Expected Run Values. Ronald Acuña Jr. was at least as dominant as we all thought. Pablo Lopez should be viewed as a top-tier starting pitcher, not just an All-Star. NL Cy Young Winner Blake Snell and both All-Star starting pitchers (Cole and Gallen) were among the top 10 biggest drops from Run Value to Expected Run Value. They may have benefitted from good defense or well-positioned fielders.

In this study, I relied on K-Nearest Neighbors regression to determine the Expected Run Value of each play, but I would be interested in investigating other models in the future to make this statistic as useful as possible. We will see how 2024's hitters and pitchers perform compared to their 2023 seasons.

## Links
To see my code, check out the following notebook:<br>
<a href="https://github.com/peteb206/peteb206.github.io/blob/main/ref/Expected%20Run%20Value.ipynb">
    <img src="/assets/images/Jupyter Open Notebook.svg" alt="Open Notebook">
</a>