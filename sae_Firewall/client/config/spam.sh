url="http://10.10.20.4/"
requests=20000
concu=1000

echo "Lancement du test de charge avec ab pour $requests requêtes avec $concu connexions simultanées..."

# Exécute le test de charge avec ab
ab -c $concu -n $requests "$url"

echo "Test de charge terminé."


# Ce script exécute des spams en utilisant ab pour envoyer 20 000 requêtes vers l'URL http://10.10.20.4/ avec jusqu'à 1000 connexions simultanées
