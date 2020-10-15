# ASA-Formalization

An attempt at creating a computational formalization for the Attraction-Selection-Attrition Model of Organizational Behavior.

The ASA model predicts that people will either stay or depart from an organization based on their similarity to others within the org. This is a small simulation to demonstrate how org size, individuals' preference for similarity to others in their org, and the number of groups individuals belong to can change the makeup of an organization over several "generations" or discrete time points.

`Similarity preference` = "I want my group to make-up X% of my organization."
  - If the percentage of a person's group drops below their preference, they leave.

Simplest version is we're assuming everyone has equivalent group preferences and there are only a small number of groups.

Preliminary results indicate it only takes on average ~ 10 generations of this process to unfold before an organization becomes completely homogenous with only 1 group.

You can reach an equilibrium where several groups make-up the org and have their similarity preferences satisfied, but these will be a smaller # of groups relative to what the organization started with.

Where to go from here?
  - Time varying similarity preferences (the exposure or contact hypothesis lit would say exposure to other groups would increase your preference for being around them over time, see that one field experiment in India with kids playing soccer. Don't know the citation off the top of my head.)
  - Randomly drawn similarity preferences (everyone is different in the extent to which they want to be around other groups)

