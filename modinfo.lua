name = "Menu Music Library TEST"
description = "Changes the menu music!"
author = "lakhnish_monster"
version = "2"
forumthread = ""

server_filter_tags = {}
api_version_dst = 10
priority = 1

icon_atlas = "modicon.xml"
icon = "modicon.tex"

dst_compatible = true
forge_compatible = true
gorge_compatible = true

all_clients_require_mod = false
client_only_mod = true
server_only_mod = false

--label is what the player sees, name is the internal reference
local function AddConfig(label, name, options, default, hover)
    return {label = label, name = name, options = options, default = default, hover = hover or ""}
end

local function AddSectionTitle(title)
    return AddConfig(title, "", {{description = "", data = 0}}, 0)
end

local disabled_config = {description = "Disabled", data = "disabled"}
--MAKE SURE THAT DATA HAS TRACK DIR BEFORE LISTING IT AS A MOD CONFIG TO PREVENT NIL STRING CRASHES

configuration_options = {

	AddSectionTitle("DST Menu Music"),
	AddConfig("Original Theme", "menuscreen_default", 				{disabled_config, {description = "Enabled", data = "music_mod/music/menuscreen_themed/default"}}, "disabled"),
	AddConfig("Chinese New Year", "menuscreen_chinese", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_themed/yot_default"}}, "disabled"),
	AddConfig("Winter's Feast Event", "menuscreen_xmas_event", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_themed/xmas_event"}}, "disabled"),
	AddConfig("Taking Root", "lunar_rift", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_themed/lunar_rift"}}, "disabled"),
	AddConfig("Terrors Below", "shadow_rift", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_themed/shadow_rift"}}, "disabled"),
	AddConfig("Moon Quay", "moon_quay", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_themed/moon_quay"}}, "disabled"),
	AddConfig("Waterlogged", "waterlogged", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_themed/waterlogged"}}, "disabled"),
	AddConfig("Wormwoodwolf Skill Tree", "wormwolfwood", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_themed/wormwolfwood"}}, "disabled"),
	
	AddSectionTitle("Character Menu Music"),
	AddConfig("Maxwell", "menuscreen_maxwell", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_characters/menuscreen_maxwell"}}, "disabled"),
	AddConfig("Wanda",   "menuscreen_wanda", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_characters/menuscreen_wanda"}}, "disabled"),
	AddConfig("Webber", "menuscreen_webber", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_characters/menuscreen_webber"}}, "disabled"),
	AddConfig("Wickerbottom", "menuscreen_wickerbottom", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_characters/menuscreen_wickerbottom"}}, "disabled"),
	AddConfig("Wolfgang", "menuscreen_wolfgang", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_characters/menuscreen_wolfgang"}}, "disabled"),
	AddConfig("WX-78", "menuscreen_wx78", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_characters/menuscreen_wx78"}}, "disabled"),
	AddConfig("Wagstaff Moonstorm", "wagstaff_moonstorm", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/menuscreen_characters/wagstaff_moonstorm"}}, "disabled"),
	
	AddSectionTitle("Lunar New Year Music"),
	AddConfig("Year of the Beefalo Theme", "yot_beefalo_theme", 	{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/chinese_newyear/yot_beefalo_theme"}}, "disabled"),
	AddConfig("Year of the Carrat Theme", "yot_carrat_theme", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/chinese_newyear/yot_carrat_theme"}}, "disabled"),
	AddConfig("Year of the Carrat Race", "yot_carrat_race", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/chinese_newyear/yot_carrat_race"}}, "disabled"),
	AddConfig("Year of the Bunnymen Event","yot_bunnymen_minigame", {{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/chinese_newyear/yot_bunnymen_minigame"}}, "disabled"),
	
	AddSectionTitle("Cawnival Music"),
	AddConfig("Egg Ride A", "cawnival_eggride_a", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/cawnival/cawnival_eggride_a"}}, "disabled"),
	AddConfig("Egg Ride B", "cawnival_eggride_b", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/cawnival/cawnival_eggride_b"}}, "disabled"),
	AddConfig("Egg Ride C", "cawnival_eggride_c", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/cawnival/cawnival_eggride_c"}}, "disabled"),
	AddConfig("Cawnival Menu A", "cawnival_theme_a", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/cawnival/cawnival_theme_a"}}, "disabled"),
	AddConfig("Cawnival Menu B", "cawnival_theme_b", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/cawnival/cawnival_theme_b"}}, "disabled"),
	
	AddSectionTitle("Forge Music"),
	AddConfig("Forge Menu A", "menuscreen_forge_a", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/forge/menuscreen_forge_a"}}, "disabled"),
	AddConfig("Forge Menu B", "menuscreen_forge_b", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/forge/menuscreen_forge_b"}}, "disabled"),
	AddConfig("Forge Arena",  "forge_fight", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/forge/forge_fight"}}, "disabled"),
	
	AddSectionTitle("Gorge Music"),
	AddConfig("Gorge Menu", "menuscreen_gorge", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/gorge/menuscreen_gorge"}}, "disabled"),
	AddConfig("Gorge Work", "gorge_work", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/gorge/gorge_work"}}, "disabled"),
	AddConfig("Gorge Low Timer", "gorge_fight", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/gorge/gorge_fight"}}, "disabled"),
	
	AddSectionTitle("A Little Drama Music"),
	AddConfig("A Little Drama Menu", "menuscreen_little_drama", 	{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/little_drama/menuscreen_little_drama"}}, "disabled"),
	AddConfig("Drama", "theatre_drama", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/little_drama/theatre_drama"}}, "disabled"),
	AddConfig("Happy", "theatre_happy", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/little_drama/theatre_happy"}}, "disabled"),
	
	AddSectionTitle("Woodie's Wereforms Music"),
	AddConfig("Beaver", "woodie_beaver", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/woodie_wereforms/werebeaver"}}, "disabled"),
	AddConfig("Goose", "woodie_goose", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/woodie_wereforms/weregoose"}}, "disabled"),
	AddConfig("Moose", "woodie_moose", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/woodie_wereforms/weremoose"}}, "disabled"),
	
	AddSectionTitle("DST Giant Music"),
	AddConfig("Ancient Guardian", "AG_DST", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/ancient_guardian"}}, "disabled"),
	AddConfig("Ancient FW Phase 1", "AF_A", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/stalker_a"}}, "disabled"),
	AddConfig("Ancient FW Phase 2", "AF_B", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/stalker_b"}}, "disabled"),
	AddConfig("Antlion", "ANTLION", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/antlion"}}, "disabled"),
	AddConfig("Bearger", "BEARGER", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/bearger"}}, "disabled"),
	AddConfig("Bee Queen", "BQ", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/bee_queen"}}, "disabled"),
	AddConfig("Celestial Champion Phase 1", "CC_A", {{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/celestial_champion_a"}}, "disabled"),
	AddConfig("Celestial Champion Phase 2", "CC_B", {{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/celestial_champion_b"}}, "disabled"),
	AddConfig("Celestial Champion Phase 3", "CC_C", {{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/celestial_champion_c"}}, "disabled"),
	AddConfig("Crab King", "CRAB_KING", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/crab_king"}}, "disabled"),
	AddConfig("Deerclops", "CLOPS", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/deerclops"}}, "disabled"),
	AddConfig("Dragonfly (DST)", "DFLY_DST", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/dragonfly"}}, "disabled"),
	AddConfig("Eye of Terror", "EOT", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/eye_of_terror"}}, "disabled"),
	AddConfig("Klaus Phase 1", "KLAUS_A", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/klaus_a"}}, "disabled"),
	AddConfig("Klaus Phase 2", "KLAUS_B", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/klaus_b"}}, "disabled"),
	AddConfig("Malbatross", "MALBA", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/malbatross"}}, "disabled"),
	AddConfig("Moose/Goose", "MOOSE_GOOSE", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/moose_goose"}}, "disabled"),
	AddConfig("Nightmare Werepig", "DAYWALKER",  	{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/daywalker"}}, "disabled"),
	AddConfig("Toadstool", "TOAD", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/dst_giants/toadstool"}}, "disabled"),

	AddSectionTitle("DS Shipwrecked Music"),
	AddConfig("Shipwrecked Menu Theme", "menuscreen_hamlet", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/menuscreen_hamlet"}}, "disabled"),
	


	AddSectionTitle("DS Hamlet Music"),
	AddConfig("Hamlet Menu Theme", "menuscreen_hamlet", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/menuscreen_hamlet"}}, "disabled"),
	AddConfig("Aporkalyspe EFS Ancients", "aporkalyspe_EFS_ancient", 	{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/aporkalyspe_EFS_ancient"}}, "disabled"),
	AddConfig("Aporkalyspe EFS Other", "aporkalyspe_EFS_other", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/aporkalyspe_EFS_other"}}, "disabled"),
	AddConfig("Shop Music", "shop_music", 								{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/shop_music"}}, "disabled"),
	AddConfig("Wilba Theme", "werepig_of_london", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/werepig_of_london"}}, "disabled"),
	AddConfig("Enter the City", "enter_the_city", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/enter_the_city"}}, "disabled"),
	AddConfig("Fight (Temperate)", "fight_temperate", 					{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/fight_temperate"}}, "disabled"),
	AddConfig("Fight (Humid)", "fight_humid", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/fight_humid"}}, "disabled"),
	AddConfig("Fight (Lush)", "fight_lush", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/fight_lush"}}, "disabled"),
	AddConfig("Temple (Temprate)", "h_ruins_temperate", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/h_ruins_temperate"}}, "disabled"),
	AddConfig("Temple (Humid)", "h_ruins_humid", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/h_ruins_humid"}}, "disabled"),
	AddConfig("Temple (Lush)", "h_ruins_lush", 							{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/h_ruins_lush"}}, "disabled"),
	--AddConfig("Deep Rainforest (Temprate)", "werepig_of_london", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/werepig_of_london"}}, "disabled"),
	AddConfig("Deep Rainforest (Humid)", "rainforest_humid", 			{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/rainforest_humid"}}, "disabled"),
	AddConfig("Deep Rainforest (Lush)", "rainforest_lush", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/rainforest_lush"}}, "disabled"),
	AddConfig("Working (Temprate)", "working_temperate", 				{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/working_temperate"}}, "disabled"),
	AddConfig("Working (Humid)", "working_humid", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/working_humid"}}, "disabled"),
	AddConfig("Working (Lush)", "working_lush", 						{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = "music_mod/music/hamlet/working_lush"}}, "disabled"),




	
	--AddSectionTitle("DS Shipwrecked Music"),
	--AddConfig("Original Theme", "MAYOR", 		{{description = "Disabled", data = "disabled"}, {description = "Enabled", data = " "}}, "disabled"),


}
