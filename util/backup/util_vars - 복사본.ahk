;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; Accelerated Scrolling ;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
tooltips := 0 ; Show scroll velocity as a tooltip while scrolling. 1 or 0.

; The length of a scrolling session.
; Keep scrolling within this time to accumulate boost.
; Default: 500. Recommended between 400 and 1000.
wheelTimeOut := 500

; If you scroll a long distance in one session, apply additional boost factor.
; The higher the value, the longer it takes to activate, and the slower it accumulates.
; Set to zero to disable completely. Default: 30.
boost := 30

; Spamming applications with hundreds of individual scroll events can slow them down.
; This sets the maximum number of scrolls sent per click, i.e. max velocity. Default: 60.
limit := 160

; Runtime variables. Do not modify.
distance := 0
vmax := 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;; FavoriteFolders ;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
f_Hotkey = ~#MButton 

Hotkey, %f_Hotkey%, f_DisplayMenu
StringLeft, f_HotkeyFirstChar, f_Hotkey, 1
if f_HotkeyFirstChar = ~  ; Show menu only for certain window types.
	f_AlwaysShowMenu = n
else
	f_AlwaysShowMenu = y

f_FavoritesFile = %A_ScriptDir%\util\Favorites.ini

;----Read the configuration file.
f_AtStartingPos = n
f_MenuItemCount = 0
Loop, Read, %f_FavoritesFile%
{
	if f_FileExt <> Exe
	{
		; Since the menu items are being read directly from this
		; script, skip over all lines until the starting line is
		; arrived at.
		if f_AtStartingPos = n
		{
			IfInString, A_LoopReadLine, ITEMS IN FAVORITES MENU
				f_AtStartingPos = y
			continue  ; Start a new loop iteration.
		}
		; Otherwise, the closing comment symbol marks the end of the list.
		if A_LoopReadLine = */
			break  ; terminate the loop
	}
	; Menu separator lines must also be counted to be compatible
	; with A_ThisMenuItemPos:
	f_MenuItemCount++
	if A_LoopReadLine =  ; Blank indicates a separator line.
		Menu, Favorites, Add
	else
	{
		StringSplit, f_line, A_LoopReadLine, `;
		f_line1 = %f_line1%  ; Trim leading and trailing spaces.
		f_line2 = %f_line2%  ; Trim leading and trailing spaces.
		; Resolve any references to variables within either field, and
		; create a new array element containing the path of this favorite:
		Transform, f_path%f_MenuItemCount%, deref, %f_line2%
		Transform, f_line1, deref, %f_line1%
		Menu, Favorites, Add, %f_line1%, f_OpenFavorite
	}
}
return  ;----End of auto-execute section.

MsgBox, "test Where is the block"