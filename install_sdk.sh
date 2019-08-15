echo -n "Do you want to install Android SDK platform tools? (Y/N) "
read x

if [ "$x" == "Y" ] || [ "$x" == "y" ]
then
    echo ""
    echo "Installing wget, unzip..."
    sudo apt-get install wget unzip -y
    echo ""
    
    wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip
    unzip platform-tools-latest-linux.zip -d ~
    rm platform-tools-latest-linux.zip
    
    if [ -z "`echo $PATH | grep platform-tools`" ] || [ -z "`cat ~/.profile | grep platform-tools`"]
    then
        echo ""
        echo "Adding platform-tools to environment $PATH..."
        echo "" >> ~/.profile
        echo "# add Android SDK platform tools to path" >> ~/.profile
        echo "if [ -d \"\$HOME/platform-tools\" ] ; then" >> ~/.profile
        echo "  PATH=\"\$HOME/platform-tools:\$PATH\"" >> ~/.profile
        echo "fi" >> ~/.profile
    fi
    echo "platform-tools added to $PATH..."
    echo ""
fi
