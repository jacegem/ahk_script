;SetTitleMatchMode, RegEx
#ifWinActive Xshell

;<<Short Cut>>
CapsLock & c::Send ^{INSERT}	;; copy
CapsLock & v::Send +{INSERT}	;; paste
CapsLock & j:: Send ^+{TAB}
CapsLock & l:: Send ^{TAB}
CapsLock & x::Send ^c 		;; send break signal to terminal

^c::Send ^{INSERT}	;; copy
^v::Send +{INSERT}	;; paste
^x::Send ^c 		;; send break signal to terminal
^+x::Send ^{BS}     ;; send break signal to SunOS system
^n::Send +!n
$F1::Send ^+{TAB}
$F2::Send ^{TAB}
$F4::Send ^{TAB}


;<<Hot String>>
::/ua::useradd -d /kras_home/krasbe -g dba krasbe
::/pw::passwd krasbe
::/mk::mkdir /kras_home/krasbe
::/lsm::ls -al /kras_home/app/apache-tomcat-6.0.33/webapps/mltm/WEB-INF/lib/middlewareKras.jar
::/cdd::cd /kras_home/app/TEMP_FILE_DATA/download
::/vlog::/kras_home/app/apache-tomcat-6.0.33/bin/vlog.sh


::/bps::beginningPrice.sh
::/vi::vi beginning.properties
::/bp::beginning.properties
::/sed::osnm=``uname -s```;if [ $osnm = "AIX" ]`;then sed 's/^Layers=.*/Layers=F_FAC_RGEOIDN,F_FAC_RROADADDR,F_FAC_ROADADDR_GEOIDN,F_FAC_BUILDING/g' beginning.properties > temp1 && sed 's/^UpdateLogStatus=true/UpdateLogStatus=false/g' temp1 > temp2 && mv beginning.properties beginning.properties.bak && mv temp2 beginning.properties && rm temp1 && cat beginning.properties
::/pr::
	Send cd DataGathering{ENTER}
	Send tar xvf price.tar{ENTER}
	Sleep 300
	Send cd bin{ENTER}
	Send beginningPrice.sh{ENTER}
	return
::/t::tail -f log.log
::/dg::DataGathering
::/pt::price.tar
;;::/bp::beginningPrice.sh
::/m::cat log.log | more

::/ar::
	Send startup mount{ENTER}
	Send alter database archivelog`;{ENTER}
	Send alter database open`;{ENTER}
	Send archive log list{ENTER}
	return

::/sded::sdemon -o shutdown -p sde
::/sdes::sdemon -o start -p sde



::/al::archive log list
::/sm::startup mount
::/ar::alter database archivelog`;
::/op::alter database open`;


::/tl::tail -f /kras_home/app/DataGathering/log/log.log
::/cc::ls -al /kras_home/app/DataGathering/bin/BeginningData.class && ls -al /kras_home/app/DataGathering/bin/kras/ci/esri/sde/BeginningThread.class && ls -al /kras_home/app/DataGathering/bin/kras/ci/esri/sde/SDEConnection.class && ls -al /kras_home/app/DataGathering/bin/kras/ci/server/ServerWorker.class 
::/sde::/kras_home/app/DataGathering/bin/kras/ci/esri/sde
::/ser::/kras_home/app/DataGathering/bin/kras/ci/server
::/svr::/kras_home/app/DataGathering/bin/kras/ci/server
::/btc::BeginningThread.class
::/bdc::BeginningData.class
::/u::uname

::/37::cat /kras_home/app/DataGathering/log/log.log | grep 'ArcSDE Error Number' | grep -v '\-37'

