#Moises's dotfiles

##Basic guide on installing
**WARNING** These files might not do what you expect you may want to become a super user and read the install script before doing anything
###Cloning the repo and sourcing the install script
again make sure you read the install script and change a few things like the package manager used to install the dependencies and packages
```bash
git clone https://github.com/Mois-Espinal/my-dotfiles
```
then cd into the repository and run the following command
```bash
source .install
```
finally we want to install the vim gruvbox theme too, so we need to cd to the directory
```bash
cd .vim\colors 
```
then we run the install script
```bash
source .vim-colorinstall
```
and thats pretty much it
