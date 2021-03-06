

;Utils.note(message)				메세지를 띄운다[0.8초 동안] (띄울 메세지)
;Utils.copyAndWait()				블럭지정된 문자열을 복사한다
;Utils.paste(string)				문자열을 클립보드에 넣어 현재 화면에 붙여넣기하고, 클립보드를 원상태로 되돌린다. (붙여넣을 문자열)
;Utils.getFileContent(path)			파일내용을 가져온다 (파일명을 포함한 파일경로)
;Utils.quote(string)				쌍따옴표를 붙인다

;Utils.getActiveWindowClass()		현재 활성화된 윈도우의 클래스명을 반환한다
;Utils.getActiveWindowHandle()		현재 활성화된 윈도우의 핸들을 반환한다
;Utils.getFocusedWindowControlClass()	입력 또는 선택 포커스가 되어있는 해당 윈도우컨트롤의 클래스명을 반환한다

;Utils.evalVar()					변수명을 담은 문자열로 변수를 가져온다
;Utils.getMemberCountByVarName()	변수명으로 해당 변수의 맴버변수(혹은 메써드)의 갯수를 구한다

;Utils.getBaseMethodInfo()			Object.base 메써드 정보를 가져온다
;Utils.getClassMethodInfo(file_path)		Class 메써드 정보를 가져온다

;method list end







class Utils
{
	
	note(message)
	{
		Gui, Margin, 0, 0
		gui, font, s10 w400,
		Gui, -caption
		Gui, +alwaysontop 

		Gui, Add, Text, x0 y0 w320 h1 0x4
		Gui, Add, Text, x0 y0 w1 h240 0x4
		Gui, Add, Text, x0 y240 w320 h1 0x4
		Gui, Add, Text, x320 y0 w1 h240 0x4

		Gui, Add, Text,  x20  y30  h5  c000000 BackgroundTrans, %message%

		Gui, Show, noactivate, note
		
		sleep, 800

		gui, destroy
	}
	
	noteTransparent(message, showing_time := "800", font_size := "50")
	{
		Gui, Margin, 0, 0
		Gui, Color, white
		gui, font, s%font_size% w1000, courier new
		Gui, -caption
		Gui, +alwaysontop 

		Gui, Add, Text, cRed BackgroundTrans, %message%

		Gui, Show, noactivate, note
		
		winset, transparent, 200, note 
		winset, exstyle, +0x20, note
		WinSet, TransColor, white, note 
		
		if(showing_time != "0")
		{
			sleep, %showing_time%
			gui, destroy
		}
	}


	copyAndWait()
	{
		clipboard := ""
		send, ^c
		loop, 20
		{
			if(clipboard == "")
			{
				send, ^c
				sleep, 50
			}
			else
			{
				break
			}
		}
		if(clipboard == "")
		{
			msgbox, 문자열 복사 실패
			return false
		}
		return true
	}


	paste(string)
	{
		original_clipboard := clipboard
		clipboard := string
		send, ^v
		clipboard := original_clipboard
	}


