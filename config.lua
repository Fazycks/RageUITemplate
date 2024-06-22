Config = {}
Config.Locale = "fr"
Config.SetSubTitleForMenu = true

Config.DisplayText = function(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end