#!/data/data/com.termux/files/usr/bin

#
text_help() {
	echo "
Usage : nisync [option] [mode]
   action Command :
      --version,-v,-ver : to check version
      --reload,-r,-rel  : to reload sistem
      --clear,-c        : to clear termux

   module Resource_Pack :
      @app_reload       : to reload sistem
      @app_terkey       : to add terkey
      @app_plugins      : to Allow nisync read sistem
      @app_themes       : Gatau buat apa
      @app_marshall     : to encode marshal python
      @app_mkdir        : to create the folder
      @app_directory    : to view directory
      @app_copy         : to copy file or folder
      and more
"
}

tools_install() {
	python3 /data/data/com.termux/files/usr/lib/nisync.py install $1
	exit 0
}

tools_reload() {
	am broadcast --user 0 -a com.termux.app.reload_style com.termux > /dev/null
	exit 0
}

tools_clear() {
	clear && login
	exit 0
}

tools_version() {
	echo "nisync @beta"
	exit 0
}

while true; do
	case $1 in
		--version|-v|-ver)
			tools_version
			exit 0
			;;
		--reload|-r|-rel)
			tools_reload
			exit 0
			;;
		--clear|-c)
			tools_clear
			exit 0
			;;
		install|-i)
			tools_install $2
			exit 0
	esac
done
