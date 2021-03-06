DebugPrint( "Running main.lua" )
require( "LUI.CodeDependence" )
require( "LUI.GameX" )
require( "LUI.CoD" )
require( "LUI.MenuGenerics" )
require( "LUI.MenuGenericButtons" )
require( "LUI.MenuTemplate" )
require( "LUI.mp_menus.ListPaging" )
require( "LUI.sp_menus.MenuData" )
require( "LUI.common_menus.CommonPopups" )
require( "LUI.BootScreenMargins" )
require( "LUI.ButtonDescText" )
require( "LUI.ButtonHelperText" )
require( "LUI.DecoFrame" )
require( "LUI.Divider" )
require( "LUI.common_menus.Options" )
require( "LUI.common_menus.OptionsLayout" )
require( "LUI.common_menus.BootBrightness" )
require( "LUI.sp_menus.IntelMenu" )
require( "LUI.PersistentBackground" )
require( "LUI.common_menus.SystemInfo" )
require( "LUI.InfoBox" )
require( "LUI.MapBlipPulse" )
require( "LUI.H1VListButtonDescText" )
require( "LUI.H1ButtonBackground" )
require( "LUI.H2ButtonBackground" )
require( "LUI.H1PopupDeco" )
require( "LUI.H1MenuTab" )
require( "LUI.sp_menus.NewSticker" )
if Engine.UsingStreamingInstall() then
	require( "LUI.StreamingInstallCommon" )
	require( "LUI.StreamingInstallDialog" )
end
if Engine.IsDevelopmentBuild() then
	require( "LUI.tools.LUITest" )
	require( "LUI.tools.LUISequence" )
end
if Engine.IsConsoleGame() then
	require( "LUI.ConsoleOptions" )
	require( "LUI.ConsoleControls" )
	require( "LUI.ConsoleGraphics" )
	require( "LUI.ConsoleAudio" )
	require( "LUI.common_menus.BootHDR" )
	require( "LUI.common_menus.AdvancedHDR" )
else
	require( "LUI.GroupedOptionsBase" )
	require( "LUI.PCOptions" )
	require( "LUI.PCAudio" )
	require( "LUI.PCDisplay" )
	require( "LUI.PCVideo" )
	require( "LUI.AdvancedVideo" )
	require( "LUI.MovementControls" )
	require( "LUI.ActionsControls" )
	require( "LUI.ChatControls" )
	require( "LUI.GamepadControls" )
	require( "LUI.LookControls" )
end
if Engine.InFrontend() then
	require( "LUI.common_menus.EULABase" )
	require( "LUI.common_menus.EULA" )
	require( "LUI.common_menus.RankUtils" )
	require( "LUI.MFTabManager" )
	require( "LUI.common_menus.FriendsListItem" )
	require( "LUI.common_menus.FriendsMenu" )
	require( "LUI.common_menus.FriendsWidget" )
	require( "LUI.common_menus.FriendsListUtils" )
	require( "LUI.common_menus.GameManual" )
	require( "LUI.common_menus.PlayerCard" )
	require( "LUI.common_menus.FocusablePlayerCard" )
	require( "LUI.common_menus.VirtualKeyboard" )
	require( "LUI.common_menus.MarketingComms" )
	require( "LUI.common_menus.BootBrightness" )
	require( "LUI.sp_menus.MainMenu" )
	require( "LUI.sp_menus.MainLockoutMenu" )
	require( "LUI.sp_menus.MainCampaignMenu" )
	require( "LUI.sp_menus.MainSpecOpsMenu" )
	require( "LUI.sp_menus.ActSelectMenu" )
	require( "LUI.sp_menus.LevelSelectMenu" )
	require( "LUI.sp_menus.SPPopups" )
	require( "LUI.sp_menus.XenonInstall" )
	require( "LUI.sp_menus.Credits" )
	require( "LUI.sp_menus.SP_Leaderboard" )
	require( "LUI.sp_menus.SP_LeaderboardData" )
	if Engine.IsPC() then
		require( "LUI.PCDriverDialog" )
	end
else
	require( "LUI.sp_hud.ObjectivesFrame" )
	require( "LUI.sp_hud.Objectives" )
	require( "LUI.sp_hud.hud" )
	require( "LUI.sp_hud.OverlayHud" )
	require( "LUI.sp_hud.RagtimeWarfareOverlay" )
	require( "LUI.sp_hud.JavelinHud" )
	require( "LUI.sp_hud.SniperScopeHud" )
	require( "LUI.sp_hud.ConsciousnessOverlay" )
	require( "LUI.sp_hud.ConsciousnessOverlayCommon" )
	require( "LUI.sp_hud.NightVisionHud" )
	require( "LUI.sp_hud.AirplaneSlowMoOverlay" )
	require( "LUI.sp_hud.compass" )
	require( "LUI.sp_hud.weaponinfo" )
	require( "LUI.sp_hud.actionSlotKeyboard" )
	require( "LUI.sp_hud.actionSlotDpad" )
	require( "LUI.sp_hud.actionSlot" )
	require( "LUI.sp_hud.PauseMenu" )
	require( "LUI.sp_hud.gameInfo" )
	require( "LUI.sp_hud.CapturingHud" )
	require( "LUI.sp_hud.ChallengesWidget" )
	require( "LUI.sp_menus.MissionComplete" )
	require( "LUI.sp_menus.CampaignComplete" )
	require( "LUI.sp_menus.Briefing" )
	require( "LUI.sp_hud.SnowGogglesHud" )
	require( "LUI.sp_hud.DivingGogglesHud" )
	require( "LUI.sp_hud.PredatorDroneHUD" )
	require( "LUI.sp_hud.AstronautHelmetHud" )
	local f0_local0 = Engine.GetDvarString( "mapname" )
	if f0_local0 == "roadkill" then
		require( "LUI.sp_hud.ConsciousnessOverlayRoadkill" )
	elseif f0_local0 == "airport" then
		require( "LUI.sp_hud.ConsciousnessOverlayAirport" )
	elseif f0_local0 == "favela_escape" then
		require( "LUI.sp_hud.ConsciousnessOverlayFavelaEscape" )
	elseif f0_local0 == "gulag" then
		require( "LUI.sp_hud.ConsciousnessOverlayGulag" )
	elseif f0_local0 == "estate" then
		require( "LUI.sp_hud.ConsciousnessOverlayEstate" )
	elseif f0_local0 == "af_caves" then
		require( "LUI.sp_hud.ConsciousnessOverlayAfCaves" )
	elseif f0_local0 == "ending" then
		require( "LUI.sp_hud.ConsciousnessOverlayAfChase" )
	elseif f0_local0 == "dcburning" or f0_local0 == "dcemp" then
		require( "LUI.sp_hud.ConsciousnessOverlayDcBurning" )
	elseif f0_local0 == "cargoship" then
		require( "LUI.sp_hud.GasmaskHud" )
	end
end
DisableGlobals()
