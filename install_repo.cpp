#include <iostream>
#include <stdio.h>

using namespace std;
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

  install_repo();

  cout<<endl;
  return 0;
}
