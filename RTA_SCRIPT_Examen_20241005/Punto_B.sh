!#/bin/bash

DISCO="/dev/sdc"
echo "Creo las particiones"
sudo fdisk $DISCO << EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF

echo
echo "mostrar particionamiento"
sudo fdisk $DISCO -l

echo
echo "formateo las particiones"
for i in {1..11}
do
        sudo mkfs.ext4 ${DISCO}$i
done

echo
echo "monto particiones"
sudo echo "${DISCO}1  $HOME/Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}2  $HOME/Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}3  $HOME/Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}5  $HOME/Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}6  $HOME/Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}7  $HOME/Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}8  $HOME/Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}9  $HOME/Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}10  $HOME/Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo echo "${DISCO}11  $HOME/Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo mount -a

echo
echo "muestro particiones montadas"
sudo df -h


