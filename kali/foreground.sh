echo "Installing scenario..."
#while [ ! -f /tmp/finished ]; do sleep 1; done
docker pull kalilinux/kali-rolling
docker run --tty --interactive kalilinux/kali-rolling

apt update
apt install theharvester -y