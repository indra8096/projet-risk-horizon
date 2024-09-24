# Utiliser une image de base minimale de Linux
FROM ubuntu:latest

# Mettre à jour les paquets et installer les outils de sécurité
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y acl apache2 openssh-server sudo && \
    rm -rf /var/lib/apt/lists/*
    
# Configuration de la sécurité pour Apache
RUN echo "ServerTokens Prod" >> /etc/apache2/apache2.conf && \
    echo "ServerSignature Off" >> /etc/apache2/apache2.conf && \
    sed -i 's/ServerTokens OS/ServerTokens Prod/' /etc/apache2/conf-available/security.conf && \
    sed -i 's/ServerSignature On/ServerSignature Off/' /etc/apache2/conf-available/security.conf

# Configuration du service SSH
RUN mkdir /var/run/sshd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config && \
    sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config

# Création des utilisateurs
RUN useradd -m -s /bin/bash jordan && \
    echo 'jordan:JorDan8936!' | chpasswd && \
    useradd -m -s /bin/bash julien && \
    echo 'julien:Julien_8568!==' | chpasswd && \
    useradd -m -s /bin/bash Davinci && \
    echo 'Davinci:passilestla' | chpasswd && \
    useradd -m -s /bin/rbash victor && \
    echo 'victor:Cr0wdstrike4!' | chpasswd && \
    useradd -m -s /bin/bash admin && \
    echo 'admin:R3dsyst3m2024@!!!' | chpasswd

# Création des répertoires pour Victor
RUN mkdir -p /home/victor/Desktop \
             /home/victor/Documents \
             /home/victor/Downloads \
             /home/victor/Music \
             /home/victor/Games 

# Création du répertoire REDFLAG et copie du fichier flag
RUN mkdir -p /usr/share/REDFLAG
RUN echo "hello voici mon identifiant : JorDan8936!    Signé jordan" > /usr/share/REDFLAG/ShareMyPassword

# Créer le fichier red dans le dossier Music de Victor
RUN touch /home/victor/Music/red && \
    echo "RED{M€rc€d€s-Benz5_S€cur1ty_Cod€}" > /home/victor/Music/red

# Changer le propriétaire des fichiers et dossiers de Victor
RUN chown -R victor:victor /home/victor

# Création des répertoires pour Jordan
RUN mkdir -p /home/jordan/.script /home/jordan/.data /home/jordan/Desktop /home/jordan/Documents /home/jordan/Pictures /home/jordan/Music/ /home/jordan/secret /home/jordan/red

# Créer les répertoires dans le dossier /home/jordan/data
RUN mkdir -p /home/jordan/.data/Desktop \
             /home/jordan/.data/Document \
             /home/jordan/.data/Download \
             /home/jordan/.data/Music \
             /home/jordan/.data/Picture \
             /home/jordan/.data/Backup

# Créer le répertoire secret et le fichier flag
RUN mkdir -p /home/jordan/FileSystem && \
    chown -R jordan:jordan /home/jordan/FileSystem && \
    chmod 700 /home/jordan/FileSystem && \
    echo "regarde 'par ici'" > /home/jordan/FileSystem/ici && \
    echo "regarde 'pas_ici '" > /home/jordan/FileSystem/par_ici && \
    echo "regarde 'peut_etre_ici'" > /home/jordan/FileSystem/pas_ici && \
    echo "regarde 'ici'" > /home/jordan/FileSystem/peut_etre_ici
    

# Créer le répertoire secret et le fichier flag
RUN mkdir -p /home/jordan/secret && \
    echo "https://bit.ly/FlagInVideo" > /home/jordan/secret/flag && \
    chown -R jordan:jordan /home/jordan/secret && \
    chmod 700 /home/jordan/secret

# Créer le fichier email_archive.txt dans /var/mail avec la conversation
RUN echo "De: alice@example.com" > /var/mail/email_archive.txt && \
    echo "À: bob@example.com" >> /var/mail/email_archive.txt && \
    echo "Objet: Conversation confidentielle" >> /var/mail/email_archive.txt && \
    echo "" >> /var/mail/email_archive.txt && \
    echo "Bonjour Bob," >> /var/mail/email_archive.txt && \
    echo "J'ai un message important à vous transmettre." >> /var/mail/email_archive.txt && \
    echo "" >> /var/mail/email_archive.txt && \
    echo "Cordialement," >> /var/mail/email_archive.txt && \
    echo "Alice" >> /var/mail/email_archive.txt && \
    echo "" >> /var/mail/email_archive.txt && \
    echo "PS: RED{WebSec_VarMaster_2024}" >> /var/mail/email_archive.txt && \
    chown Davinci:mail /var/mail/email_archive.txt && \
    chmod 600 /var/mail/email_archive.txt

# test

# Créer un fichier dans /etc
RUN touch /etc/backup_passwd

# Définir le propriétaire du fichier comme Julien
RUN chown julien:julien /etc/backup_passwd

# Restreindre l'accès uniquement à Julien
RUN chmod 600 /etc/backup_passwd

# Copier le contenu de /etc/passwd dans le nouveau fichier
RUN cp /etc/passwd /etc/backup_passwd

# Modifier le mot de passe de l'utilisateur "Davinci" pour "passilestla"
RUN sed -i 's/^Davinci:[^:]*:/Davinci:passilestla:/' /etc/backup_passwd


# Modifier le propriétaire du fichier email_archive.txt et ajuster les permissions
RUN chown jordan:jordan /var/mail/email_archive.txt && \
    chmod 640 /var/mail/email_archive.txt

# Copier les scripts de fausses installations pour Jordan
COPY script_autoflag.sh /home/jordan/.script/
COPY script_serveur.sh /home/jordan/.script/
COPY script_install.sh /home/jordan/.script/
COPY flag2.txt.enc /home/jordan/.script/

# Ajouter Julien au groupe de Jordan
RUN usermod -a -G jordan julien

# Modifier les permissions du répertoire principal de Jordan
RUN chmod 750 /home/jordan

# Créer le fichier backup_script.sh dans le dossier Backup
COPY backup_script.sh /home/jordan/data/Backup/
RUN chown -R julien:julien /home/jordan/data/Backup && \
    chmod 700 /home/jordan/data/Backup/backup_script.sh

# Ajouter les permissions d'accès au dossier Backup pour Jordan
RUN chown -R jordan:jordan /home/jordan/data/Backup && \
    chmod -R 700 /home/jordan/data/Backup

# Changer le propriétaire des scripts pour julien
# RUN chown -R julien:julien /home/jordan/.script

# Attribution des ACL pour donner à l'utilisateur julien le droit de lire
RUN setfacl -R -m u:julien:r /home/jordan/.script/*

# Donner les permissions d'exécution aux scripts pour julien
RUN chmod +x /home/jordan/.script/*

# Ajouter les permissions d'exécution
#RUN echo 'jordan ALL=(ALL) NOPASSWD: /bin/bash' >> /etc/sudoers && \
#    echo 'julien ALL=(ALL) NOPASSWD: /bin/bash' >> /etc/sudoers && \
#    echo 'julien ALL=(ALL) /home/jordan/.script/*' >> /etc/sudoers && \
RUN  echo 'Davinci ALL=(ALL:admin) /usr/bin/apt-get' >> /etc/sudoers

# Créer les répertoires dans le répertoire /root
RUN mkdir -p /admin/Desktop \
             /admin/Documents \
             /admin/Downloads \
             /admin/Pictures \
             /admin/Music

# Ajouter le fichier flag.txt dans le répertoire /root/Downloads
RUN echo "RED{N0t_S0_S€cur€_But_Funny}" > /admin/Downloads/flag5.txt

# Supprimer l'exécution des commandes de recherche pour les autres utilisateurs
RUN chmod o-x /usr/bin/find /usr/bin/grep /usr/bin/which /usr/bin/whereis

# Si nécessaire, supprimer également l'exécution pour les versions alternatives de ces commandes
RUN chmod o-x /bin/find /bin/grep /bin/which /bin/whereis

# Redémarrer le service SSH
RUN service ssh restart

# Supprimer l'historique des commandes du shell
RUN rm -f /root/.bash_history && \
    rm -f /home/jordan/.bash_history && \
    rm -f /home/admin/.bash_history && \
    rm -f /home/julien/.bash_history && \
    rm -f /home/victor/.bash_history && \
    rm -f /home/Davinci/.bash_history

# Créer des répertoires dans /home/Davinci
RUN mkdir -p /home/Davinci/Bonjour \
             /home/Davinci/Maison \
             /home/Davinci/Amour \
             /home/Davinci/Temps \
             /home/Davinci/Travail \
             /home/Davinci/Manger \
             /home/Davinci/Soleil \
             /home/Davinci/Faire \
             /home/Davinci/Savoir \
             /home/Davinci/Aller

# Créer des sous-dossiers avec des noms de mots spécifiques dans les dossiers de Davinci
RUN mkdir -p /home/Davinci/Bonjour/Algorithme \
             /home/Davinci/Bonjour/Programmation \
             /home/Davinci/Maison/Réseau \
             /home/Davinci/Maison/Navigateur \
             /home/Davinci/Amour/Pare-feu \
             /home/Davinci/Amour/Cryptographie \
             /home/Davinci/Temps/Système_d_exploitation \
             /home/Davinci/Temps/Virus \
             /home/Davinci/Travail/Logiciel \
             /home/Davinci/Travail/Base_de_données \
             /home/Davinci/Manger/Cloud_computing \
             /home/Davinci/Manger/Intelligence_artificielle \
             /home/Davinci/Soleil/Réalité_virtuelle \
             /home/Davinci/Soleil/Cyber-sécurité \
             /home/Davinci/Faire/Pare-feu
# Supprimer l'historique de chaque utilisateur 
RUN ln -s /dev/null /home/jordan/.bash_history
RUN ln -s /dev/null /home/julien/.bash_history
RUN ln -s /dev/null /home/Davinci/.bash_history
RUN ln -s /dev/null /home/victor/.bash_history
RUN ln -s /dev/null /home/admin/.bash_history

# Changer le mot de passe de l'utilisateur Davinci
RUN echo 'Davinci:passilestla' | chpasswd

# Copier le contenu du site web dans le répertoire d'Apache
COPY ./site_web /var/www/html/

# Exposer le port 22 pour SSH
EXPOSE 22
EXPOSE 80

# Copier le script de démarrage
COPY start_services.sh /start_services.sh

# Commande pour démarrer le service SSH et Apache
CMD ["/bin/bash", "-c", "service apache2 start && /usr/sbin/sshd -D"]

