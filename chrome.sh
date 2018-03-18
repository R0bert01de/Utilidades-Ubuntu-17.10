#Quería tener la última versión estable de Google Chrome en Ubuntu 17.10 Artful Aardvark de 64 bits. Así que manos a la obra.

#ntramos a la consola y escribimos:

cd ~
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#Luego volvemos a escribir en la consola:

sudo apt update && sudo apt install libappindicator1
sudo apt clean && sudo apt autoclean
sudo dpkg -i google-chrome-stable_current_amd64.deb

#Obs:

#En caso que no puedas instalar porque te faltan dependencias, podes ejecutar en la consola:

udo apt --fix-broken install

#Y ahora ya podremos usar Google Chrome en nuestro Ubuntu 17.10 Artful Aardvark de 64 bits.

