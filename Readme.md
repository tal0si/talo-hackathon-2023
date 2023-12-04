# La grande Bibliothèque Talosienne.
Après que les festivités de votre retour triomphal de la crypte se sont apaisées, que les échos de la cervoise, des festins et de la tarte à l'ananas se sont estompés, l'heure est venue de reprendre votre noble quête au sein du royaume de Talosi. Votre exploration dans la crypte a révélé des informations cruciales, clés pour restaurer l'harmonie dans le royaume et répondre aux questions qui hantent ses habitants.

Les Trois Grands Sages des illustres Fraternités de Talosi ont pris une décision sans précédent : vous confier un projet, disponible à l'URL que vous avez dévoilée, développé dans trois technologies distinctes. Ces sages, unis pour la première fois depuis l'an de grâce 2021, ont chacun préparé un chemin pour vous guider.

Nicolaï Javatovitch, maître de la Fraternité Java, a forgé un projet pour ceux qui chérissent la rigueur du typage fort. Sebastian Nodesborough, de la Fraternité Node.js, a pensé à ceux qui se plaisent dans l'art des promesses asynchrones. Enfin, Nohay Serpython, de la Fraternité Python, vous propose un environnement flexible pour ceux qui cherchent la simplicité et la polyvalence.

Vous devez maintenant choisir votre allégeance et écrire les algorithmes qui révéleront les réponses tant recherchées. Nous vous invitons à forker ce projet et à soumettre votre code via une merge request. Votre nom sera alors gravé dans les annales du royaume.

N'hésitez pas à consulter ces sages durant votre périple ; ils sont là pour éclairer votre chemin et apprécient les visites. Chaque question résolue vous rapportera des points clés, qui t'ouvriront les portes de l'initiation des talosiens.

Ah, et une dernière chose : les sages ont préparé des tests unitaires. Ils seraient honorés que vous poursuiviez leur œuvre, apportant ainsi votre pierre à l'édifice de Talosi.

## Règle de calcul des primes

Tous les mois :

* Un talosien a une prime de cooptation s'il a coopté un autre talosien, et que le talosien est travail encore chez talosi
* Un talosien a une prime de mission s'il a eu une mission d'au moins une journée dans le mois
* Un talosien a une des dividendes tous les mois de décembre, s'il travaille encore chez talosi et qu'il est associé


## Les Algorithmes

* 1 - Combien y a-t-il de salariés en date du 2022-08-08 ? (5 points) 
* 2 - Quel est l'âge moyen chez talosi ? (7 points)
* 3 - Combien de mission différentes a fait Michel ? (5 points)
* 4 - Combien de personnes a coopté Winnie ? (5 points)
* 5 - Quel est le repas d’Eddy le dimanche 28 septembre 2023 ? (10 points)
* 6 - Pourquoi Kevin met une chemise bleue ? (10 points)
* 7 - Calculer la somme des primes de cooptation de michel sur les mois de novembre 2023 ? (20 points) 
* 8 - Calculer la somme des primes de mission de michel sur les mois de  novembre 2023 ? (30 points)  
* 9 - Calculer la somme des primes de tous les talosiens sur le mois de décembre 2023 ? (50 points)
* 10- Créer une MR avec mon code et des tests Unitaire (x points si test Unitaire) ? (30 points)


## Getting Started

### Démarrer la base de donnée

```
docker-compose up -d database
```


### Démarrer et construire le projet.

Vous devez décommenter les lignes correspondant à la technologie de développement que vous souhaitez.

```
docker-compose build hackaton & docker-compose up hackaton
```