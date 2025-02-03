Projet : Création d'une Pipeline CI/CD avec GitLab

                                                    Objectif
L'objectif de ce projet est de créer une pipeline d'intégration continue (CI) et de déploiement continu (CD) pour le déploiement d'une application web Flask sur un serveur accessible via SSH. L'apprenant devra mettre en œuvre les étapes nécessaires pour garantir la qualité et la sécurité du code tout en automatisant le processus de déploiement.

        Arborescence 

Projetperso AHS              # Dossier racine du projet (non versionner)
|
+--webapp                    # (Branch master) contient l'ensemble des codes relatifs a l'appication
|  |
|  +--_1_app.py               # Contiens tous les plans et toutes les modélisations du projet
|  |
|  +--_2 requirements.txt     # Contiens toute la partie programmation du projet
|  |
|  +--_2 test.py             # Contient toutes les parties des circuits imprimés 
|  |                   
|  |
|  +--_3 wsgi.py           # Contiens toutes les documentations techniques des différents composants
|  |                   
|
+--.dockerignore              # Dossier racine de la documentation qui doit être publiée
|  
|
|
+--.gitlab-ci.yml              # Contient Jpobs de la pipeline
|  
|
+--Dockerfile                # contient les specifications du conteneurs
|  