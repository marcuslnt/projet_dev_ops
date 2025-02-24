# Dockerfile
FROM alpine:latest

# Installer le serveur HTTP de BusyBox
RUN apk add --no-cache busybox-extras

# Crer le rpertoire pour le contenu web et copier le fichier HTML
WORKDIR /var/www/localhost/htdocs
COPY index.html .

# Exposer le port 80
EXPOSE 80

# Commande pour lancer le serveur HTTP
CMD ["httpd", "-f", "-v", "-p", "80", "-h", "/var/www/localhost/htdocs"]
