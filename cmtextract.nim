import re
import httpclient
import strutils
var input = readAll(stdin)

echo "\u001b[31m"

echo """
                _            _                  _
                | |          | |                | |
   ___ _ __ ___ | |_ _____  _| |_ _ __ __ _  ___| |_
  / __| '_ ` _ \| __/ _ \ \/ / __| '__/ _` |/ __| __|
 | (__| | | | | | ||  __/>  <| |_| | | (_| | (__| |_
  \___|_| |_| |_|\__\___/_/\_\\__|_|  \__,_|\___|\__|

                                     by d0rksh
"""
echo "\u001b[0m"
for l in split(input,"\n"):
    try:
        var client = newHttpClient()
        var content = client.get(l)
        var string_content =  content.body()
        echo "\u001b[32;1m URL => ["&l&"] \u001b[0m"
        for match in findAll(string_content,re"(/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/)|(//.*)"):
           echo "--------------------------"
           echo match
           echo "--------------------------"
        client.close()   
    except:
           continue



