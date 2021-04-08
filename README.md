# Software Development plan for 'Gamblers Addiction'

## Purpose and Scope

The main purpose of the app "Gamblers Addiction" is to inform users about gambling addictions in general. The App is split up over two main parts: the gambling simulator and the gambling test. The gambling simulator will give a set amount to gamble with and after the user wins or loses, tells them the statistics of that bet. This hopefully informs the user that gambling and the statistics of winning are never in their favour. The gambling test is a series of statements which which the user can agree, disagree or partially agree with. The program will record the users answers and offer advise depending on the users responses. 

This app is intended to increase the users knowledge about the unlikely statistics of them winning in gambling situations by showing them easy to understand statistics. Some of my friends and past co-workers enjoy gambling, talking to them about it, they didn't really think about the statistics or odds about actually winning. They seemed to be only concerned with the thrill of gambling and not the statistics that weren't in their favour. Many Australians love to gamble, with 39% of the Australian population (6.8 million people) gamble in some way (including instant scratch tickets and gaming machines) (Jolly, 2020). 200,000 of those Australians are have a high level problem with gambling and 400,000 have a lower level problem (Mercer, 2017). Based on my personal experience with talking to people who gamble and gambling addiction and abuse statistics in Australia, I believe those people could benefit from an app that show the statistics behind the bets they make. I believe they could also use a test that could give them advise based on their gambling habits. 

The target audience is all Australians who gamble. Even if they are not addicted to gambling, Australians who gamble can benefit from this app by understanding some of the basics statistics that happen behind the scenes. The test everyone can use to ensure they're gambling habits are not unhealthy and if they need professional help. 

The user will use the gambling simulator by choosing a difficulty method (easy, medium, hard or very hard) and the choose an amount to bet. The app will then use the statistics based on the difficulty they choose to output the result whether they won or lost. The app will then deduct/add money to their bank account. The user will then be shown the odds behind the bet they placed. 

For the gambling addiction test, the user will be shown multiple statements regarding abusive behaviors. The user will then input how well they can identify themselves with each behavior. The app will then sum up the score of the users inputs and give the user a result based on their score. 

## Features 

### Main Menu feature

The main menu is the first feature that the user uses in the app. The menu is the center piece of the app, where the user is always returned to after they have done one of the other options. Firstly, when the main menu is called the user is given the option of what they could like to do(this is sidplayed through a method in the menu class). After the user inputs what they would like to do, another method in the menu class checks to see if the the input is valid. The main menu contains a disclaimer, opening message and the history of the bets the player has done. The main menu is a while loop that can only be exited if the user wants to quit the app. 

The gambling feature is a class called 'play'. When the user first interacts with the gambling feature they are asked what difficulty they would like to gamble at(a method shows them the options and collects an input). Another input checks whether the input is valid. The user is then asked how much money they would like to play on the bet. The program then will generate a an outcome for their bet based on the difficulty level the user chose. The gambling feature contains error checking methods. Fr example, one method will check that the user has enough money in their bank account for the bet their making. Another method will 





## bibliography

Jolly, W. (2020). Gambling statistics in Australia: how much money we lose | Savings.com.au. Retrieved 6 April 2021, from https://www.savings.com.au/savings-accounts/gambling-statistics-australia#:~:text=There%20are%206.8%20million%20regular,machines%20(EGMs)%20(21%25)

Mercer, P. (2017). Australia's escalating addiction to gambling. Retrieved 6 April 2021, from https://www.bbc.com/news/world-australia-42362194