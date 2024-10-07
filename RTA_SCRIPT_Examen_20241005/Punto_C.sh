echo
echo "Guardo la pwd en una variable"
HASH=$(sudo grep "$(whoami)" /etc/shadow | awk -F ':' '{print $2}')
echo
echo "creo los grupos"
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

echo
echo "Creo los usuarios "
sudo useradd -m -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores -p "$HASH" p1c2_2024_P1
echo
echo "Muestro las pswd"
sudo grep p1 /etc/shadow
echo
echo "aplico los permisos y dueños: "
sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_3
sudo chmod -R 775 /Examenes-UTN/profesores
echo
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
echo
echo "Muestro permisos"
sudo ls -ld /Examenes-UTN
sudo ls -l /Examenes-UTN
echo

echo "creo archivos validar para cada usuario"
su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1
echo
sudo ls -l /Examenes-UTN/alumno_1
sudo ls -l /Examenes-UTN/alumno_2
sudo ls -l /Examenes-UTN/alumno_3
sudo ls -l /Examenes-UTN/profesores
echo
sudo cat /Examenes-UTN/alumno_1/validar.txt
sudo cat /Examenes-UTN/alumno_2/validar.txt
sudo cat /Examenes-UTN/alumno_3/validar.txt
sudo cat /Examenes-UTN/profesores/validar.txt
echo

