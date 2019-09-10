echo "Fix time zone problem"
sudo timedatectl set-local-rtc true
sudo timedatectl set-ntp true