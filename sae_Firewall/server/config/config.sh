cp /home/vagrant/nginx.conf /etc/nginx
echo "Le fichier nginx.conf par défaut a été remplacé par le nouveau"

systemctl restart nginx
