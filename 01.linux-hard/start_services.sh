#!/bin/bash

# Démarrer SSH
service ssh start

# Démarrer Apache
apachectl -D FOREGROUND

