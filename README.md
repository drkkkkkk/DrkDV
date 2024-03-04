This is a System for FiveM that was created and scripted by " drkplayzz " on Discord. - It is a simple script that is highly configurable from Customziable chat messages for Error, Sucess Message - And more.



It's really easy to configure, and I've even added comments for what is what. Just incase you dont feel comfortable with Just guessing. You will have no Need to touch dv_client.lua unless you are wanting to add a notification system.



Hope you enjoy this simple make, it is for FiveM And is NOT Compatible for Singleplayer, It's strictly for FiveM Servers. If you are new to owning a server and need a little Guide on how to add it, You can find how to add it below.



Extract the .zip file, Remove -main on the end of the file name, and simply drag it Into your FiveM Server's "Resource" Directory, and simply go to your Server.cfg and under all of the other Ensures, write " ensure filenamehere



And then simply Restart your server, and you will have 2 New commands - /dvclosest and /dv unless changed in the Config.lua!



Here are the features that you can change, infact here is just a whole preview of the Config.lua



Config = {}

Config.DeleteRadius = 70 -- Radius for the /dvclosest command

Config.DeleteVehicleComamnd = "dv" -- The command to delete the Vehicle the player is in

Config.DeleteClosestVehicleCommand = "dvclosest" -- The command to delete the vehicle the player is Closest too

Config.DvChatName = "DV" -- This isn't the command you run, Next to the Message that it sends in the chat to say it deleted the car, it will be like this (YOURDVCHATNAME: MESSAGE HERE)

Config.DvSuccessMessage = "We successfully deleted the vehicle you where in." -- Pretty obvious, this is the message that will be sent in the Chat when the Vehicle is Successfully deleted (Only For /dv Command)
Config.DvErrorMessage = "We couldn't delete the Vehicle you where in, Are you in one?" -- Same as the other one, but this is the error message.

Config.DvClosestErrorMessage = "Sorry, there was no Vehicle within the Radius of the specified area, are you close enough?" -- Same as the others but this is for the /dvclosest command or whatever you put as the command.
Config.DvClosestSuccessMessage = "We successfully deleted the Vehicle you where closest too!" -- Pretty straight forward...


Config.SuccessColor = {0, 255, 0} -- The color of the Chat message if it was Successfully Deleted
Config.ErrorColor = {255, 0, 0} -- The color of the Chat message if it was Unsuccesssfully Deleted.