::/15::telnet 10.175.85.121 1535
::/51::telnet 10.175.85.121 5155
::/601::telnet 10.175.85.121 60001
::/602::telnet 10.175.85.121 60002
::/603::telnet 10.175.85.121 60003
::/604::telnet 10.175.85.121 60004
::/605::telnet 10.175.85.121 60005
::/606::telnet 10.175.85.121 60006
::/607::telnet 10.175.85.121 60007
::/608::telnet 10.175.85.121 60008
::/609::telnet 10.175.85.121 60009
::/610::telnet 10.175.85.121 60010
::/611::telnet 10.175.85.121 60011
::/612::telnet 10.175.85.121 60012
::/613::telnet 10.175.85.121 60013
::/614::telnet 10.175.85.121 60014
::/615::telnet 10.175.85.121 60015
::/616::telnet 10.175.85.121 60016
::/617::telnet 10.175.85.121 60017

::/bip::cat /kras_home/app/DataGathering/bin/beginning.properties | grep IP=
::/sip::cat /kras_home/app/DataGathering/bin/settings.properties | grep IP=

::/status::/kras_home/app/DataGathering/bin/service.sh status
::/txdg::tar xvf DataGathering.tar
::cls::clear
::la::ls -al

::/m::make_error_begin.pl
::/f::ftp 10.47.4.9
;;::/bs::/kras_home/app/DataGathering/bin/beginningData.sh
::/bs::beginningData.sh
::/bp::/kras_home/app/DataGathering/bin/beginning.properties


;;::/p::OS_NAME=``uname -s`` `; if [ $OS_NAME = "AIX" ]`; then PS_CMD_TMP="ps -ef | grep Gathering" `; elif [ $OS_NAME = "HP-UX" ]`; then PS_CMD_TMP="ps -efx | grep Gathering"  `; elif [ $OS_NAME = "SunOS" ]`; then PS_CMD_TMP="/usr/ucb/ps -auxww | grep Gathering" `; fi `; echo "$OS_NAME    ##PS_CMD_TMP = $PS_CMD_TMP" `; eval $PS_CMD_TMP `;
::/p::osnm=``uname -s```;if [ $osnm = "AIX" ]`;then tcmd="ps -ef | grep Gathering"`;elif [ $osnm = "HP-UX" ]`;then tcmd="ps -efx | grep Gathering"`;elif [ $osnm = "SunOS" ]`;then tcmd="/usr/ucb/ps -auxww | grep Gathering"`;fi`;echo "$osnm    ##tcmd = $tcmd"`;eval $tcmd`;
;;;::/pg::OS_NAME=``uname -s`` `; if [ $OS_NAME = "AIX" ]`; then ps -ef | grep Gathering `; elif [ $OS_NAME = "HP-UX" ]`; then ps -efx | grep Gathering  `; elif [ $OS_NAME = "SunOS" ]`; then /usr/ucb/ps -auxww | grep Gathering `; fi
::/p::ps -ef | grep Gathering
::/pg::ps -ef | grep Gathering
::/spg::/usr/ucb/ps -auxww | grep DataGathering
::/hpg::ps -efx | grep DataGathering

::/scs::/kras_home/app/DataGathering/bin/startclient.sh
::/ses::/kras_home/app/DataGathering/bin/setting.sh
::/sp::/kras_home/app/DataGathering/bin/settings.properties
::/db::/kras_home/app/DataGathering/bin/
::/dl::/kras_home/app/DataGathering/log/
::/ll::/kras_home/app/DataGathering/log/log.log
::/dt::DataGathering.tar
::/ce::crontab -e
::/cl::crontab -l
::/wab::/wrapper-aix-ppc-64-3.5.25/bin
::/wal::/wrapper-aix-ppc-64-3.5.25/lib


:?:/5::0,5,10,15,20,25,30,35,40,45,50,55 * * * * /kras_home/app/DataGathering/bin/startclient.sh
;;;;;;;;;;::/sde::$SDEHOME/etc/dbinit.sde

::/w::wrapper-aix-ppc-64-3.5.25
::/aw::wrapper-aix-ppc-64-3.5.25/bin/wrapper
::/awj::wrapper-aix-ppc-64-3.5.25/lib/wrapper.jar
::/ala::wrapper-aix-ppc-64-3.5.25/lib/libwrapper.a

::/ld::ls -al | grep DataGathering



#IfWinActive








