# Description:
#   Show a cat 
#
# Configuration:
#   None 
#
# Dependencies:
#   "xml2js": "0.1.14"
#
# Commands:
#   hubot cat me -  Reply with weird cat gif from thecatapi.com


xml2js = require "xml2js"

module.exports = (robot) ->
  robot.respond /cat me/i, (msg) ->

    msg.http("http://thecatapi.com/api/images/get?format=xml&type=gif")
      .get() (err, res, body) ->
        if res.statusCode is 200 and !err?
          parser = new xml2js.Parser()
          parser.parseString body, (err, result) ->
            if result
           	  #response = "#{kitty.url}"
              #msg.reply response
              kitty_url = result.response.data[0].images[0].image[0].url[0]
              msg.send "#{kitty_url}"
              #msg.reply JSON.stringify(result)
            else
              msg.reply "Could not get a cat picture. Darn."
        else
          msg.reply "Sorry, thecatapi.com gave an error. Darn."