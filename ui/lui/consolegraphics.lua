LuaQ            TNIL    	   TBOOLEAN       TLIGHTUSERDATA       TNUMBER       TSTRING       TTABLE    
   TFUNCTION    
   TUSERDATA       TTHREAD 	      TIFUNCTION 
      TCFUNCTION       TUI64       TSTRUCT            `       _   ¶   ¶          ¶  
        ¶    ¶   h "     6    6    6    6    6    6    6    6    6 	   6 
   6    6    6    6     6   ! 6  ¶           D  ¶  #        $       % 2 ¶       "         ¶  #        &        2 ¶'   ) ¶* , ¶-    /          module          package          seeall        CoD          PrintModuleLoad        _NAME          LUI          ConsoleGraphics        OnSafeArea        OpenBrightnessMenu        OpenHDRMenu        OpenAdvancedHDRMenu        DisplayKillstreakCounterToggle         GetDisplayKillstreakCounterText        DisplayMedalSplashesToggle        GetDisplayMedalSplashesText        DisplayWeaponEmblemsToggle        GetDisplayWeaponEmblemsText        XB3HDRRebootWarning        ToggleHDREnabledFunc        UpdateBrightnessButtonText        RefreshHDRRelatedOptions        GetBrightnessButtonDescText        OptionsMainClose        new        MenuBuilder        registerType        console_graphics        registerPopupType   
       LockTable          _M                  	          __  ¶                2            h  
          LUI          FlowManager        RequestAddMenu        boot_screen_margins        controller        continueExclusive        is_in_options_menu                     .       _   ¶               9  ¶                  4	 2 
 ¶    h#   9  ¶                  4 2 
 ¶    h             CoD          IsHDREnabled        LUI          FlowManager        RequestAddMenu 	       boot_hdr        controller          is_in_options_menu        start_index   @@       show_breadcumb         boot_brightness                            ___   ¶                  4 2  ¶    h
             LUI          FlowManager        RequestAddMenu 	       boot_hdr        controller          is_in_options_menu                            _   ¶                  4 2  ¶    4   	          LUI          FlowManager        RequestAddMenu        advanced_hdr        controller                             ___  ¶                     Engine          DisplayKillstreakCounterToggle                           _  ¶              2   ,              LUI          Options        GetToggleTextForProfileData        displayKillstreakCounter                             ¶                     Engine          DisplayMedalSplashesToggle                           _  ¶              2   ,              LUI          Options        GetToggleTextForProfileData        displayMedalSplashes                             ¶                     Engine          DisplayWeaponEmblemsToggle                           _  ¶              2   ,              LUI          Options        GetToggleTextForProfileData        displayWeaponEmblems                     :          2 ¶           9  2 h ¶        2 ¶            ¶        2 ¶        2 ¶              2  ,              @MENU_HDR_REBOOT_DESC        Engine          InFrontend        @MENU_HDR_REBOOT_INGAME_DESC        popup_title 	       Localize        @MENU_HDR_REBOOT_TITLE        message_text        yes_action 	       yes_text        @LUA_MENU_YES        no_text        @LUA_MENU_CANCEL        LUI          MenuBuilder        BuildRegisteredType        generic_yesno_popup                   -       _  ¶              2 ¶ 	      
 2   ¶        ¶ 	      
 2   ¶        2 ¶        2            LUI          Options        ToggleProfiledata        hdrEnabled        Engine          GetControllerForLocalClient            ApplyHDRProfileValues        Exec        updategamerprofile        boot_restart sp                           __                                   ___  ¶           9  ¶        2  ¶        2      9 ¶	                2 c 9 ¶	              2  ¶        2    ¶         ¶        2   ¶   L  ¶	              2 h  ¶ 
       2. 2    ¶        ¶	                    
              ! ! ¶	 "      #      $ 2	 2
 4  
   %          Engine          IsXB3        GetProfileData        hdrEnabled        GetControllerForLocalClient            LUI          FlowManager        RequestAddMenu        XB3HDRRebootWarning        Options        ToggleProfiledata        ApplyHDRProfileValues        RefreshHDRRelatedOptions          MenuBuilder        BuildRegisteredType        live_dialog_text_box        message 	       Localize         @LUA_MENU_HDR_TV_REFRESH_NOTICE        registerEventHandler        tvRefreshDone        GetLuiRoot        GetTopMenuInfo        flowManager        menuInfoStack        menu        addElement        UITimer        new  @E                         __             close                    2         ¶                ¶           9	       
 h ¶        2  9	       
 h ¶        2            LUI          FlowManager        GetMenuScopedDataFromElement        CoD          IsHDREnabled        brightnessButton        processEvent        name        change_button_text        button_text        Engine   	       Localize        @MENU_HDR_BRIGHTNESS        @MENU_BRIGHTNESS                    &       _  ¶                        9  ¶                    	         9
 ¶                LUI          FlowManager        GetMenuScopedDataFromElement        hdrAjustButton  	       UIButton        RefreshDisabled        brightnessButton        UpdateBrightnessButtonText                             _  ¶           9 ¶        2 ,    9 ¶       	 2 ,    
          CoD          IsHDREnabled        Engine   	       Localize        @MENU_HDR_BRIGHTNESS_DESC1        @MENU_BRIGHTNESS_DESC1                           __  ¶        2         ¶        2            Engine          ExecNow        profile_menuDvarsFinish        controller        Exec        updategamerprofile                    +      _  ¶        2  ¶           9 2   9 ¶ 
             ¶              ¶           9   2  ¶ 
         9  ¶ 
           9 2 ¶ 

      
         h  ¶       	  ¶ 	      
 2	  & ¶             P	 ¶ 	      	PP. ¶  "      < ¶             	 ¶ 	      	P jF%IL'( 2	 ¶ 	)      	*      '+ 2	, ¶-  ¶             
 h  ^ ¶       1       n` d ¶ 
      4      PPf ¶  "      j ¶       7      l ¶             	9 2p ¶       ;      t%y=
       z>	  ¶ )      ?       
	@ ¶A 	C      	D      
