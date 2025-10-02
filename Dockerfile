# Image officielle Python
FROM python:3.11-slim

# Variables d'environnement
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Création du dossier de travail
WORKDIR /app

# Copier requirements et installer
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copier le code source
COPY . /app/

# Exposer le port
EXPOSE 8000

# Commande pour lancer le serveur ASGI (Channels)
CMD ["daphne", "-b", "0.0.0.0", "-p", "8000", "myproject.asgi:application"]
