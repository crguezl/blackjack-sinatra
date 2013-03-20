Blackjack Game in Sinatra
=========================

Game on Heroku: http://blackjacksinatra.herokuapp.com/

Thinking about how to build the game
------------------------------------

What routes do we need?
* / - Welcome player if name is in hash (get), else request player's name in form
* /game/ - Setup deck and deal and display 2 dealer and 2 player cards, each with total, and display 2 buttons with player option to hit or stay (post)
* /game/hit/ - Deal and display additional player card, then check if player is busted. If busted display a "You Lose" message and end game". If not busted display 2 buttons with player option to hit or stay (post)
* /game/stay/ - Deal cards to dealer until either they exceed the player total - player loses - or if the dealer busts then the player wins.

Whatshould the UI look like? Draw up some mockups. 
* / : Either display welcome message or request player's info in a form
* /game/ : Display player cards on the left side of the screen and dealer cards on right side of the screen
* /game/hit/ : Display hit/stay buttons underneath the player cards
* /game/stay/ : Use the alert message to display win/loss in appropriate colours

Think about the edge cases. 
* How to do BJ's when they occur?
* What if user name enters other code than just their name?

What's your strategy to put the app together?
* First build some basic layouts for each route
* Second build the game logic top down, based on previous BJ game code