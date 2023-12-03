# Bienvenue dans la Fraternité Python de Talosi

Ô noble voyageur du code, tu as franchi les portes de la **Talosi Python Brotherhood**. Tes pas t'ont mené sagement ici, où l'aventure et la connaissance attendent.

## Préparation de ton Voyage

Avant de t'aventurer plus loin, assure-toi que le gardien de nos trésors, le grand **Docker-Compose**, a réveillé le dragon endormi de la base de données. Utilise ce puissant sort :

```bash
docker-compose up -d database
```

##Invocation de ton Application

Pour que ton application prenne vie, un rituel doit être accompli dans les antiques écrits de Docker Compose. Sous le signe de hackaton, inscris :
```yaml
hackaton:
    build: python
```

Puis, avec la formule des anciens bâtisseurs, façonne ton artefact :
```bash
docker-compose build hackaton
```
Et, pour l'éveiller du sommeil éternel :
```bash
docker-compose up hackaton
```

Si ta magie est pure et tes mots justes, un "Hello" majestueux se dévoilera dans le miroir de ta console.

## Tests et Magie Locale

Les grands mages du CICD se serviront de ces incantations pour juger la valeur de ton code.

En ton sanctuaire personnel, tu peux également lancer des sorts locaux. Depuis le temple ./python, exécute :
```bash
python ./src/app.py
```
Pour mettre à l'épreuve ta création, utilise le sortilège :
```bash
python -m unittest
```

N'oublie pas de t'armer des essences nécessaires, inscrites dans le parchemin sacré requirements.txt et les valeurs d'hôte de la grande bibliothèque postgres.

## Bonne Fortune sur ton Chemin

Que la sagesse de Python t'accompagne dans chaque défi. Que ta quête soit fructueuse, ô brave aventurier de Talosi!