export LIMA_INSTANCE=podman-vz
alias docker=podman
export DOCKER_HOST=unix:///Users/cj85430/.lima/podman-vz/sock/podman.sock               ─╯

if [ -f /usr/libexec/java_home ]; then
	export JAVA_HOME=`/usr/libexec/java_home`
fi

export PATH=/opt/homebrew/opt/python@3.9/libexec/bin:$PATH

