name = "Menu Music Library"
description = "Changes the menu music!"
author = "lakhnish_monster"
version = "3"
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

--Coding Reducution
local function AddOptions(data)
	local m_dir = "music_mod/music/"
	local disabled_option = {description = "Disabled", data = "disabled"}
	return {disabled_option, {description = "Enabled", data = m_dir..data}}
end

--EMPTY AddOptions() WILL CAUSE NIL STRING CRASH
--ALSO MAKE SURE TO ADD name TO MODMAIN.LUA SO THAT IT ACTUALLY PLAYS THE MUSIC

configuration_options = {

	AddSectionTitle("DST Menu Music"),
	AddConfig("Original Theme", "menuscreen_default", 				AddOptions("menuscreen_themed/default"), "disabled"),
	AddConfig("Chinese New Year", "menuscreen_chinese", 			AddOptions("menuscreen_themed/yot_default"), "disabled"),
	AddConfig("Winter's Feast Event", "menuscreen_xmas_event", 		AddOptions("menuscreen_themed/xmas_event"), "disabled"),
	AddConfig("Taking Root", "lunar_rift", 							AddOptions("menuscreen_themed/lunar_rift"), "disabled"),
	AddConfig("Terrors Below", "shadow_rift", 						AddOptions("menuscreen_themed/shadow_rift"), "disabled"),
	AddConfig("Moon Quay", "moon_quay", 							AddOptions("menuscreen_themed/moon_quay"), "disabled"),
	AddConfig("Waterlogged", "waterlogged", 						AddOptions("menuscreen_themed/waterlogged"), "disabled"),
	AddConfig("Wormwoodwolf Skill Tree", "wormwolfwood", 			AddOptions("menuscreen_themed/wormwolfwood"), "disabled"),
	AddConfig("Host of Horrors", "host_of_horrors", 				AddOptions("menuscreen_themed/host_of_horrors"), "disabled"),
	
	AddSectionTitle("Character Menu Music"),
	AddConfig("Maxwell", "menuscreen_maxwell", 						AddOptions("menuscreen_characters/menuscreen_maxwell"), "disabled"),
	AddConfig("Wanda",   "menuscreen_wanda", 						AddOptions("menuscreen_characters/menuscreen_wanda"), "disabled"),
	AddConfig("Webber", "menuscreen_webber", 						AddOptions("menuscreen_characters/menuscreen_webber"), "disabled"),
	AddConfig("Wickerbottom", "menuscreen_wickerbottom", 			AddOptions("menuscreen_characters/menuscreen_wickerbottom"), "disabled"),
	AddConfig("Wolfgang", "menuscreen_wolfgang", 					AddOptions("menuscreen_characters/menuscreen_wolfgang"), "disabled"),
	AddConfig("WX-78", "menuscreen_wx78", 							AddOptions("menuscreen_characters/menuscreen_wx78"), "disabled"),
	AddConfig("Wagstaff Moonstorm", "wagstaff_moonstorm", 			AddOptions("menuscreen_characters/wagstaff_moonstorm"), "disabled"),
	
	AddSectionTitle("Lunar New Year Music"),
	AddConfig("Year of the Beefalo Theme", "yot_beefalo_theme", 	AddOptions("chinese_newyear/yot_beefalo_theme"), "disabled"),
	AddConfig("Year of the Carrat Theme", "yot_carrat_theme", 		AddOptions("chinese_newyear/yot_carrat_theme"), "disabled"),
	AddConfig("Year of the Carrat Race", "yot_carrat_race", 		AddOptions("chinese_newyear/yot_carrat_race"), "disabled"),
	AddConfig("Year of the Bunnymen Event","yot_bunnymen_minigame", AddOptions("chinese_newyear/yot_bunnymen_minigame"), "disabled"),
	
	AddSectionTitle("Cawnival Music"),
	AddConfig("Egg Ride A", "cawnival_eggride_a", 					AddOptions("cawnival/cawnival_eggride_a"), "disabled"),
	AddConfig("Egg Ride B", "cawnival_eggride_b", 					AddOptions("cawnival/cawnival_eggride_b"), "disabled"),
	AddConfig("Egg Ride C", "cawnival_eggride_c", 					AddOptions("cawnival/cawnival_eggride_c"), "disabled"),
	AddConfig("Cawnival Menu A", "cawnival_theme_a", 				AddOptions("cawnival/cawnival_theme_a"), "disabled"),
	AddConfig("Cawnival Menu B", "cawnival_theme_b", 				AddOptions("cawnival/cawnival_theme_b"), "disabled"),
	
	AddSectionTitle("Forge Music"),
	AddConfig("Forge Menu A", "menuscreen_forge_a", 				AddOptions("forge/menuscreen_forge_a"), "disabled"),
	AddConfig("Forge Menu B", "menuscreen_forge_b", 				AddOptions("forge/menuscreen_forge_b"), "disabled"),
	AddConfig("Forge Arena",  "forge_fight", 						AddOptions("forge/forge_fight"), "disabled"),
	
	AddSectionTitle("Gorge Music"),
	AddConfig("Gorge Menu", "menuscreen_gorge", 					AddOptions("gorge/menuscreen_gorge"), "disabled"),
	AddConfig("Gorge Work", "gorge_work", 							AddOptions("gorge/gorge_work"), "disabled"),
	AddConfig("Gorge Low Timer", "gorge_fight", 					AddOptions("gorge/gorge_fight"), "disabled"),
	
	AddSectionTitle("A Little Drama Music"),
	AddConfig("A Little Drama Menu", "menuscreen_little_drama", 	AddOptions("little_drama/menuscreen_little_drama"), "disabled"),
	AddConfig("Drama", "theatre_drama", 							AddOptions("little_drama/theatre_drama"), "disabled"),
	AddConfig("Happy", "theatre_happy", 							AddOptions("little_drama/theatre_happy"), "disabled"),
	
	AddSectionTitle("Woodie's Wereforms Music"),
	AddConfig("Beaver", "woodie_beaver", 							AddOptions("woodie_wereforms/werebeaver"), "disabled"),
	AddConfig("Goose", "woodie_goose", 								AddOptions("woodie_wereforms/weregoose"), "disabled"),
	AddConfig("Moose", "woodie_moose", 								AddOptions("woodie_wereforms/weremoose"), "disabled"),
	
	AddSectionTitle("DST Giant Music"),
	AddConfig("Ancient Guardian", "AG_DST", 						AddOptions("dst_giants/ancient_guardian"), "disabled"),
	AddConfig("Ancient FW Phase 1", "AF_A", 						AddOptions("dst_giants/stalker_a"), "disabled"),
	AddConfig("Ancient FW Phase 2", "AF_B", 						AddOptions("dst_giants/stalker_b"), "disabled"),
	AddConfig("Antlion", "ANTLION", 								AddOptions("dst_giants/antlion"), "disabled"),
	AddConfig("Bearger", "BEARGER", 								AddOptions("dst_giants/bearger"), "disabled"),
	AddConfig("Bee Queen", "BQ", 									AddOptions("dst_giants/bee_queen"), "disabled"),
	AddConfig("Celestial Champion Phase 1", "CC_A", 				AddOptions("dst_giants/celestial_champion_a"), "disabled"),
	AddConfig("Celestial Champion Phase 2", "CC_B", 				AddOptions("dst_giants/celestial_champion_b"), "disabled"),
	AddConfig("Celestial Champion Phase 3", "CC_C", 				AddOptions("dst_giants/celestial_champion_c"), "disabled"),
	AddConfig("Crab King", "CRAB_KING", 							AddOptions("dst_giants/crab_king"), "disabled"),
	AddConfig("Deerclops", "CLOPS", 								AddOptions("dst_giants/deerclops"), "disabled"),
	AddConfig("Dragonfly (DST)", "DFLY_DST", 						AddOptions("dst_giants/dragonfly"), "disabled"),
	AddConfig("Eye of Terror", "EOT", 								AddOptions("dst_giants/eye_of_terror"), "disabled"),
	AddConfig("Klaus Phase 1", "KLAUS_A", 							AddOptions("dst_giants/klaus_a"), "disabled"),
	AddConfig("Klaus Phase 2", "KLAUS_B", 							AddOptions("dst_giants/klaus_b"), "disabled"),
	AddConfig("Malbatross", "MALBA", 								AddOptions("dst_giants/malbatross"), "disabled"),
	AddConfig("Moose/Goose", "MOOSE_GOOSE", 						AddOptions("dst_giants/moose_goose"), "disabled"),
	AddConfig("Nightmare Werepig", "DAYWALKER",  					AddOptions("dst_giants/daywalker"), "disabled"),
	AddConfig("Toadstool", "TOAD", 									AddOptions("dst_giants/toadstool"), "disabled"),

	AddSectionTitle("DS Shipwrecked Music"),	
	AddConfig("Shipwrecked Menu Theme", "menuscreen_sw", 				AddOptions("shipwrecked/menuscreen_sw"), "disabled"),
	--AddConfig("Shipwrecked Menu Theme (Old)", "menuscreen_sw_old", 				AddOptions("shipwrecked/menuscreen_sw_old"), "disabled"),
	AddConfig("Daytime Surfing", "surfing_day", 						AddOptions("shipwrecked/surfing_day"), "disabled"),
	AddConfig("Nighttime Surfing", "surfing_night", 					AddOptions("shipwrecked/surfing_night"), "disabled"),
	AddConfig("Daytime Surfing (Walani)", "surfing_walani_day", 		AddOptions("shipwrecked/surfing_walani_day"), "disabled"),
	AddConfig("Nighttime Surfing (Walani)", "surfing_walani_night", 	AddOptions("shipwrecked/surfing_walani_night"), "disabled"),
	AddConfig("Work (Mild)", "work_mild", 								AddOptions("shipwrecked/work_mild"), "disabled"),
	AddConfig("Work (Hurricane)", "work_hurricane", 					AddOptions("shipwrecked/work_hurricane"), "disabled"),
	AddConfig("Work (Monsoon)", "work_monsoon", 						AddOptions("shipwrecked/work_monsoon"), "disabled"),
	AddConfig("Work (Volcano)", "work_volcano", 						AddOptions("shipwrecked/work_volcano"), "disabled"),
	AddConfig("Fight (Mild)", "fight_mild", 							AddOptions("shipwrecked/fight_mild"), "disabled"),
	AddConfig("Fight (Hurricane)", "fight_hurricane", 					AddOptions("shipwrecked/fight_hurricane"), "disabled"),
	AddConfig("Fight (Monsoon)", "fight_monsoon", 						AddOptions("shipwrecked/fight_monsoon"), "disabled"),
	AddConfig("Fight (Volcano)", "fight_volcano", 						AddOptions("shipwrecked/fight_volcano"), "disabled"),	
	AddConfig("Epic Fight (Mild)", "EFS_mild", 							AddOptions("shipwrecked/EFS_mild"), "disabled"),
	AddConfig("Epic Fight (Hurricane)", "EFS_hurricane", 				AddOptions("shipwrecked/EFS_hurricane"), "disabled"),
	AddConfig("Epic Fight (Monsoon)", "EFS_monsoon", 					AddOptions("shipwrecked/EFS_monsoon"), "disabled"),
	AddConfig("Epic Fight (Volcano)", "EFS_volcano", 					AddOptions("shipwrecked/EFS_volcano"), "disabled"),

	AddSectionTitle("DS Hamlet Music"),
	AddConfig("Hamlet Menu Theme", "menuscreen_hamlet", 					AddOptions("hamlet/menuscreen_hamlet"), "disabled"),
	AddConfig("Aporkalyspe Epic Fight Ancients", "aporkalyspe_EFS_ancient", AddOptions("hamlet/aporkalyspe_EFS_ancient"), "disabled"),
	AddConfig("Aporkalyspe Epic Fight Other", "aporkalyspe_EFS_other", 		AddOptions("hamlet/aporkalyspe_EFS_other"), "disabled"),
	AddConfig("Shop Music", "shop_music", 									AddOptions("hamlet/shop_music"), "disabled"),
	AddConfig("Wilba Theme", "werepig_of_london", 							AddOptions("hamlet/werepig_of_london"), "disabled"),
	AddConfig("Enter the City", "enter_the_city", 							AddOptions("hamlet/enter_the_city"), "disabled"),
	AddConfig("Fight (Temperate)", "fight_temperate", 						AddOptions("hamlet/fight_temperate"), "disabled"),
	AddConfig("Fight (Humid)", "fight_humid", 								AddOptions("hamlet/fight_humid"), "disabled"),
	AddConfig("Fight (Lush)", "fight_lush", 								AddOptions("hamlet/fight_lush"), "disabled"),
	AddConfig("Temple (Temperate)", "h_ruins_temperate", 					AddOptions("hamlet/h_ruins_temperate"), "disabled"),
	AddConfig("Temple (Humid)", "h_ruins_humid", 							AddOptions("hamlet/h_ruins_humid"), "disabled"),
	AddConfig("Temple (Lush)", "h_ruins_lush", 								AddOptions("hamlet/h_ruins_lush"), "disabled"),
	AddConfig("Deep Rainforest (Temperate)", "rainforest_temperate", 		AddOptions("hamlet/rainforest_temperate"), "disabled"),
	AddConfig("Deep Rainforest (Humid)", "rainforest_humid", 				AddOptions("hamlet/rainforest_humid"), "disabled"),
	AddConfig("Deep Rainforest (Lush)", "rainforest_lush", 					AddOptions("hamlet/rainforest_lush"), "disabled"),
	AddConfig("Working (Temperate)", "working_temperate", 					AddOptions("hamlet/working_temperate"), "disabled"),
	AddConfig("Working (Humid)", "working_humid", 							AddOptions("hamlet/working_humid"), "disabled"),
	AddConfig("Working (Lush)", "working_lush", 							AddOptions("hamlet/working_lush"), "disabled"),


}
