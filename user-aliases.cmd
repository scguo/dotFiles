;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
vr=vim -R $*
cmderr=cd /d "%CMDER_ROOT%"
g=git $*
la=ls --show-control-chars -F -A -l --color $*
..=cd ..
npmlg=npm list -g --depth=0 2>/dev/null
npmls=npm list --depth=0 2>/dev/null

