                                      Projet : Création d'une Pipeline CI/CD avec GitLab

                                                    Objectif
L'objectif de ce projet est de créer une pipeline d'intégration continue (CI) et de déploiement continu (CD) pour le déploiement d'une application web Flask sur un serveur accessible via SSH tout en mettant en œuvre les étapes nécessaires pour garantir la qualité et la sécurité du code tout en automatisant le processus de déploiement.

                                                     Arborescence 
                                                     Projetperso AHS               # Dossier racine du projet (non versionner)
                                                     +--webapp                    # (Branch master) contient l'ensemble des codes relatifs a l'appication
                                                     |  +--_1_app.py               
                                                     |  +--_2 requirements.txt     
                                                     |  +--_2 test.py                              
                                                     |  +--_3 wsgi.py                             
                                                     +--.dockerignore              # IGNORE
                                                     +--.gitlab-ci.yml              # Contient Jobs de la pipeline 
                                                     +--Dockerfile                # contient les specifications du conteneurs 


