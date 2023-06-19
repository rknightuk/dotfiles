function laralog() {
	base="storage/logs/laravel.log"
	if [ $# -eq 0 ]
	then
		tail -f $base
	else
		search="> $@"
		tail -f $base | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} --line-buffered "$search"
	fi
}

alias sqlstart='brew services start mysql'
alias sqlstop='brew services stop mysql'