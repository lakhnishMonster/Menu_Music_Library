Assets = {
	Asset("SOUNDPACKAGE", "sound/music_mod.fev"),
    Asset("SOUND", "sound/music_mod.fsb"),
}

--BEFORE ADDING TO THIS LIST, MAKE SURE THAT IT HAS A PROPER MOD CONFIG DATA AKA MUSIC PATH FILE
local someTable = {
--DST Menu Music
"menuscreen_default",
"menuscreen_chinese",
"menuscreen_xmas_event",
"lunar_rift",
"shadow_rift",
"moon_quay",
"waterlogged",
"wormwolfwood",
"host_of_horrors",

--Character Menue Music
"menuscreen_maxwell",
"menuscreen_wanda",
"menuscreen_webber",
"menuscreen_wickerbottom",
"menuscreen_wolfgang",
"menuscreen_wx78",
"wagstaff_moonstorm",

--Lunar New Year Music
"yot_beefalo_theme",
"yot_carrat_theme",
"yot_carrat_race",
"yot_bunnymen_minigame",

--Cawnival Music
"cawnival_eggride_a",
"cawnival_eggride_b",
"cawnival_eggride_c",
"cawnival_theme_a",
"cawnival_theme_b",

--Forge Music
"menuscreen_forge_a",
"menuscreen_forge_b",
"forge_fight",

--Gorge Music
"menuscreen_gorge",
"gorge_work",
"gorge_fight",

--A Little Drama
"menuscreen_little_drama",
"theatre_drama",
"theatre_happy",

--WOODIE WEREFORMS
"woodie_beaver", 
"woodie_goose", 
"woodie_moose",

--DST GIANTS
"AG_DST",
"AF_A",
"AF_B",
"ANTLION",
"BEARGER",
"BQ",
"CC_A",
"CC_B",
"CC_C",
"CRAB_KING",
"CLOPS",
"DFLY_DST",
"EOT",
"KLAUS_A",
"KLAUS_B",
"MALBA",
"MOOSE_GOOSE",
"DAYWALKER",
"TOAD",

--Shipwrecked Music
"menuscreen_sw",
"surfing_day",
"surfing_night",
"surfing_walani_day", 
"surfing_walani_night",
"work_mild",
"work_hurricane",
"work_monsoon",
"work_volcano",
"fight_mild",
"fight_hurricane",
"fight_monsoon",
"fight_volcano",
"EFS_mild", 
"EFS_hurricane",
"EFS_monsoon",
"EFS_volcano",

--Hamlet Music
"menuscreen_hamlet",
"aporkalyspe_EFS_ancient",
"aporkalyspe_EFS_other",
"shop_music",
"werepig_of_london",
"enter_the_city",
"fight_temperate",  
"fight_humid", 
"fight_lush", 
"h_ruins_temperate",
"h_ruins_humid",
"h_ruins_lush",
"rainforest_temperate",
"rainforest_humid",
"rainforest_lush", 
"working_temperate", 
"working_humid",
"working_lush",
}

local newTable = {}

for k, v in pairs(someTable) do
	if GetModConfigData(someTable[k]) ~= "disabled" then
		table.insert(newTable, someTable[k])
	end
end

local list_size = #newTable

if list_size > 0 then 
	--rand can't be local for some reason
	rand = math.random(list_size)
end

if list_size > 0 then
	local chosen_slot = newTable[rand]
	local chosen_track = GetModConfigData(newTable[rand])
	GLOBAL.FE_MUSIC = chosen_track
	--Don't actually need this:
	--RemapSoundEvent("dontstarve/music/music_FE", chosen_track)

end


--[[MUSIC DEBUGGING
local last_config = newTable[list_size]
local chosen_track = GetModConfigData(last_config)
GLOBAL.FE_MUSIC = chosen_track
RemapSoundEvent("dontstarve/music/music_FE", chosen_track)
--]]


--[[DEBUGGING
print("Value of list_size is: "..list_size)

print("Value of list_size position in newTable is:")
print(newTable[list_size])

print("Value of list_size position via a variable for newTable:")
local stored_value = newTable[list_size]
print(stored_value)

print("Mod Config Data of list_size position in newTable is:")
print(GetModConfigData(newTable[list_size]))

print("Data type of mod Config Data of list_size position in newTable is:")
print(type(GetModConfigData(newTable[list_size])
--]]