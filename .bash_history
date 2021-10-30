nvim main.conf 
sudo nvim main.conf 
ls
cd Uni/
ls
cd PP
ls
cd p3
ls
nvim primosec.c
gcc primosec.c -o primosec
ls
./primosec 1
./primosec 0
./primosec -1
./primosec 1
./primosec 2
./primosec 1200
./primosec 600
./primosec 4
./primosec 100
./primosec 200
./primosec 400
./primosec 1000
./primosec 900
./primosec 600
./primosec 500
clear
sudo pacman -S #include <assert.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <sys/time.h> 
 
#define TRUE   1 
#define FALSE  0 
 
#define TOT_PRIMOS_CONOCIDOS 1200 
 
static int primosConocidos[TOT_PRIMOS_CONOCIDOS] =  { 
#include "tablaPrimos.h" 
  }; 
 
int main (int argc, char **argv) { 
  struct timeval t0, t1, t; 
  int numPrimosConocidos; 
  int total = 0; 
  int siguiente;  // Siguiente numero de la serie a cribar 
  int cotaSerie;  // Cota superior hasta donde van a determinarse 
                  // numeros primos con los ya conocidos 
 
  int esPrimo (int numero) { 
    int i; 
   
    for (i=0; i<numPrimosConocidos; i++) 
      if ((numero % primosConocidos[i]) == 0) return FALSE; 
    return TRUE; 
  } 
 
  // Control del parametro de linea de comandos 
  if (argc != 2) { 
    printf ("Uso: primosec numPrimosConocidos \n"); 
    return 0; 
  } 
  numPrimosConocidos = atoi(argv[1]); 
  assert (numPrimosConocidos > 0); 
  assert (numPrimosConocidos <= TOT_PRIMOS_CONOCIDOS); 
 
  assert (gettimeofday (&t0, NULL) == 0); 
  siguiente = primosConocidos[numPrimosConocidos-1]+2; 
  cotaSerie = siguiente * siguiente; 
 
  while (siguiente < cotaSerie) { 
    if (esPrimo(siguiente)) { 
      // Comentar los dos printf del if en la version sin E/S 
      printf ("%9i", siguiente);           // Comentar 
      total++; 
      if ((total%10) == 0) printf ("\n");  // Comentar 
    } 
    siguiente = siguiente + 2; 
  } 
  assert (gettimeofday (&t1, NULL) == 0); 
  timersub(&t1, &t0, &t); 
  printf ("\nPrimos calculados => %6i\n", total); 
  printf ("Tiempo => %ld:%ld(seg:mseg)\n", t.tv_sec, t.tv_usec/1000); 
  return 0; 
}
sudo pacman -S xorg-server-xephyr
clear
sudo pacman -S xorg-server-xephyr
clear
cd /sys/class/backlight/
ls
cd amdgpu_bl0
ls
cat actual_brightness 
nvim brightness 
sudo nvim brightness 
sudo nvim brightness 
cd Uni/PP/
ls
cd p3
ls
mpirun primopar
export PATH="$PATH:/home/$USER/.openmpi/bin"
mpirun primopar
mpirun -n2 primopar
mpirun -nq2 primopar
mpirun -n 2 primopar
mpirun -n 2 primopar 1200
nvim primopar.c
cd Uni/PP/p3/
ls
cat tablaPrimos.h 
neofetch 
clear
ls
cat tablaPrimos.h 
nvim primosec.c
gcc primosec.c -o primosec
nvim primosec.c
gcc primosec.c -o primosec
nvim primosec.c
gcc primosec.c -o primosec
./primosec 1
nvim primosec.c
gcc primosec.c -o primosec
./primosec 1
nvim primosec.c
gcc primosec.c -o primosec
./primosec 1
nvim primosec.c
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
nvim primosec.c
nvim primosec.c
sudo pacman -S xorg-server-xephyr
Xephyr -br -ac -noreset -screen 1280x720 :1 &
DISPLAY=:1 qtile
Xephyr -br -ac -noreset -screen 1280x720 :1 &
Xephyr -br -ac -noreset -screen 1280x720 :1 &
Xephyr -br -ac -noreset -screen 1280x720 :1 & DISPLAY=:1 qtile
Xephyr -br -ac -noreset -screen 1280x720 :1 & DISPLAY=:1 qtile start
python .config/qtile/config.py 
python .config/qtile/config.py 
clear
python .config/qtile/config.py 
python .config/qtile/config.py 
python .config/qtile/config.py 
[200~Screen(
        bottom=bar.Bar([
            widget.GroupBox(),
            widget.WindowName()             ], 30),
        )
Screen(
        bottom=bar.Bar([
            widget.GroupBox(),
            widget.WindowName()
            ], 30),
        )
    
xrandr --listmonitors
python .config/qtile/config.py 
python .config/qtile/config.py 
python .config/qtile/config.py 
cd .config/qtile/
ls
nvim config.py 
cd Uni/PP/p3/
ls
cat tablaPrimos.h 
ls
cd Uni/PP/p3
ls
nvim primopar.c
ls
nvim primopar.c
cat .xprofile 
sudo echo 100 > /sys/class/backlight/amdgpu_bl0/brightness 
sudo su
cd .xprofile 
nvim .xprofile 
cd Uni/PP/p3
 export PATH="$PATH:/home/$USER/.openmpi/bin"
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
clear
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 5
clear
mpirun -n 5 primopar 2
mpirun -n 5 primopar 2
mpirun -n 4 primopar 2
mpicc primopar.c -o primopar
mpicc primopar.c -o primopar
clear
mpicc primopar.c -o primopar
mpicc primopar.c -o primopar
mpirun -n 4 primopar 2
mpicc primopar.c -o primopar
mpirun -n 4 primopar 2
clear
mpirun -n 4 primopar 2
mpirun -n 2 primopar
mpirun -n 2 primopar 1200
mpirun -n 2 primopar 200
mpirun -n 2 primopar 20
mpirun -n 2 primopar1 20
mpirun -n 2 primopar1 1
mpirun -n 2 primopar1 2
mpicc primopar1.c -o primopar1
mpirun -n 2 primopar1 2
mpirun -n 2 primopar 2
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
clear
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpirun -n 2 primopar 2
clear
clear
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
./primosec 2
mpirun -n 2 primopar 2
mpirun -n 2 primopar 1
mpirun -n 2 primopar 10
clear
mpirun -n 2 primopar 10
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
clear
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
clear
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
clear
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
clear
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
cfdisk 
sudo su
cd Uni/PP/p3
nvim primopar1
nvim primopar1.c
cd Uni/PP/p3/
ls
./primosec 1
./primosec 1
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
./primosec 1
./primosec 1
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
ls
rm primosec
gcc primosec.c -o primosec
ls
rm primosec
rm primosec
ls
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
./primosec 1
./primosec 3
gcc primosec.c -o primosec
./primosec 3
./primosec 1
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
./primosec 1
gcc primosec.c -o primosec
./primosec 1
./primosec 2
clear
mpicc primopar1.c -o primopar1
export PATH="$PATH:/home/$USER/.openmpi/bin"
mpicc pr
mpicc primopar1.c -o primopar1
ls
mpirun primopar1 -n 2 480
mpirun -n 2 primopar1 480
mpirun -n 2 primopar1 1
mpirun -n 2 primopar1 2
./primosec 2
mpirun -n 2 primopar1 1
mpicc primopar1.c -o primopar1
mpirun -n 2 primopar1 1
mpicc primopar1.c -o primopar1
mpirun -n 2 primopar1 1
mpirun -n 2 primopar1 2
mpicc primopar1.c -o primopar1
mpirun -n 2 primopar1 2
mpicc primopar1.c -o primopar1
mpirun -n 2 primopar1 2
mpicc primopar1.c -o primopar1
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
clear
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
clear
mpirun -n 2 primopar1 2
nvim primopar1.c
nvim primoparsec.c
ls
nvim primosec.c
nvim primosec.c
cat tablaPrimos.h 
mpirun -n 2 primopar 1
mpirun -n 2 primopar 2
clear
clear
mpirun -n 2 primopar 2
./primosec 2
mpirun -n 2 primopar 2
clear
./primosec 1
./primosec 2
mpirun -n 2 primopar 2
clear
cat primosec.c
cat primopar1.c
cat primosec.cclear
clear
cat primosec.c
./primosec 2
nvim primosec.c
gcc primosec.c -o primosec
./primosec 2
./primosec 9
./primosec 3
./primosec 2
clear
mpirun -n 2 primopar 2
nvim primopar1
nvim primopar1.c
mpirun -n 2 primopar 2
mpicc primopar.c -o primopar
mpirun -n 2 primopar 2
mpirun1 -n 2 primopar1 2
mpirun -n 2 primopar1 2
mpirun -n 2 primopar1 2
ls
asd
cd Uni/PP/p3/
ls
nvim primosec.c
nvim primopar1.c
nvim primopar.c
#1635615190
nvim .bashrc
sudo pacma -S lsd
sudo pacman -S lsd
lsd
ls
cd .config/
ls
lsd
lsd -a
clear
lsd -a
sudo pacman -S git curl
curl
curl --help
curl -d
clar
clear
xs
cd
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"
#1635615243
ls -a
#1635615251
nvim .bashrc
#1635616212
ñs
#1635616362
hostname
#1635616377
sudo pacman -S hostname
#1635616400
$HOSTNAME
#1635616407
echo $HOSTNAME
#1635616475
$HOSTNAME
#1635616529
ls -la
#1635616532
ls -a
#1635616541
ls -la
#1635616579
sudo pacman -S bat
#1635616600
cd .config/
#1635616612
cd qtile/
#1635616620
cat autostart.sh 
#1635616625
bat autostart.sh 
#1635616633
cd
#1635616641
nvim .bashrc
#1635616747
cat .bashrc
#1635616754
nvim .bashrc
#1635616805
cat .bashrc
#1635616816
nvim .bashrc
#1635616854
cat .bashrc
#1635617334
cd .config/
#1635617337
cd alacritty/
#1635617344
cd themes/
#1635617394
unzip alacritty-master.zip 
#1635617434
rm *.zip
#1635617437
cd alacritty-master/
#1635617442
cd ..
#1635617464
nvim alacritty.yml 
#1635617473
nvim config.yaml 
#1635617483
rm *png
#1635617493
cd pycritty/
#1635617496
cd ..
#1635617505
cd themes/
#1635617562
cd ..
#1635617650
cd pycritty/
#1635617653
cd ..
#1635617667
pycritty -t dracula
#1635617721
pycritty --font UbuntuMono --size 14 --opacity 0.95
#1635617733
pycritty --font UbuntuMono --size 10 --opacity 0.95
#1635617745
pycritty --font UbuntuMono --size 5 --opacity 0.95
#1635617751
pycritty --font UbuntuMono --size 6 --opacity 0.95
#1635617809
cd themes/
#1635617816
cd alacritty-master/
#1635617829
mv dracula.yml dracula2.yml 
#1635617836
mv dracula2.yml ../
#1635617839
cls
#1635617843
rm *
#1635617845
cd ..
#1635617867
rmdir alacritty-master/
#1635617871
cd alacritty-master/
#1635617875
ls -a
#1635617880
cd ..
#1635617891
pycritty -t dracula2
#1635617898
cd ..
#1635617920
pycritty --font UbuntuMonoBold --size 14 --opacity 0.95
#1635617935
pycritty --font UbuntuMono --size 10 --opacity 0.95
#1635617961
cd ..
#1635617964
cd alacritty/
#1635617969
cat fonts.yml 
#1635617990
nvim fonts.yml 
#1635618010
pycritty --font Hack
#1635618021
pycritty --font SpaceMono
#1635618029
pycritty --font Agave
#1635618037
pycritty --font Mononoki
#1635618059
pycritty --font UbuntuMono
#1635618062
pycritty --font Mononoki
#1635618069
pycritty --font UbuntuMono
#1635618078
pycritty --font Hurmit
#1635618081
pycritty --font UbuntuMono
#1635618095
thunar
#1635618115
cd
#1635618130
git status
#1635618246
echo "# dotfiles" >> README.md
#1635618252
git init
#1635618262
git add .
#1635618291
git status
#1635618310
echo "# dotfiles" >> .gitignore
#1635618321
nvim .gitignore 
#1635618444
git status
#1635618474
nvim .gitignore 
#1635618713
cat .xsession-errors
#1635618746
git status
#1635618758
cat .sdirs 
#1635618773
cd vi
#1635618778
ls -a
#1635618799
cat .bash_profile 
#1635618812
cat .vim/
#1635618819
cd .vim/
#1635618823
cd sessions/
#1635618827
cat default.vim 
#1635618844
cd
#1635618855
cat .dmrc 
#1635618859
wq
#1635618862
git status
#1635618867
cd .LfCache/
#1635618873
cat tempMru 
#1635618956
git commit -m "Arch Linux 1.0"
#1635618961
git add .
#1635618965
git commit -m "Arch Linux 1.0"
#1635618969
git status
#1635618976
git add .
#1635618979
git status
#1635618994
git add *
#1635618997
git status
#1635619010
cd
