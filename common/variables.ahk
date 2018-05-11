;; 환경변수 설정
EnvGet, ENV_DROPBOX, dropbox

;; 프로그램 경로 설정
if (A_Is64bitOS = true){
	P_SUBLIME = "C:\Program Files\Sublime Text 3\sublime_text.exe"	
}


/*
if (A_ComputerName = "W-PC")
{
	isHome = true	
	P_SUBLIME = "%ENV_DROPBOX%\Programs\Windows\Portable\Sublime Text 3 x86\sublime_text.exe"	
}
else if (A_ComputerName = "MSDN-SPECIAL")
{
	P_SUBLIME = "%ENV_DROPBOX%\Programs\Windows\Portable\Sublime Text 3 x86\sublime_text.exe"	
}
else
{
	P_SUBLIME = "%ENV_DROPBOX%\Programs\Windows\Portable\Sublime Text 3 x64\sublime_text.exe"	
}



; 회사 PC 에서  64비트  Processor_Architecture 가 빈값 

If(Processor_Architecture = "x86")
{

	EnvGet, ENV_PROGRAMFILES, PROGRAMFILES
}
Else
{
	EnvGet, ENV_PROGRAMFILES, PROGRAMFILES(X86)
}
*/

