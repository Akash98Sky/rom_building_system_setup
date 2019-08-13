echo -n "Do you want to install repo? (Y/N) "
read x

if [ "$x" == "Y" ] || [ "$x" == "y" ]
then
    if [ ! -d "$HOME/bin" ]
    then
        mkdir ~/bin
    fi
    
    if [ ! -d "$HOME/bin/repo" ]
    then
        sudo apt-get install curl -y
        curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

        if [ -z "`echo $PATH | grep $HOME/bin`" ]
        then
            echo "Adding repo to environment $PATH..."
            echo "" >> ~/.profile
            echo "# set PATH so it includes user's private bin if it exists" >> ~/.profile
            echo "if [ -d \"\$HOME/bin\" ] ; then" >> ~/.profile
            echo "  PATH=\"\$HOME/bin:\$PATH\"" >> ~/.profile
            echo "fi" >> ~/.profile
            export PATH=$HOME/bin:$PATH
        fi
        echo "repo added to $PATH..."
    else
        echo "ABORT! repo already installed..."
    fi
fi
