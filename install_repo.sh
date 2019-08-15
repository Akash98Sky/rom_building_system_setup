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
        echo ""
        echo "Installing curl..."
        sudo apt-get install curl -y
        echo ""
        
        curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

        if [ -z "`echo $PATH | grep $HOME/bin`" ] || [ -z "`cat ~/.profile | grep \$HOME/bin`"]
        then
            echo ""
            echo "Adding repo to environment $PATH..."
            echo "" >> ~/.profile
            echo "# set PATH so it includes user's private bin if it exists" >> ~/.profile
            echo "if [ -d \"\$HOME/bin\" ] ; then" >> ~/.profile
            echo "  PATH=\"\$HOME/bin:\$PATH\"" >> ~/.profile
            echo "fi" >> ~/.profile
        fi
        echo "repo added to $PATH..."
        echo ""
    else
        echo ""
        echo "ABORT! repo already installed..."
        echo ""
    fi
fi

