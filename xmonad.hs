import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Actions.CycleWS
import XMonad.Hooks.DynamicLog
import XMonad.Layout.Tabbed
import XMonad.Layout.LayoutCombinators hiding ((|||))
import XMonad.Layout.NoBorders
import qualified XMonad.StackSet as W

main = xmonad =<< statusBar myBar myPP toggleStrutsKey defaults

myBar = "xmobar"
myPP = xmobarPP { ppCurrent = xmobarColor "#1E90FF" "" . wrap "<" ">" , ppTitle = xmobarColor "#424242" "" }

toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

startup = do
          spawn "urxvtc"
          spawn "urxvtc"
          spawn "urxvtc"
          spawn "urxvtc"
          spawn "firefox"

defaults = defaultConfig {
	modMask = mod1Mask
        , terminal = "urxvtc"
        , workspaces = ["[Term]","[Web]","[Docs]","[Misc1]","[Misc2]","[Zik]"]
	, borderWidth = 1
	, normalBorderColor  = "#000000"
        , focusedBorderColor = "#1E90FF"
	, startupHook = startup
	, focusFollowsMouse = False
	, layoutHook = myLayout
	, manageHook = composeAll [
		className =? "Chromium" --> doF (W.shift "[Web]")
		,className =? "Firefox" --> doF (W.shift "[Web]")
		]
        }`additionalKeys`
        [
		((mod1Mask , xK_Right), nextWS)
		, ((mod1Mask , xK_l), nextWS)
		, ((mod1Mask, xK_Left), prevWS)
		, ((mod1Mask, xK_h), prevWS)
		, ((mod1Mask, xK_p), spawn "gmrun")
        ]

myLayout = smartBorders (Tall 1 (3/100) (1/2)) ||| noBorders Full
