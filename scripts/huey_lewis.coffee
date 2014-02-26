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
  "Don't bet your future, on one roll of the dice",
  "Better remember, lightning never strikes twice",
  "Please don't drive eighty eight, don't wanna be late again"
]

module.exports = (robot) ->
  robot.respond /lewis?/i, (msg) ->
    msg.send msg.random(LEWIS_QUOTES)
