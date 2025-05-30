# 🚀 Script d'installation automatique de la suite LAMP sur Kali Linux

Ce script Bash permet d’installer automatiquement la suite **LAMP** (Linux, Apache, MariaDB, PHP) ainsi que **phpMyAdmin** sur un système **Kali Linux**.  
Il est idéal pour les développeurs qui changent souvent de machine et souhaitent gagner du temps.

---

## ✅ Fonctionnalités

- Installation et activation d’**Apache2**
- Installation et sécurisation de **MariaDB**
- Installation de **PHP** avec les modules nécessaires
- Installation de **phpMyAdmin**
- Création automatique du fichier `info.php` pour tester PHP
- Lien symbolique vers l’interface phpMyAdmin
- Redémarrage automatique du serveur web

---

## ⚙️ Prérequis

- Un système **Kali Linux** avec `apt` fonctionnel
- Accès **sudo**
- Connexion Internet

---

## 📦 Installation

1. Clone ou copie le script :
   ```bash
   git clone https://github.com/ton-utilisateur/lamp-install-kali.git
   cd lamp-install-kali
