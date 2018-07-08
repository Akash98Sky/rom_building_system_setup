#include <iostream>
#include <stdio.h>

using namespace std;
void install_repo()
{
  cout<<" $ mkdir ~/bin && curl https://storage.googleapis.com/git-repo-downloas/repo > ~/bin/repo && chmod a+x ~/bin/repo";
  getchar();
  system( "if [ ! -d \"$HOME/bin\" ]; then \n mkdir ~/bin \n fi");
  system("curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo");
  cout << endl;
}

int main()
{

  install_repo();

  cout<<endl;
  return 0;
}
