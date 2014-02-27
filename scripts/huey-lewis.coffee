# Description:
#   Get a random developer or designer excuse
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot lewis - Get a random huey lewis related quote

#
# Author:
#   serverascode

LEWIS_QUOTES = [
  "All I wanted to do, was play my guitar and sing",
  "Is this the 50's, or 1999?",
  "Tell me, doctor, where are we going this time?",
  "Don't bet your future, on one roll of the dice",
  "Better remember, lightning never strikes twice",
  "Please don't drive eighty eight, don't wanna be late again",
  "It's hip to be a square",
  "I like my bands in business suits, I watch them on TV",
  "I'm working out most everyday and watching what I eat",
  "Don't tell me that I'm crazy",
  "Don’t tell me I'm nowhere",
  "Take if from me...it's hip to be square",
  "Hip, Hip, so hip to be square",
  "The power of love is a curious thing",
  "You don't need money, don't take fame",
  "Don't need no credit card to ride this train",
  "They say that all in love is fair",
  "Tougher than diamonds and stronger than steel",
  "You feel the power of love?",
  "Feel the power of love",
  "But you know what to do"
]

module.exports = (robot) ->
  robot.respond /lewis?/i, (msg) ->
    msg.send msg.random(LEWIS_QUOTES)
