# README

## Software development plan

#### Statement of purpose and scope

##### Background

I considered a few ideas when deciding which type/kind of terminal app I want to create. Some of those ideas included a virtual game - which will be explained later. I also considered a BMI (body mass index) calculator that will take the user's weight and height measurements as input and display the user's BMI as the output. I discarded this idea mostly because it would have been a bit too simplistic. The third idea that I had was to create a type of shopping app. An app that will help the user to shop for the specific type of shoe they're interested in. The user would be able to input whether they are male or female, what their budget is and what type of shoe they're looking to buy. The app will then, based on the input, display to the user the names of  stores and shops where they can buy shoes.

For this terminal app project I have decided to build a game. At first the idea was to make a virtual pet game where the user would have an animal pet like a cat or a dog. Later I thought lets make it more interesting and have pets like dragons or unicorns. That reminded me a lot about the digital game I remember called Tamagotchi. 

I was thinking about all the types of "pets" that I myself would like to parent, that would be different from just a cat or dog - when I came up with my application idea.

The terminal app that I have decided to build is a Virtual Plant simulation game called Plant Pet. The motivation for this idea comes from being a plant lover myself. 

##### Target Audience

Plant Pet will be a fun game to play for children. Therefor, the target audience of Plant Pet would typically be children between the ages of 4 and 10. 

I believe it is very important for children to learn and understand the importance of nature and the big role plants play in life - being the problem that I want to solve. I think it is therefor best to introduce them to these concepts at an early stage in their life.

##### How the target audience will use the app

The main goal of Plant Pet is to have a healthy plant that grows a flower and to NOT let your plant die. To win at this game the user will have to look after their plant, nurture it so that it will grow healthy and make a beautiful flower, when the game will end. The user will lose when the plant dies. This could happen due to  underwatering, being in the sun for too long or overwatering. 

Plant Pet will be written using Ruby and will require the user to have a functional laptop/computer with ruby installed to launch and play this game.

#### Features

Plant Pet will include realistic features that the user will use to raise and care for their virtual plant.

Link to GitHub: https://github.com/zandelisenekal/terminal_app_plant_pet

###### Must have features:

1. Water 

The user will be able to water the plant. When watering the plant the water level of the plant will rise with 2 and the plant will grow - growth level increasing with 1. The plant's water level will begin at 1 and will increase as the user water's their plant. When the water level goes over 10, the plant will die from overwatering. The user will be able to move their plant from being in the sun to being in the shade. When the plant is in the sun evaporation will occur which will lower the water level of the water equal to the number of days the plant has spent outside. The plant being inside will not affect the water level of the plant.

2. Location

The user will be able to move the plant outside in the sun or inside. The user will be asked for how long they want to move their plant outside in the sun. Being in the sun will affect the plant's water level, lowering it an equal to the number of days the plant spent outside. The sun will also cause the plant to grow faster, increasing the growth level of the plant by 1 per day outside. Being outdoors in the sun will increase the risk of pests; therefore increasing the pests variable. A higher pests variable and the plant will not be able to grow until the user chooses to use pesticides on the plant.

3. Fertilization 

Fertilizing the plant will increase the growth of the plant the most - increasing the growth level with 3. The user will only be able to fertilize the plant once in the game because of the size of impact it will have on the growth level of the plant.

4. Main menu

The game will have a main menu which will hold all the options that the user have to pick from. It will hold the give water, fertilize and move the plant outside options. It will also have a help option which, when selected, will tell the user how to select the correct option. The main menu will continue to loop through until the game is over. When the game is over, the loop will break. 

5. Game over

The game will be over when the user wins or loses the game. The user will win the game when the plant grows a flower - which will call on the "win game" method and a message and a ascii art flower will be displayed to the user. The plant will make a flower when the growth level of the plant reaches 10 (growth level will start at 1). The user will lose when the plant dies which will happen when water level decreases to 0 or increases over 10 or when growth level is 0. This call on the 'lose' method which will display a message to the user as well as a Game Over message using a gem.

###### Nice to have features

1. Trimming

The user will be prompted to trim their plant once the plant reaches a certain growth level or percentage. Trimming the plant will affect the plant's growth level slightly but is necessary in the life cycle of the plant to be healthy. 

2. Stats

A separate option on the main menu that, when selected at any given time during the game, will display to the user the current stats of the plant at that specific time. (water level, total growth, if the plant has pests or not)

3. Pesticides 

The plant will incur pests, increasing the pest variable, when the plant is placed in the sun (outside) for longer that 2 days. The user will be notified that some pests are inhabiting the plant when the plant has been placed in the sun outside. The user will then be able to treat the plant with pesticides which will decrease the pests variable to 0. Once the user treats the plant with pesticides the plant's growth will increase.

4. Name

The user will be able to pick a name for their plant at the beginning of a new game.

#### User interaction and User experience

When the game is started/opened, the user will be asked if they want to begin a new game. The user will have the options to choose either yes or no. If 'yes' is selected the game starts and call on the New_game method. 

The user will be introduced to their new Plant Pet and will be told what the goal of the game is. From there the game simulation begins. 

The user will be given the main menu which will have the following options: water, give fertilization, move outside in the sun and help. The user will then have to choose what they want to do with their plant. This will be done by entering the number that corresponds to the feature that they want to use. 

After the user has picked a feature to use, a message will be displayed to the user accordingly and the water level and growth level of the plant will be updated. For example if the user chooses to water the plant, the game will output a message to the user that the plant has been watered. The water_level variable will automatically be updated as well as the growth_level variable.

The user will continuously loop through the main menu until the plant either grows a flower and the user wins (when growth_level is 10) or until the plant dies from poor care.

The user can choose the help option at anytime during the game which will then display a description to the user of how to use the game and how to choose which options. 

