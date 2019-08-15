# Rom Building System Setup
### <<< Make your System capable of custom ROM building >>>

First clone the repositoiy -->
  
	$ git clone https://github.com/Akash98Sky/rom_building_system_setup -b new <any dir>
* add any directory name at the end or keep it empty

Use this to setup the complete system :-
	
	$ chmod +x fullsetup.sh
	$ ./fullsetup.sh

Then run:-

	$ source ~/.profile
	$ source ~/.bashrc

##	OR

### <<< Partial Installations >>>
#### For installing only SDK :-
  
	$ chmod +x install_sdk.sh
	$ ./install_sdk.sh

  Then run:-

	$ source ~/.profile



#### For installing only repo :-
  
	$ chmod +x install_repo.sh
	$ ./install_repo.sh

  Then run:-

	$ source ~/.profile 



#### For installing other packages :-
  
	$ chmod +x install_packages.sh
	$ ./install_packages.sh

