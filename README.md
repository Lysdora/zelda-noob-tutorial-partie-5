# 🎮 Tutoriel Godot 4 - Créer un RPG Zelda-like (Partie 6)

> **Un tutoriel débutant pour apprendre à créer ton premier jeu d'aventure en pixel art avec Godot ! 🌟**

![Godot](https://img.shields.io/badge/Godot-4.4%2B-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white)
![GDScript](https://img.shields.io/badge/GDScript-100%25-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-En%20cours-success?style=for-the-badge)

---

## 👋 Bienvenue dans l'aventure !

Hey toi ! Oui, toi qui rêves de créer ton propre jeu d'aventure façon Zelda ! 🗡️

Ce repo contient la **Partie 6** d'un tutoriel complet pour apprendre Godot en créant un vrai petit RPG en pixel art. Pas de blabla compliqué, juste du concret, du fun, et plein d'apprentissage !

### 🎯 C'est pour qui ?

- **Pour les débutants** qui veulent apprendre Godot en douceur
- **Pour ceux qui aiment le pixel art** et les jeux rétro style SNES
- **Pour toi** si tu veux comprendre comment fonctionne un vrai jeu (et pas juste copier du code !)

---

## ✨ Ce que tu vas trouver dans ce projet

### 🏃‍♂️ **Système de mouvement complet**
- Déplacement fluide dans les 4 directions (haut, bas, gauche, droite)
- Animations qui changent selon la direction
- Le perso passe en mode "idle" quand tu t'arrêtes (stylé !)
- Contrôle au clavier (ZQSD ou flèches)

### 📹 **Caméra intelligente**
- La caméra suit ton personnage partout
- Système de limites pour pas sortir de la map
- Fonction `player_clamp()` pour garder le joueur à l'intérieur des frontières

### 🗣️ **PNJ interactif (Bilbo)**
- Un personnage statique que tu peux approcher
- Zone de détection qui s'active quand tu es proche
- Icône d'interaction qui apparaît (genre "Appuie sur E pour parler")
- Système de détection avec les signaux Godot

### 🐔 **Système de collecte (Le Poulet magique !)**
- Ramasse des objets en t'approchant
- Animation trop stylée avec un Tween :
  - Le poulet saute ⬆️
  - Tourne sur lui-même 🔄
  - Retombe ⬇️
  - Disparaît en fondu ✨
- Émet un signal quand il est collecté (pour les quêtes plus tard)
- Impossible de le ramasser deux fois (pas de triche !)

### 🗺️ **Une belle map forestière**
- Système de TileMap avec des tiles de sol
- Décors : clôtures, maisons
- Plusieurs couches pour la profondeur
- Prête à être explorée !

---

## 🚀 Comment lancer le projet ?

### Prérequis
- **Godot 4.4 ou supérieur** ([Télécharger ici](https://godotengine.org/download))
- Un peu de motivation ! 💪



## 📂 Structure du projet

```
📦 zelda-noob-tutorial-partie-6/
├── 📁 scenes/
│   ├── foret.tscn        # La scène principale (ta map)
│   ├── player.tscn       # Ton héros
│   ├── bilbo.tscn        # Le PNJ sympa
│   └── poulet.tscn       # Le poulet à attraper
├── 📁 scripts/
│   ├── player.gd         # Logique du joueur
│   ├── bilbo.gd          # Logique du PNJ
│   └── poulet.gd         # Logique du collectible
└── 📁 assets/
    ├── Char Idle.png     # Sprites idle du perso
    ├── Char Walk.png     # Sprites marche du perso
    ├── Tileset.png       # Tiles de la map
    ├── Clotures.png      # Sprites des clôtures
    └── Houses.png        # Sprites des maisons
```

---

## 🎓 Ce que tu vas apprendre

En suivant ce tutoriel, tu vas maîtriser :

### **Les bases de Godot**
- 🎭 Les nodes et les scènes
- 🎯 CharacterBody2D vs StaticBody2D
- 📡 Les signaux et la communication entre nodes
- 🎬 Les AnimatedSprite2D

### **Le gameplay**
- 🕹️ Gérer les inputs du joueur
- 🏃 Créer un système de mouvement fluide
- 🎨 Animer ton personnage selon ses actions
- 📹 Suivre le joueur avec une caméra
- 🗺️ Limiter les déplacements à la map

### **Les interactions**
- 👥 Détecter quand le joueur s'approche d'un PNJ
- 🔍 Les zones d'interaction (Area2D)
- 📦 Collecter des objets
- ✨ Créer des animations avec les Tweens

### **Les bonnes pratiques**
- 🧹 Code propre avec des commentaires (en français !)
- 📏 Organisation des fichiers
- 🎯 Utilisation de `@onready` et `@export`
- 🔒 Éviter les bugs (comme ramasser 2 fois le même objet)

---

## 🎮 Contrôles

| Action | Touches |
|--------|---------|
| Se déplacer vers le haut | ⬆️ ou Z |
| Se déplacer vers le bas | ⬇️ ou S |
| Se déplacer à gauche | ⬅️ ou Q |
| Se déplacer à droite | ➡️ ou D |
| Interagir (bientôt !) | E |

---

## 🔮 Ce qui arrive bientôt (Roadmap)

Cette partie 6 est déjà bien chargée, mais voilà ce qui pourrait arriver dans les prochaines parties :

- 💬 **Système de dialogues** pour parler avec Bilbo
- ⚔️ **Combat et ennemis** qui bougent
- 🎒 **Inventaire** pour stocker tes poulets (et autres trucs)
- 🎵 **Musique et sons** pour l'ambiance
- 🏠 **Plusieurs maps** connectées entre elles
- 📜 **Système de quêtes** ("Ramène-moi 10 poulets !")
- 🌙 **Cycle jour/nuit** pour l'ambiance

---

## 💡 Astuces pour les débutants

### 🐛 "Mon perso ne bouge pas !"
- Vérifie que tu as bien configuré les Input Map dans les paramètres du projet
- Va dans **Projet > Paramètres du projet > Input Map**
- Ajoute les actions : `move_up`, `move_down`, `move_left`, `move_right`

### 🎭 "Les animations ne marchent pas !"
- Assure-toi que ton AnimatedSprite2D a bien les animations nommées :
  - `walk_up`, `walk_down`, `walk_left`, `walk_right`
  - `idle_up`, `idle_down`, `idle_left`, `idle_right`

### 📹 "La caméra ne suit pas le perso !"
- Vérifie que la Camera2D est bien enfant du node Player
- Active "Enabled" sur la Camera2D

### 🐔 "Le poulet se ramasse plusieurs fois !"
- Normalement c'est corrigé avec la variable `peut_etre_ramasse` !
- Si ça bug encore, vérifie que le poulet disparaît bien avec `queue_free()`

---

## 🤝 Contributions & Suggestions

Ce tutoriel est fait pour **apprendre ensemble** ! 💪

Si tu trouves un bug, une amélioration possible, ou si tu as des questions :
- Ouvre une **Issue** sur GitHub
- Propose une **Pull Request** si tu veux améliorer quelque chose
- Partage tes créations basées sur ce tuto !

---

## 🙏 Crédits

### Assets utilisés
- **Sprites du personnage** : [Bruxo Pixels - Pixel Journey Tileset](https://bruxopixels.itch.io/pixel-journey-tileset)
- **Tileset (map)** : [Bruxo Pixels - Pixel Journey Tileset](https://bruxopixels.itch.io/pixel-journey-tileset)
- **PNJ Bilbo** : [Kathy Chow - 16x16 Tiny Garden Free Pack](https://kathychow.itch.io/16x16-tiny-garden-free-pack)
- **Poulet** : [Cup Nooble - Sprout Lands Asset Pack](https://cupnooble.itch.io/sprout-lands-asset-pack)

### Inspirations
- La série The Legend of Zelda (évidemment ! 🗡️)
- La communauté Godot qui est géniale
- Tous les créateurs de tutoriels qui partagent leur savoir

---

## 📜 Licence

Ce projet est sous licence [MIT](LICENSE) - fais-en ce que tu veux, apprends, modifie, partage ! 🎉

L'important c'est d'apprendre et de s'amuser à créer des jeux !

---

## 💬 Un dernier mot

Créer un jeu, c'est un voyage incroyable ! 🚀

Ne te décourage pas si tu bloques, c'est normal ! Chaque bug que tu résous te rend plus fort. Chaque petite fonctionnalité que tu ajoutes est une victoire.

**Continue à coder, continue à créer, et surtout... amuse-toi !** 🎮✨

---

<div align="center">

**Fait avec ❤️ et beaucoup de café ☕ par [Lysdora](https://github.com/Lysdora)**

*Si ce tuto t'aide, n'hésite pas à mettre une ⭐ !*

</div>