**Error handling**

Error handling will take place continuously throughout the game. If the user enters a wrong input from the main menu selection, the game will notify the user that the input was invalid and ask the user to choose and enter a correct option from the main menu.

Error handling will also take place when the user wants to fertilize the plant more than once with an error message saying that they have already fertilized their plant the maximum number of times.

#### Control flow

#### Implementation plan

Full implementation plan of features with checklists, deadlines and labels grouping together features by importance and size on Trello board:  https://trello.com/b/xkL51Rl5/terminalapp

| Feature         | Description                                            | Original Checklist                                           | Actually implemented                                         |
| --------------- | ------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Water           | Give the plant water                                   | message display<br />water level increase with 2<br />growth level increase with 1 | Same as original                                             |
| Fertilization   | Give the plant fertilization                           | fertilizer variable as boolean<br />can only give fertilizer once<br />increase growth level with 3<br />display message<br />display message when user wants to give more than once | same as original                                             |
| Location        | Move the plant outside                                 | move the plant inside or outside<br />decrease water level when outside<br />increase growth level when outside in sun<br />growth level increase one per day<br />water level decrease 1 per day<br />message that plant is in the sun<br />message that user "remembered" to bring plant inside<br />menu options asking how long user wants to put plant in sun | can only move the plant outside;<br />rest is the same       |
| Pesticide       | Treat plant with pesticide when plant has bugs         | ask user if they want to use pesticide<br />pests will occur if plant in sun for more than 2 days<br />no growth will take place when plant has pests<br />message displayed to tell user the plant has a pest | same as original + penalty was given when user chose not to use pesticide |
| main menu       | Menu with all the options the user can choose from     | Loop through main menu until game is over<br />break out of loop when plant dies<br />break out of loop when user wins<br />have a help option in menu<br />display water & growth levels to user | same as original                                             |
| Win game        | The user must be able to win at the game               | win game method<br />ascii flower<br />message displayed to user that they have won the game<br />will win when growth level is more => 10<br />breaks out of loop when user wins | same as original                                             |
| Lose game       | The user must be able to lose when the plant dies      | plant dies when growth level is 0<br />plant dies when water level is 0<br />plant dies when water level is more than 10<br />display game over screen with gem<br />display message to user that plant has died<br />display game over using gem<br />breaks out of loop when plant dies | same as original + reason for death as variable              |
| Welcome message | Display a welcome message to user when new game starts | welcome message using a gem<br />                            | same as original                                             |



#### Test game

| Feature                                                      | Description                                                  | Expected outcome                                             | Actual outcome                                               | Is it a problem?                                             |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Welcome screen                                               | Art text displaying "welcome!" using a gem                   | A welcome message should be displayed in art form using a gem | As expected                                                  | No                                                           |
| What happens if user enters wrong key during welcome message? | ---                                                          | A message should be displayed saying the user has entered an invalid key | As expected                                                  | No                                                           |
| What happens when the user inputs "p" into the command line? (ARGV) | ---                                                          | A preview of the flower that will show when the user wins the game should be displayed | As expected                                                  | No                                                           |
| Main menu                                                    | Instructions of what options the user has perform on plant   | Should have a list of the features the user can use on the plant | As expected                                                  | No                                                           |
| What happens when user enters wrong key on main menu         | ---                                                          | A message saying invalid selection should pop up             | As expected                                                  | No                                                           |
| Main menu loop                                               | ---                                                          | The main menu should loop through continuously after each feature selection has finished | As expected                                                  | No                                                           |
| Water                                                        | User gives the plant water                                   | A message saying the user has given the plant water. water level should increase with 2. Growth level should increase with 1 | As expected                                                  | No                                                           |
| Fertilizer                                                   | The user gives the plant fertilizer                          | A message should display to the user that they have given their plant fertilizer and growth level should increase by 3 | As expected                                                  | No                                                           |
| What happens when the user wants to give the plant more fertilizer | ---                                                          | A message should display to the user that they cannot give more fertilizer and then loop back to main menu | As expected                                                  | No                                                           |
| Location                                                     | The user can move their plant outside in the sun             | The game should ask the user how many days they want to put the plant in the sun | As expected                                                  | No                                                           |
|                                                              |                                                              | Water level should decrease 1 per day for being outside and growth level should increase 1 per day for being outside | As expected                                                  | No                                                           |
| Pesticide                                                    | The plant should get bugs when placed outside for more than 2 days | The game should display a message to the user that the plant has picked up pests while being outside.<br />Growth level should not increase when the plant gets a pest | As expected                                                  | No                                                           |
| Help                                                         | Help option in main menu                                     | A message telling the user how to select the different options should be displayed | As expected                                                  | No                                                           |
| What happens when the user inputs a wrong key during the play of the game | ---                                                          | The game should display a message to the user saying they're option is invalid and they should try again | As expected and the game takes the user back to the main menu | No, but its kind of annoying that the user has to go back all the way to the main menu |
| Win game                                                     | The user wins the game when growth level is 10               | The game should break out of the loop and a message should display to the user that they have won and then the screen should clear where after a ASCII art flower should be printed to the screen | As expected                                                  | For some reason the backslash \ does not want to print properly to the screen so the flower looks a bit weird but its okay |
| Lose game                                                    | The user should lose when water or growth level is 0 or when water level is more than 10 | The game should break out of the loop and a message should be displayed to the user that their plant has died and then following a Game Over text using a gem | As expected                                                  | No                                                           |
| water level and growth level stats                           | ---                                                          | The water level and growth level of the plant should be displayed at the top of the screen in a box using a gem. It should be automatically updated each time the user uses features from the menu accordingly | As expected                                                  | No                                                           |



