Blackjack Game in Sinatra
=========================

Introduction 
------------

Blackjack, also known as twenty-one, is the most widely played
casino banking game in the world.Blackjack is a comparing card
game between a player and dealer, meaning that players compete
against the dealer but not against any other players. Blackjack is
played with one or more decks of 52 cards. 

The object of the game
is to reach 21 points or to reach a score higher than the dealer
without exceeding 21.  

The player or players are dealt an initial
two card hand and add the total of their cards. 

Face cards (Kings,
Queens, and Jacks) are counted as ten points. 

The player and dealer
can count his own ace as 1-point or 11 points. 

All other cards are
counted as the numeric value shown on the card. 

After receiving
their initial two cards, players have the option of getting a "hit,"
which means taking an additional card. 

In a given round, the player
or the dealer wins by having a score of 21 or by having the highest
score that is less than 21. 

Scoring higher than 21 (called "busting"
or "going bust") results in a loss. 

A player may win by having any
final score equal to, or less than 21 if the dealer busts. 

If a
player holds an ace valued as 11, the hand is called "soft", meaning
that the player cannot go bust by taking an additional card;
otherwise, the hand is "hard".  

The dealer has to take hits until
his cards total 17 or more points. (In some casinos, the dealer
also hits on a "soft" 17, e.g. initial ace and six.) 

Players who
do not bust and have a total higher than the dealer, win. The dealer
will lose if he or she busts, or has a lesser hand than the player
who has not busted. 

If the player and dealer have the same point
total, this is called a "push" and the player typically does not
win or lose money on that hand.  

Play
----

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
