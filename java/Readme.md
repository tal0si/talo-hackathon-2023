# Bienvenue dans la Fraternité Java de Talosi

Ô noble voyageur du code, tu as franchi les portes de la **Talosi Java Brotherhood**. Tes pas t'ont mené sagement ici, où l'aventure et la connaissance attendent.

## Préparation de ton Voyage

Avant de t'aventurer plus loin, assure-toi que le gardien de nos trésors, le grand **Docker-Compose**, a réveillé le dragon endormi de la base de données. Utilise ce puissant sort :

```bash
docker-compose up -d database
```

## Invocation de ton Application

Pour que ton application prenne vie, un rituel doit être accompli dans les antiques écrits de Docker Compose. Sous le signe de hackaton, inscris :
```yaml
hackaton:
    build: java
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

Tu pourras alors modifier la classe com.talosi.hackaton.talosihackaton.TalosiHackatonEntrypoint en fonction de tes aspirations.

## Tests et Magie Locale

Les grands mages du CICD se serviront de ces incantations pour juger la valeur de ton code.

En ton sanctuaire personnel, tu peux également lancer des sorts locaux. Depuis le temple ./Java, exécute :
```bash
# decommenter la ligne 5 du fichier application.yml pour modifier la connexion à la base de donnée
./mvnw spring-boot:run
```
Pour mettre à l'épreuve ta création, utilise le sortilège :
```bash
./mvnw clean test
```

N'oublie pas de t'armer des essences nécessaires, inscrites dans le parchemin sacré requirements.txt et les valeurs d'hôte de la grande bibliothèque postgres.

## Bonne Fortune sur ton Chemin

Que la sagesse de Java t'accompagne dans chaque défi. Que ta quête soit fructueuse, ô brave aventurier de Talosi!



de quoi faire un merge