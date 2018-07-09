# Rom Building System Setup
### <<< Make your System capable of custom ROM building >>>

First make sure to install git and configure it, and install g++ or install it using :-
	
	$ sudo apt-get install git
	$ sudo apt-get install g++ 

Then clone the repositoiy -->
  
	$ git clone https://github.com/Akash98Sky/rom_building_system_setup -b new <any dir>
* add any directory at the end or keep it empty

Use this to setup the complete system :-
	
	$ g++ fullsetup.cpp -o fullsetup.out
	$ ./fullsetup.out

Then open the ~/.profile file -

	$ nano ~/.profile
	
	** Search for these lines in the .profile file, add these if not found -
	
	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/bin" ] ; then
		PATH="$HOME/bin:$PATH"
	fi
	
	** Again search for these lines in the .profile file, add these if not found -
	
	# add Android SDK platform tools to path
	if [ -d "$HOME/platform-tools" ] ; then
		PATH="$HOME/platform-tools:$PATH"
	fi

Then run:-

	$ source ~/.profile

##	OR

#### <<< Partial Installations >>>
For installing only SDK :-
  
	$ ./install_sdk.out
  
Then open the ~/.profile file -

	$ nano ~/.profile
	
	** Search for these lines in the .profile file, add these if not found -
	
	# add Android SDK platform tools to path
	if [ -d "$HOME/platform-tools" ] ; then
		PATH="$HOME/platform-tools:$PATH"
	fi
	
Then run:-

	$ source ~/.profile
	
For installing other packages :-
  
	$ ./install_packages.out



For installing only repo :-
  
	$ ./install_repo.out
	
Then open the ~/.profile file -

	S nano ~/.profile
	
	** Search for these lines in the .profile file, add these if not found -
	
	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/bin" ] ; then
		PATH="$HOME/bin:$PATH"
	fi
  
Then run:-

        $ source ~/.profile 