E 2F 2 ¶ )      G       ¶ )      H       ¶ )      H       ¶ )      ?       
	@ ¶A 	C      	D      
I 2J 2 ¶ )      K      L 2   ¶ )      M      N 2  ¶ O       2   ¶ )      M      N 2  ¶ O        2      ¶         G 9 ¶ )      ?       
	@ ¶A 	C      	D      
P 2Q 2 ¶ )      K      R 2   ¶ )      S      R 2 ¶ )      S      R 2   ¶ )      T       
	U 2
V 2W 2 h hY±%µ h[±\µ  ¶          @ 9  ¶ ]      ^ 2_ ¶` b        2 9 ¶ )      ?       
	@ ¶A 	C      	D      
c 2d 2 ¶ )      K      ^ 2   ¶ )      S      ^ 2 ¶ )      S      ^ 2    ¶          M 9 ¶ )      ?       
	@ ¶A 	C      	D      
e 2f 2g ¶h j ¶k j ¶k  ¶ )      ?       
	@ ¶A 	C      	D      
m 2n 2o ¶p r ¶s r ¶s  ¶ )      ?       
	@ ¶A 	C      	D      
u 2v 2w ¶x z ¶{ z ¶{  ¶ }      ~       
 ¶          Y 9 ¶          2 9 ¶ )      ?      	 

@ ¶A 
C      
D       2 2 ¶ )             2  ¶ O       2   ¶  
 ¶  
 $4 ¶ &       ¶ )      ?      	 

@ ¶A 
C      
       2 2 4 ¶  $4 ¶ &       * 9 ¶          " 9 ¶ )      ?      	 

@ ¶A 
C      
D       2 2  ¶  
 ¶  
 $4 ¶ &       ¶ )      ?      	 

@ ¶A 
C      
       2 ¶  4 ¶  (4* ¶ 	 

 4  ¶          9  ¶          9 
¡ 2¢ ¶£  4 h  ¶        ¦ 2J ¶ )      §      	¨
       
 4 ¶ )      ©      	 
ª
    «          Engine          ExecNow        profile_menuDvarsSetup        IsMultiplayer            LUI          MenuTemplate        spMenuOffset        ConsoleOptions        FindTypeIndex        PreviousMenuName        InFrontend        GetSplitScreen   pÁ       new        menu_title        ToUpperCase 	       Localize        @LUA_MENU_OPTIONS_UPPER_CASE        menu_top_indent 
       H1MenuTab        tabChangeHoldingElementHeight        H1MenuDims          spacing        menu_width        GenericMenuDims          OptionMenuWidth        menu_list_divider_top_offset        noWrap 	       skipAnim        registerEventHandler        options_window_refresh        Options        OptionsWindowRefresh        menu_close        OptionsMainClose          title 	       tabCount        Categories        underTabTextFunc        top        ListTop        width        clickTabBtnAction 	       LoadMenu        activeIndex        console_graphics        isTabLockedfunc        IsOptionLocked        skipChangeTab        exclusiveController        addElement        AddButtonOptionVariant        GenericButtonSettings   	       Variants        Select        @LUA_MENU_COLORBLIND_FILTER        @LUA_MENU_COLOR_BLIND_DESC        GetRenderColorBlindText        RenderColorBlindToggle        @LUA_MENU_BLOOD        @LUA_MENU_BLOOD_DESC        GetDvarEnableTextFunc 	       cg_blood        ToggleProfiledataFunc 
       showblood        GetControllerForLocalClient        @LUA_MENU_CROSSHAIR        @LUA_MENU_CROSSHAIR_DESC        cg_drawCrosshairOption        ToggleDvarFunc        CreateOptionButton        cg_drawDamageFeedbackOption        @LUA_MENU_HIT_MARKER        @LUA_MENU_HIT_MARKER_DESC        text        @LUA_MENU_ENABLED        value        @LUA_MENU_DISABLED         GetDvarType        cg_paintballFx        DvarTypeTable   	       DvarBool        @LUA_MENU_PAINTBALL        @LUA_MENU_PAINTBALL_DESC !       @MENU_DISPLAY_KILLSTREAK_COUNTER &       @MENU_DISPLAY_KILLSTREAK_COUNTER_DESC         GetDisplayKillstreakCounterText          DisplayKillstreakCounterToggle          @MENU_DISPLAY_MEDAL_SPLASHES "       @MENU_DISPLAY_MEDAL_SPLASHES_DESC        GetDisplayMedalSplashesText          DisplayMedalSplashesToggle          @MENU_DISPLAY_WEAPON_EMBLEMS "       @MENU_DISPLAY_WEAPON_EMBLEMS_DESC        GetDisplayWeaponEmblemsText          DisplayWeaponEmblemsToggle          FlowManager        GetMenuScopedDataFromElement        CoD          IsHDRAvailable        CanToggleHDRRuntime 
       @MENU_HDR        @MENU_HDR_DESC         GetToggleTextForProfileDataFunc        hdrEnabled        ToggleHDREnabledFunc          IsHDRUnavailable        hdrAjustButton        Common        @MENU_ADJUST_HDR        @MENU_HDR_DESC2        OpenHDRMenu          IsHDRDisabled        @MENU_UNSUPPORTED_HDR_DESC        brightnessButton        MENU_BRIGHTNESS        GetBrightnessButtonDescText          OpenBrightnessMenu          UpdateBrightnessButtonText   
       AddButton        @LUA_MENU_SAFE_AREA        OnSafeArea   
       desc_text        @LUA_MENU_SAFE_AREA_DESC        InitScrollingList        list        AddOptionTextInfo        AddBackButton                          _  ¶                                        LUI          ConsoleOptions        Categories        title                           _  ¶                                        LUI          ConsoleOptions        Categories        title                    	       _  ¶        2 ,              Engine   	       Localize        @MENU_UNSUPPORTED                             ¶                ¶           9 ¶ 	          
          LUI          FlowManager        RequestLeaveMenu        GameX          IsSplitscreen        SetOptionState                    