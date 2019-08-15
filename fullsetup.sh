chmod +x install_*.sh
./install_packages.sh
./install_repo.sh
./install_sdk.sh

if [ -z "$USE_CCACHE" ] || [ $USE_CCACHE -ne 1 ]
then
    echo -n "Do you want to set-up CCACHE for faster build? (Y/N)"
    read x
    
    if [ "$x" == "Y" ] || [ "$x" == "y" ]
    then
        max_cache=""
        echo ""
        echo "[keep empty to set max ccache to default value(50 GB)]"
        echo -n "Enter the maximum size of CCACHE you want to keep(in GB) : "
        read max_cache
        
        if [ -z "$max_cache" ]
        then
            max_cache=50
        fi
        
        echo ""
        echo "Installing ccache..."
        sudo apt-get install ccache -y
        echo ""
        
        echo "" >> ~/.bashrc
        echo "# Enable ccache for faster building" >> ~/.bashrc
        echo "export USE_CCACHE=1" >> ~/.bashrc
        echo "ccache -M "$max_cache"G" >> ~/.bashrc
        
        export USE_CCACHE=1
        ccache -M "$max_cache"G
        echo "CCACHE has been set up."
        echo ""
        ccache -s
        echo ""
    fi
else
    echo "CCACHE is already setup for faster building."
    echo "You can see details using : ccache -s"
    echo ""
fi
