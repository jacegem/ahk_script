#ifWinActive ahk_exe sublime_text.exe
;<<Hot String>>
:?:r`;::return;
:?:b`;::break;
:?: e:: =
:?: ee:: ==
:?: eee:: ===
:?: ne:: {!}=

;<<Short Cut>>
+Space::send, ^{space}
F1::Send ^{PgUp}
F2::Send ^{PgDn}

;`;::send, {END};
#IfWinActive
