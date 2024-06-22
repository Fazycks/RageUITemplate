local MainMenu = RageUI.CreateMenu("Titre", "Sous titre")
local openMainMenu = false

MainMenu.EnableMouse = false

local SubMenu = RageUI.CreateSubMenu(MainMenu, "Titre", "Sous titre")
local openSubMenu = false

local Checked = false;
local ListIndex = 1;

function RageUI.PoolMenus:Example()

	function MainMenu.Closed()
		openMainMenu = false
	end

	function SubMenu.Closed()
		openSubMenu = false
	end

	MainMenu:IsVisible(function(Items)

		Items:AddButton("Autre menu", "Petite description", {IsDisabled = false}, function(onSelected) end, SubMenu)

		Items:AddButton("Titre bouton", nil, {RightLabel = "→→", IsDisabled = false}, function(onSelected) end)

		Items:AddList("List", { 1, 2, 3 }, ListIndex, ListIndex, nil, { IsDisabled = false }, function(Index, onSelected, onListChange)
			if (onListChange) then
				ListIndex = Index;
			end
		end)

		Items:AddSeparator(_U("exemple"))

		Items:CheckBox("Activer", "Petite description", Checked, { Style = 1 }, function(onSelected, IsChecked)
			if (onSelected) then
				Checked = IsChecked
			end
		end)

	end, function()
	end)

	SubMenu:IsVisible(function(Items)
		-- Items
		Items:AddButton("Titre bouton", "Petite description", { IsDisabled = false }, function(onSelected) end)
	end, function()
	end)
end

Keys.Register("F6", "F6", "Exemple Menu", function()
	openMainMenu = true
	RageUI.Visible(MainMenu, not RageUI.Visible(MainMenu))
end)