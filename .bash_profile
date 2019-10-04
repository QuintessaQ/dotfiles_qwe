# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

alias gedit="sudo open -a gedit"
# added by Anaconda3 5.2.0 installer
export PATH="/Users/qiaohan/anaconda3/bin:$PATH"

##
# Your previous /Users/qiaohan/.bash_profile file was backed up as /Users/qiaohan/.bash_profile.macports-saved_2019-08-27_at_17:09:18
##

# MacPorts Installer addition on 2019-08-27_at_17:09:18: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# opam configuration
test -r /Users/qiaohan/.opam/opam-init/init.sh && . /Users/qiaohan/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

if [ -s ~/.bashrc ]; then
    source ~/.bashrc;
fi

if [ -s ~/.aliases ]; then
    source ~/.aliases;
fi

