local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Name",
   LoadingTitle = "Loading Title",
   LoadingSubtitle = "Loading Subtitle",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = SalsaRenji, -- Create a custom folder for your hub/game
      FileName = "SalsaRenjiBetav1"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab1 = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local Section = Tab1:CreateSection("Section Example")

local Toggle = Tab:CreateToggle({
   Name = "Toggle Name",
   CurrentValue = false,
   Flag = "ToggleCoins", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
})





Rayfield:Notify({
   Title = "Loaded!",
   Content = "Fully loaded Salsa Renji",
   Duration = 2,
   Image = 4483362458,
   Actions = { -- Notification Buttons

      Ignore = { -- Duplicate this table (or remove it) to add and remove buttons to the notification.
         Name = "Okay",
         Callback = function()
            print("The user tapped Okay!")
         end
      },

},
})
