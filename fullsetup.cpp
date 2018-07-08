#include <iostream>
#include <stdio.h>

using namespace std;

void install_pkg()
{
  cout<<"\n $ sudo apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev openjdk-8-jdk";
  cin.ignore();
  getchar();
  system("sudo apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev openjdk-8-jdk");
  cout<<endl;
}

void install_sdk()
{
  cout << "\n $ mkdir ~/temp && cd ~/temp && wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip";
  cin.ignore();
  getchar();
  system("rm -rf ~/temp/ && mkdir ~/temp && cd ~/temp && wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip");
  cout << "\n $ unzip platform-tools-latest-linux.zip -d ~";
  cin.ignore();
  getchar();
  system("unzip ~/temp/platform-tools-latest-linux.zip -d ~");
  cout<<endl;
}

void install_repo()
{
  cout<<"curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo";
  cin.ignore();
  getchar();
  system("curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo");
  cout << endl;
}

int main()
{
  char a='n';
  cout<<"\n Install packages?(y|n) ";
  a=getchar();

  if(a=='y'||a=='Y'){ install_pkg();  }

  cin.ignore();
  cout<<"\n Install SDK?(y|n) ";
  a=getchar();

  if(a=='y'||a=='Y'){ install_sdk();  }

  cin.ignore();
  
  cout<<"\n Install repo?(y|n) ";
  a=getchar();

  if(a=='y'||a=='Y'){ install_repo(); }

  cout<<endl;
  return 0;
}
