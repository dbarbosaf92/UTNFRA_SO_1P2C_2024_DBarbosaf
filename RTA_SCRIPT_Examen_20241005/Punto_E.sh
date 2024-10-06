echo
echo 'filtro basico'
grep MemTotal /proc/meminfo > RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
echo 'informacion chasis' >> RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
sudo dmidecode -t chassis | grep Manufacturer >> RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt

echo
echo 'Muestra archivo: '
cat RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
echo
