ssh-keygen
ll
cd ssh
mkdir repogit
ll
cd repogit
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone git@github.com:dbarbosaf92/UTNFRA_SO_1P2C_2024_DBarbosaf.git
cd ..
cd .ssh/
ll
cat id_rsa.pub
cd ..
cd repogit/
git clone git@github.com:dbarbosaf92/UTNFRA_SO_1P2C_2024_DBarbosaf.git
ll
cd ..
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
cd repogit/
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
~/.bashrc && history -a
cd ..
ll
cd repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/
l
ll
cd RTA_SCRIPT_Examen_20241005/
ll
sudo chmod 755
cd ..
chmod 755
chmod 755 RTA_SCRIPT_Examen_20241005/*
ll
cd RTA_SCRIPT_Examen_20241005/
ll
vim Punto_A.sh 
cat Punto_A.sh
vim Punto_B.sh
cd ..
ll
cd UTNFRA_SO_1P2C_2024_DBarbosaf/
ll
git add .
git commit -m "agregando scrpts"
git push
cd ..
sudo poweroff
ll
vim repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/RTA_SCRIPT_Examen_20241005/Punto_B.sh
cat repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/RTA_SCRIPT_Examen_20241005/Punto_B.sh
git add .
cd repogit/
ll
cd UTNFRA_SO_1P2C_2024_DBarbosaf/
git add .
git commit "fixing punto B"
git commit -m "fixing punto B"
git push
sudo poweroff
vim repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/RTA_SCRIPT_Examen_20241005/Punto_A.sh
cd repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/
git add .
sudo poweroff
ll
cd repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/
ll
cd RTA_SCRIPT_Examen_20241005/
ll
vim Punto_D.sh
cat Punto_D.sh
cd ..
ll
git add .
git commit -m 'agregando script del punto D'
git push
ll
cd RTA_SCRIPT_Examen_20241005/
vim Punto_A.sh
vim Punto_D.sh
cd ..
git add .
git commit -m 'fixing destinos de carpetas en los scripts A D'
git push
cd ..
grep MemTotal /proc/meminfo
cd repogit/
cd UTNFRA_SO_1P2C_2024_DBarbosaf/
ll
cd RTA_SCRIPT_Examen_20241005/
vim Punto_E.sh
cat Punto_E.sh
git add .
git commit -m 'agregando punto E'
git push
cd ..
ll
grep MemTotal /proc/meminfo > RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
ll
cat RTA_ARCHIVOS_Examen_20241005/
ls -la RTA_ARCHIVOS_Examen_20241005/
cat RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
echo 'informacion chasis'
sudo dmidecode -t chassis | grep Manufacturer >> RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
echo 'informacion chasis' >> RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
cd RTA_SCRIPT_Examen_20241005/
vim Punto_E.sh
cat Punto_E.sh
git add .
git commit -m 'fixing punto E'
git push
cd ..
sudo echo 'mi ip publica es:  $(curl -s ifconfig.me)' > RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
cat RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
ll
cd RTA_ARCHIVOS_Examen_20241005/
ll
rm -rf Filtro_Avanzado.txt
cd ..
echo "Mi ip publica es: $(curl -s ifconfig.me)" > RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
ls -la
cat RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
echo "Mi usuario es: $(whoami)" >> RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
cat RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
echo "hash de usuario:" >> RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
sudo grep "$(whoami)" /etc/shadow | awk -F ':' '{print $2}' >> RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
cat RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
sudo echo "El URL de mi repositorio es: $(git remote get-url origin)" >>  RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
cat RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
ll
vim RTA_SCRIPT_Examen_20241005/Punto_F.sh
cat RTA_SCRIPT_Examen_20241005/Punto_F.sh
cat RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
cd ..
cd repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/
ll
git add .
git commit -m "subiendo punto F"
git push
rm -rf RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
rm -rf RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
ll
ls -la RTA_ARCHIVOS_Examen_20241005/
git add .
git commit -m "remove archivos txt"
git push
cd $HOME
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
sudo useradd -m -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gProfesores -p "$HASH" p1c2_2024_P1
cd repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/
ll
cd RTA_SCRIPT_Examen_20241005/
ll
vim Punto_C.sh 
cat Punto_C.sh 
vim Punto_A.sh 
cd ..
git add .
git commit "agregando punto C"
git push
git commit -m "agregando punto C"
git psuh
git push
ll
vim README.md 
cat README.md 
cd ..
history -a
$HOME/.bash_history > repogit/UTNFRA_SO_1P2C_2024_DBarbosaf/
