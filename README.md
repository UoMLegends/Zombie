# Zombie
This is the MATLAB zombie apocalypse simulation for our group project (group 4, the University of Manchester, presented on October 25th 2016). Since we've presented our MATLAB zombie apocalypse simulation in front of the whole class, there is no "academic motivation" to revisit these m files. But I personally enjoyed creating them, so I decided to post these on GitHub in the hope that someone will find them as entertaining and maybe they can help optimize the code. Now, without further ado, let's get straight into the simulation!

### To run the simulation, do the following steps:
1. save all the m files from this repository
2. execute `zombie.m` using MATLAB
3. enjoy watching the zombie apocalypse simulation
4. execute `population.m` to plot the graphs of zombie population and human population versus time 


To simplify things, we modelled our zombie apocalypse based on a few simple behaviours of both zombies and humans.
### Basic behaviours of zombies and humans:
* If human and zombie are **far away** from each other, they simply **move randomly** (Brownian motion).
* If human and zombie are **relatively close** to each other, then the zombie would **chase** after the human, and the human would **run away**.
* If a zombie is close to **multiple humans**, then the zombie would chase after the **closest** human.
* If human and zombie are **very close** to each other, then they will **fight**. Sometimes the human wins the fight, which results in killing the zombie. And sometimes the zombie wins the fight, which results in turning the human into a zombie.


### Feel free to modify the parameters on `zombie.m`:
Parameters | Descriptions
---------- | ------------
`Z` | the initial zombie population
`H` | the initial human population
`zSpeed` | zombie movement top speed
`hSpeed` | human movement top speed
`chaseRange` | maximum distance between zombie and human for chase to occur
`fightRange` | maximum distance between zombie and human for fight to occur
`lim` | the length and the width of the arena (square arena)
`ph`| the probability of human winning the fight

By the way, we also assumed that the human's probability of winning the fight will increase over time.
