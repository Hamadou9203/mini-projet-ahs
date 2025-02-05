                                      # Projet : Création d'une Pipeline CI/CD avec GitLab

                                                    ## Objectif
L'objectif de ce projet est de créer une pipeline d'intégration continue (CI) et de déploiement continu (CD) pour le déploiement d'une application web Flask sur un serveur accessible via SSH tout en mettant en œuvre les étapes nécessaires pour garantir la qualité et la sécurité du code tout en automatisant le processus de déploiement.
                                                      
						 ## Worflow 
      Sur la branche principale (main), toutes les étapes doivent être exécutées, sauf le déploiement en review.
    Sur les autres branches, seules les étapes suivantes doivent être exécutées :
        Linter
        Compilation
        Scan de Sécurité (Image Docker)
        Tests Automatisés
        Vérification de la Qualité de Code
    Lors d'une Pull Request (PR), en plus des étapes précédentes, les étapes de packaging et de déploiement en review doivent être exécutées.




                                                     ## Arborescence 
                                                     Projetperso AHS               # Dossier racine du projet (non versionner)
                                                     +--webapp                    # (Branch master) contient l'ensemble des codes relatifs a l'appication
                                                     |  +--_1_app.py               
                                                     |  +--_2 requirements.txt     
                                                     |  +--_2 test.py                              
                                                     |  +--_3 wsgi.py                             
                                                     +--.dockerignore              # IGNORE
                                                     +--.gitlab-ci.yml              # Contient Jobs de la pipeline 
                                                     +--Dockerfile                # contient les specifications du conteneur

	   
les images ci-dessous montrent les pipelines 
![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/%20pipeline1.png)

![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/pipeline2.png)

![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/pipeline3.png)

les tests d'acceptances des environnements sont montrés sur les captures suivants 
![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/test1.png)

![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/env1.png)

![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/sonar.png)             
la figure ci-dessus montre l'analyse de la qualité d'image avec sonarcloud

les tests de validation en production et en staging 

![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/test-prod.png)     

![Cover](https://github.com/Hamadou9203/mini-projet-ahs/blob/main/img/test-staging.png)  
												
						                          
