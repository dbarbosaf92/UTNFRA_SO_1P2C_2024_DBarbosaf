echo
echo "Filtro Avanzado: "
echo "Mi ip publica es: $(curl -s ifconfig.me)" > RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
echo "Mi usuario es: $(whoami)" >> RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
echo "hash de usuario:" >> RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
sudo grep "$(whoami)" /etc/shadow | awk -F ':' '{print $2}' >> RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
echo "El URL de mi repositorio es: $(git remote get-url origin)" >>  RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt

echo
echo "Muestro el archivo:"
cat RTA_ARCHIVOS_Examen_20241005/Filtro_avanzado.txt
echo
