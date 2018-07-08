#include <iostream>
#include <stdio.h>

using namespace std;
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

int main()
{

  install_sdk();

  cout<<endl;
  return 0;
}
