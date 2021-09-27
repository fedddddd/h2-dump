local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.ConsoleGraphics = {}
function OnSafeArea( f1_arg0, f1_arg1 )
	LUI.FlowManager.RequestAddMenu( f1_arg0, "boot_screen_margins", false, f1_arg1.controller, false, {
		continueExclusive = true,
		is_in_options_menu = true
	} )
end

function OpenBrightnessMenu()
	if CoD.IsHDREnabled() then
		LUI.FlowManager.RequestAddMenu( nil, "boot_hdr", true, controller, false, {
			is_in_options_menu = true,
			start_index = 3,
			show_breadcumb = false
		} )
	else
		LUI.FlowManager.RequestAddMenu( nil, "boot_brightness", true, controller, false, {
			is_in_options_menu = true
		} )
	end
end

function OpenHDRMenu()
	LUI.FlowManager.RequestAddMenu( nil, "boot_hdr", true, controller, false, {
		is_in_options_menu = true
	} )
end

function OpenAdvancedHDRMenu()
	local f4_local0 = LUI.FlowManager.RequestAddMenu
	local f4_local1 = nil
	local f4_local2 = "advanced_hdr"
	local f4_local3 = true
	local f4_local4 = controller
	local f4_local5, f4_local6 = false
	f4_local0( f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6 )
end

function DisplayKillstreakCounterToggle( f5_arg0 )
	Engine.DisplayKillstreakCounterToggle( f5_arg0 )
end

function GetDisplayKillstreakCounterText( f6_arg0 )
	return LUI.Options.GetToggleTextForProfileData( "displayKillstreakCounter", f6_arg0 )
end

function DisplayMedalSplashesToggle( f7_arg0 )
	Engine.DisplayMedalSplashesToggle( f7_arg0 )
end

function GetDisplayMedalSplashesText( f8_arg0 )
	return LUI.Options.GetToggleTextForProfileData( "displayMedalSplashes", f8_arg0 )
end

function DisplayWeaponEmblemsToggle( f9_arg0 )
	Engine.DisplayWeaponEmblemsToggle( f9_arg0 )
end

function GetDisplayWeaponEmblemsText( f10_arg0 )
	return LUI.Options.GetToggleTextForProfileData( "displayWeaponEmblems", f10_arg0 )
end

function XB3HDRRebootWarning()
	local f11_local0 = "@MENU_HDR_REBOOT_DESC"
	if not Engine.InFrontend() then
		f11_local0 = "@MENU_HDR_REBOOT_INGAME_DESC"
	end
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_HDR_REBOOT_TITLE" ),
		message_text = Engine.Localize( f11_local0 ),
		yes_action = function ( f18_arg0, f18_arg1 )
			LUI.Options.ToggleProfiledata( "hdrEnabled", Engine.GetControllerForLocalClient( 0 ) )
			Engine.ApplyHDRProfileValues( Engine.GetControllerForLocalClient( 0 ) )
			Engine.Exec( "updategamerprofile" )
			Engine.Exec( "boot_restart sp" )
		end
		,
		yes_text = Engine.Localize( "@LUA_MENU_YES" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function ToggleHDREnabledFunc( f12_arg0 )
	return function ( f19_arg0, f19_arg1 )
		if Engine.IsXB3() and Engine.GetProfileData( "hdrEnabled", Engine.GetControllerForLocalClient( 0 ) ) then
			LUI.FlowManager.RequestAddMenu( f19_arg0, "XB3HDRRebootWarning" )
		else
			LUI.Options.ToggleProfiledata( "hdrEnabled", Engine.GetControllerForLocalClient( 0 ) )
			Engine.ApplyHDRProfileValues( Engine.GetControllerForLocalClient( 0 ) )
			RefreshHDRRelatedOptions( f12_arg0, f19_arg1 )
			local f19_local0 = LUI.MenuBuilder.BuildRegisteredType( "live_dialog_text_box", {
				message = Engine.Localize( "@LUA_MENU_HDR_TV_REFRESH_NOTICE" )
			} )
			f19_local0:registerEventHandler( "tvRefreshDone", function ( element )
				element:close()
			end )
			local f19_local1 = Engine.GetLuiRoot()
			local f19_local2 = LUI.FlowManager.GetTopMenuInfo( f19_local1.flowManager.menuInfoStack )
			f19_local2.menu:addElement( f19_local0 )
			f19_local0:addElement( LUI.UITimer.new( 5000, "tvRefreshDone", nil, true ) )
		end
	end
	
end

function UpdateBrightnessButtonText( f13_arg0, f13_arg1 )
	local f13_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f13_arg0 )
	if CoD.IsHDREnabled() then
		f13_local0.brightnessButton:processEvent( {
			name = "change_button_text",
			button_text = Engine.Localize( "@MENU_HDR_BRIGHTNESS" )
		} )
	else
		f13_local0.brightnessButton:processEvent( {
			name = "change_button_text",
			button_text = Engine.Localize( "@MENU_BRIGHTNESS" )
		} )
	end
