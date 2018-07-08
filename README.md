# Rom Building System Setup
### <<< Make your System capable of custom ROM building >>>


First clone the repositoiy -->
  
	$ git clone https://github.com/Akash98Sky/rom_building_system_setup -b new <any dir>
* add any directory at the end or keep it empty

Use this to setup the complete system :-
	
	$ ./fullsetup.out

Then open the ~/.bashrc file -

	$ nano ~/.bashrc
	
	** Search for these lines in the .bashrc file, add these if not found -
	
	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/bin" ] ; then
		PATH="$HOME/bin:$PATH"
	fi
	
	** Again search for these lines in the .bashrc file, add these if not found -
	
	# add Android SDK platform tools to path
	if [ -d "$HOME/platform-tools" ] ; then
		PATH="$HOME/platform-tools:$PATH"
	fi

	
##	OR

#### <<< Partial Installations >>>
For installing only SDK :-
  
	$ ./install_sdk.out
  
Then open the ~/.bashrc file -

	$ nano ~/.bashrc
	
	** Search for these lines in the .bashrc file, add these if not found -
	
	# add Android SDK platform tools to path
	if [ -d "$HOME/platform-tools" ] ; then
		PATH="$HOME/platform-tools:$PATH"
	fi
	
	
	
For installing other packages :-
  
	$ ./install_packages.out



For installing only repo :-
  
	$ ./install_repo.out
	
Then open the ~/.bashrc file -

	S nano ~/.bashrc
	
	** Search for these lines in the .bashrc file, add these if not found -
	
	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/bin" ] ; then
		PATH="$HOME/bin:$PATH"
	fi
  