	quote(string)
	{
		double_quote := """"
		return double_quote . string . double_quote
	}
	
	getFileContent(file_path)
	{
		file_content := ""
		fileRead, file_content, %file_path%
		return file_content
	}

	getActiveWindowClass()
	{
		wingetclass, class_name, A
		return class_name
	}

	getActiveWindowHandle()
	{
		winget, hwnd, id ,A
		return hwnd
	}
	
	getActiveWindowTitle()
	{
		wingettitle, title, A
		return title
	}

	getFocusedWindowControlClass()
	{
		ControlGetFocus, class_name, A
		return class_name
	}
	
	
	evalVar(variable_name){
		return % (%variable_name%)
	}
	
	getMemberCountByVarName(var_name)		
	{
		if(var_name.isExist(".")){
			return -1
		}
		
		member_count 	:= "0"
		current_var 	:= this.evalVar(var_name)
		
		for key, value in current_var
		{
			member_count ++
		}
		
		return member_count
	}
	
	
	
	
	
	
	
	
	
	
	
		
	
	; Object.base 메써드 정보를 가져온다
	
	getBaseMethodInfo(file_path)
	{
		ds_method_info := new Dataset()
		
		ds_method_info.addColumn("method")
		ds_method_info.addColumn("arguments")
		ds_method_info.addColumn("class")
		ds_method_info.addColumn("comment")
			
		file_content_with_comment 	:= Utils.getFileContent(file_path)
		file_content 				:= file_content_with_comment.removeAHKLineComment()	; 주석 제거	
		
		loop, parse, file_content, `n
		{
			current_line 		:= a_loopfield
			
			current_class		:= "Object"
			current_method		:= ""
			current_arguments	:= ""
			current_comment		:= ""
			
			if(current_line.isExist("object.base."))
			{
				; 메써드
				current_method := current_line.getContentBetween("object.base.", ":=").trim()
				
				; 아규먼트
				if(current_method != "")
				{
					current_arguments 	:= file_content.getContentBetween(current_method . "(", ")")
					current_arguments 	:= current_arguments.replace("this,", "")
					current_arguments 	:= current_arguments.replace("this", "")
					current_arguments	:= current_arguments.trim()
				}
				
				; 코멘트
				current_comment	:= file_content_with_comment.getContentBetween("object.base." . current_method, "`n")
				current_comment	:= current_comment.getContentBetween(";", "")
				current_comment	:= current_comment.trim().replace(a_tab, a_space)
				
				idx := ds_method_info.addRow()
				
				ds_method_info.setColumn(idx, "class", 		current_class)
				ds_method_info.setColumn(idx, "method", 	current_method)
				ds_method_info.setColumn(idx, "arguments", 	current_arguments)
				ds_method_info.setColumn(idx, "comment", 	current_comment)
			}
		}
		
		return ds_method_info
	}
	
	
	
	
	; Class 메써드 정보를 가져온다
	
	getClassMethodInfo(file_path)
	{
		ds_method_info := new Dataset()
		
		ds_method_info.addColumn("method")
		ds_method_info.addColumn("arguments")
		ds_method_info.addColumn("class")
		ds_method_info.addColumn("comment")
	
		current_class		:= file_path.getUpsideDown().getContentBetween("kha.", "\").getUpsideDown()		
		file_content 		:= Utils.getFileContent(file_path)
		method_list_comment	:= file_content.getContentBetween("", ";method list end")
		
		class_obj			:= this.evalVar(current_class)
		
		for key, value in class_obj
		{					
			if(key.substring(0, 1) != "_")	; private 메써드 제외
			{			
				current_method 		:= key
				current_arguments 	:= file_content.getContentBetween(a_tab . current_method . "(", "`n").replace("{", "").trim()
				current_arguments 	:= current_arguments.substring(0, current_arguments.length() - 1)
				current_comment 	:= method_list_comment.getContentBetween(current_class . "." . current_method , "`n").getContentBetween(a_tab, "").trim()
				
				idx := ds_method_info.addRow()
				
				ds_method_info.setColumn(idx, "class", 		current_class)
				ds_method_info.setColumn(idx, "method", 	current_method)
				ds_method_info.setColumn(idx, "arguments", 	current_arguments)
				ds_method_info.setColumn(idx, "comment", 	current_comment)
			}
			else if(key == "__Class")	; 생성자
			{
				
				current_method 		:= current_class
				current_arguments 	:= file_content.getContentBetween(a_tab . "__new(", "`n").replace("{", "").trim()
				current_arguments 	:= current_arguments.substring(0, current_arguments.length() - 1)
				current_comment 	:= method_list_comment.getContentBetween(current_class . "." . current_method , "`n").getContentBetween(a_tab, "").trim()
				
				idx := ds_method_info.addRow()
				
				ds_method_info.setColumn(idx, "class", 		current_class)
				ds_method_info.setColumn(idx, "method", 	current_class)
				ds_method_info.setColumn(idx, "arguments", 	current_arguments)
				ds_method_info.setColumn(idx, "comment", 	current_comment)
			}
		}
		
		return ds_method_info
	}
	
	
	
	evalJs(expr) 
	{ 
		static sc 
		if(!sc)
		{
			sc := ComObjCreate("ScriptControl") 
			sc.Language := "JScript" 
		}
		return sc.Eval(expr) 
	}	
	
}