end

function RefreshHDRRelatedOptions( f14_arg0, f14_arg1 )
	local f14_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f14_arg0 )
	if f14_local0.hdrAjustButton ~= nil then
		LUI.UIButton.RefreshDisabled( f14_local0.hdrAjustButton )
	end
	if f14_local0.brightnessButton ~= nil then
		UpdateBrightnessButtonText( f14_arg0, f14_arg1 )
	end
end

function GetBrightnessButtonDescText( f15_arg0, f15_arg1 )
	if CoD.IsHDREnabled() then
		return Engine.Localize( "@MENU_HDR_BRIGHTNESS_DESC1" )
	else
		return Engine.Localize( "@MENU_BRIGHTNESS_DESC1" )
	end
end

function OptionsMainClose( f16_arg0, f16_arg1 )
	Engine.ExecNow( "profile_menuDvarsFinish", f16_arg1.controller )
	Engine.Exec( "updategamerprofile" )
end

LUI.ConsoleGraphics.new = function ( f17_arg0, f17_arg1 )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	local f17_local0 = Engine.IsMultiplayer() and 0 or LUI.MenuTemplate.spMenuOffset
	local f17_local1 = 0 ~= LUI.ConsoleOptions.FindTypeIndex( LUI.PreviousMenuName )
	local f17_local2 = 0
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f17_local2 = -15
	end
	local f17_local3 = LUI.MenuTemplate.new( f17_arg0, {
		menu_title = Engine.ToUpperCase( Engine.Localize( "@LUA_MENU_OPTIONS_UPPER_CASE" ) ),
		menu_top_indent = f17_local0 + LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing + f17_local2,
		menu_width = GenericMenuDims.OptionMenuWidth,
		menu_list_divider_top_offset = -(LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing),
		noWrap = true,
		skipAnim = f17_local1
	} )
	f17_local3:registerEventHandler( "options_window_refresh", LUI.Options.OptionsWindowRefresh )
	f17_local3:registerEventHandler( "menu_close", OptionsMainClose )
	f17_local3:addElement( LUI.H1MenuTab.new( {
		title = function ( f1_arg0 )
			return LUI.ConsoleOptions.Categories[f1_arg0].title
		end,
		tabCount = #LUI.ConsoleOptions.Categories,
		underTabTextFunc = function ( f2_arg0 )
			return LUI.ConsoleOptions.Categories[f2_arg0].title
		end,
		top = f17_local0 + LUI.MenuTemplate.ListTop + f17_local2,
		width = GenericMenuDims.OptionMenuWidth,
		clickTabBtnAction = LUI.ConsoleOptions.LoadMenu,
		activeIndex = LUI.ConsoleOptions.FindTypeIndex( "console_graphics" ),
		isTabLockedfunc = LUI.ConsoleOptions.IsOptionLocked,
		skipChangeTab = true,
		exclusiveController = f17_local3.exclusiveController
	} ) )
	LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@LUA_MENU_COLORBLIND_FILTER", "@LUA_MENU_COLOR_BLIND_DESC", LUI.Options.GetRenderColorBlindText, LUI.Options.RenderColorBlindToggle, LUI.Options.RenderColorBlindToggle )
	LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@LUA_MENU_BLOOD", "@LUA_MENU_BLOOD_DESC", LUI.Options.GetDvarEnableTextFunc( "cg_blood", false ), LUI.Options.ToggleProfiledataFunc( "showblood", Engine.GetControllerForLocalClient( 0 ) ), LUI.Options.ToggleProfiledataFunc( "showblood", Engine.GetControllerForLocalClient( 0 ) ) )
	if not Engine.IsMultiplayer() then
		LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@LUA_MENU_CROSSHAIR", "@LUA_MENU_CROSSHAIR_DESC", LUI.Options.GetDvarEnableTextFunc( "cg_drawCrosshairOption", false ), LUI.Options.ToggleDvarFunc( "cg_drawCrosshairOption" ), LUI.Options.ToggleDvarFunc( "cg_drawCrosshairOption" ) )
		LUI.Options.CreateOptionButton( f17_local3, "cg_drawDamageFeedbackOption", "@LUA_MENU_HIT_MARKER", "@LUA_MENU_HIT_MARKER_DESC", {
			{
				text = "@LUA_MENU_ENABLED",
				value = true
			},
			{
				text = "@LUA_MENU_DISABLED",
				value = false
			}
		} )
	end
	if Engine.IsMultiplayer() and Engine.GetDvarType( "cg_paintballFx" ) == DvarTypeTable.DvarBool then
		LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@LUA_MENU_PAINTBALL", "@LUA_MENU_PAINTBALL_DESC", LUI.Options.GetDvarEnableTextFunc( "cg_paintballFx", false ), LUI.Options.ToggleDvarFunc( "cg_paintballFx" ), LUI.Options.ToggleDvarFunc( "cg_paintballFx" ) )
	end
	if Engine.IsMultiplayer() then
		LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@MENU_DISPLAY_KILLSTREAK_COUNTER", "@MENU_DISPLAY_KILLSTREAK_COUNTER_DESC", GetDisplayKillstreakCounterText, DisplayKillstreakCounterToggle, DisplayKillstreakCounterToggle )
		LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@MENU_DISPLAY_MEDAL_SPLASHES", "@MENU_DISPLAY_MEDAL_SPLASHES_DESC", GetDisplayMedalSplashesText, DisplayMedalSplashesToggle, DisplayMedalSplashesToggle )
		LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@MENU_DISPLAY_WEAPON_EMBLEMS", "@MENU_DISPLAY_WEAPON_EMBLEMS_DESC", GetDisplayWeaponEmblemsText, DisplayWeaponEmblemsToggle, DisplayWeaponEmblemsToggle )
	end
	local f17_local4 = LUI.FlowManager.GetMenuScopedDataFromElement( f17_local3 )
	if CoD.IsHDRAvailable() then
		if CoD.CanToggleHDRRuntime() then
			LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@MENU_HDR", "@MENU_HDR_DESC", LUI.Options.GetToggleTextForProfileDataFunc( "hdrEnabled", Engine.GetControllerForLocalClient( 0 ) ), ToggleHDREnabledFunc( f17_local3 ), ToggleHDREnabledFunc( f17_local3 ), nil, nil, nil, CoD.IsHDRUnavailable )
		end
		f17_local4.hdrAjustButton = LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Common, "@MENU_ADJUST_HDR", "@MENU_HDR_DESC2", nil, nil, nil, OpenHDRMenu, nil, nil, CoD.IsHDRDisabled )
	elseif CoD.CanToggleHDRRuntime() then
		LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Select, "@MENU_HDR", "@MENU_UNSUPPORTED_HDR_DESC", function ( f3_arg0 )
			return Engine.Localize( "@MENU_UNSUPPORTED" )
		end, ToggleHDREnabledFunc( f17_local3 ), ToggleHDREnabledFunc( f17_local3 ), nil, nil, nil, CoD.IsHDRUnavailable )
	end
	f17_local4.brightnessButton = LUI.Options.AddButtonOptionVariant( f17_local3, GenericButtonSettings.Variants.Common, "MENU_BRIGHTNESS", GetBrightnessButtonDescText, nil, nil, nil, OpenBrightnessMenu, nil, nil, nil, nil )
	UpdateBrightnessButtonText( f17_local3, nil )
	if Engine.InFrontend() or not Engine.GetSplitScreen() then
		f17_local3:AddButton( "@LUA_MENU_SAFE_AREA", OnSafeArea, nil, nil, nil, {
			desc_text = Engine.Localize( "@LUA_MENU_SAFE_AREA_DESC" )
		} )
	end
	LUI.Options.InitScrollingList( f17_local3.list, nil )
	LUI.Options.AddOptionTextInfo( f17_local3 )
	f17_local3:AddBackButton( function ( f4_arg0, f4_arg1 )
		LUI.FlowManager.RequestLeaveMenu( f4_arg0 )
		if GameX.IsSplitscreen() then
			GameX.SetOptionState( false )
		end
	end )
	return f17_local3
end

LUI.MenuBuilder.registerType( "console_graphics", LUI.ConsoleGraphics.new )
LUI.MenuBuilder.registerPopupType( "XB3HDRRebootWarning", XB3HDRRebootWarning )
LockTable( _M )
