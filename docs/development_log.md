#### Status updates Report

##### 1. Location

Original plan: The user would have been able to change the location of the plant. The location of the plant would be stored in an instance variable called "location" which would have been created when initializing the class Plant_pet. The initialize method would take the location of the plant as input in the method when creating a new plant. The default location when creating a new plant would be "inside".

The user would then have the option to move the plant outside which would change the location variable value to "outside".

This idea was mostly changed before starting to create the location feature and later it was changed all together.

Now the user's plant will always be inside. The user has the option to move the plant outside and the game prompts the user to enter for how long they want to keep the plant outside - where after the plant "automatically" moves back inside - thus no more need for a location variable.

See link to GitHub commit: https://github.com/zandelisenekal/terminal_app_plant_pet/commit/a5d2fb978dc6f0343ebf0c62de9ad4bffbb63552

Link to Trello board: https://trello.com/c/DFXjsu0e/30-feature-2-user-story-2

##### 2. Pesticide 

This feature was changed at the start of the code of this feature only. The reason for change is I didn't want to to have a "use pesticide" option on the main menu as it is not something that you use all the time. Only when necessary. 

Original plan: "pesticide" would have been an instance variable which would hold the value of the pest level. The variable would've had a default value of 0 when the game starts. This would have increased when the plant would be placed outside. When the variable would reach a certain amount, say 5, a message would be given to the user that the plant has bugs living on it and restricting its growth. The user would be prompted to use pesticide.

New plan: Now the game automatically prints a message to the user each time the plant is put in the sun for more than 2 days with an "if" statement. The plant also does not contribute anything to the growth level once it has the pest.

See link to README.md file on GitHub with original plan: https://github.com/zandelisenekal/terminal_app_plant_pet/blob/master/README.md

Link to Trello board: https://trello.com/c/8CgyTVgH/32-feature-4-user-story-4