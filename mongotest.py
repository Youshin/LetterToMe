#b07bf6e6-f853-4015-9805-52ab65bdefda
# Format example : mongodb://[username:password@]host1[:port1][,host2[:port2],...[,hostN[:portN]]][/[database][?options]]
import pymongo
import urllib

#mongo_uri = 

#escape @
URI = urllib.parse.quote("mongodb://_:b07bf6e6-f853-4015-9805-52ab65bdefda@stitch.mongodb.com:27020/?authMechanism=PLAIN&authSource=%24external&ssl=true&appName=my_dear_diary-xqjvv:mongodb-atlas:api-key")
#URI = urllib.parse.quote("mongodb://josephwon0310@gmail.com:Tmdwo1122!@stitch.mongodb.com:27020/?authMechanism=PLAIN&authSource=%24external&ssl=true&appName=my_dear_diary-xqjvv:mongodb-atlas:local-userpass")
client = pymongo.MongoClient(URI)
print(client)
print("wat")

db = client["main"]
test1 = db["emotions"].find_one()
print(test1)