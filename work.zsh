export LIMA_INSTANCE=fedora
alias docker=nerdctl.lima

if [ -f /usr/libexec/java_home ]; then
	export JAVA_HOME=`/usr/libexec/java_home`
fi

export PATH=/opt/homebrew/opt/python@3.9/libexec/bin:$PATH

