# UpBoot
# Script de configuration de nom de machine et mise à jour

Ce script Bash est conçu pour faciliter la configuration du nom de la machine, effectuer les mises à jour du système et redémarrer la machine. Assurez-vous d'exécuter ce script avec des privilèges d'administration.

## Utilisation

1. Téléchargez le script sur votre machine.
2. Ouvrez un terminal et accédez au répertoire où se trouve le script.
3. Donnez les permissions d'exécution au script : `chmod +x upboot.sh`
4. Exécutez le script : `./upboot.sh`
5. Suivez les instructions du script pour saisir le nouveau nom de la machine.
6. Le script mettra à jour le fichier `/etc/hosts`, configurera le nouveau nom de machine avec `hostnamectl`, régénérera les identifiants de la machine pour DBus, demandera le changement de mot de passe, et effectuera une mise à jour complète du système.
7. Une fois les étapes ci-dessus terminées, la machine redémarrera automatiquement.

## Avertissement

- Ce script effectuera des opérations importantes sur votre système, assurez-vous de comprendre ce qu'il fait avant de l'exécuter.
- Assurez-vous d'avoir une sauvegarde récente de vos données importantes avant d'exécuter ce script.
- L'exécution de ce script nécessite des privilèges d'administration.

## Notes

- Le script est conçu pour fonctionner sur des distributions Linux basées sur Debian/Ubuntu, mais il peut nécessiter des ajustements pour fonctionner sur d'autres distributions.
- Si vous n'êtes pas à l'aise avec l'exécution de ce script ou si vous rencontrez des problèmes, il est recommandé de rechercher davantage d'informations sur les commandes utilisées et de demander de l'aide à des utilisateurs expérimentés.
