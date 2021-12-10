# HTTP ET API


# LE PROTOCOLE HTTP
**La méthode GET**
Permet de **faire passer des informations dans l'URL**
- **avantage** : tout est enregistré dans l'URL => permet, avec un copier/coller, de relancer une requête que l'on a exécuté
- **inconvénient** : risque de sécurité + on ne peut pas y faire passer des infos trop volumineuses
- **anatomie** : `https://monsite.fr/api/search?page=2&tailleResultat=50`
	- après le `?` : les paramètres


---
**HTTP ft. JS - la fonction `fetch`**
- la fonction fetch sert à **formuler des requêtes**
- syntaxe : **`fetch('url')`**
- `fetch()` est une **fonction asynchrone** : elle ne retourne pas une réponse du serveur, mais une **promesse qu'ue résultat sera retourné dans le futur** ;
- **`await`** est un mot-clé qui permet **d'attendre le retour d'une fonction asynchrone** ; 
	- on obtient alors un objet `response` avec des **attributs** utiles:
		- statut de la requête (code de réponse)
		- est-ce qu'il y a eu redirection
		- les en-têtes de la requête
	- `await` permet d'attendre d'avoir obtenu la réponse pour exécuter le code
	- `àwait` arrête l'exécution du code jusqu'à avoir obtenu la réponse
	- si la réponse est négative (message d'erreur de `fetch()`), `await` renvoie cette réponse
	- *syntaxe*
	```
		let requete = fetch('url')
		let reponse = await requete
	```
- **`.json()` et `.text()`** permettent d'accéder au contenu d'une réponse:
	- **syntaxe** : `reponse.json()` et `reponse.text()`
	- `.json()` fonctionne surtout avec les API fournissant des données au **format json**
	- `.json()` renvoie une **promesse** aussi : les API peuvent retourner des données très lourdes, et donc longues à parser en json
	- **pour accéder au résultat de `.json()`** :
		```
			let contenu = await reponse.json()
			console.log(contenu)
		```
- **créer une fonction pour consommer une API** : 
	```
		async function recupJsonAPI(monUrl) {
   		let maPromesse = fetch(monUrl);
   		let maReponse = await maPromesse; 
   		if (maReponse.ok) {
       	// je retourne le résultat (et je sais que mon api renvoie du json)
			return await maReponse.json()
   		}

   		console.error(maReponse.statusText)
   		return null}
	```
	
***en vrai y'aurait de quoi faire des trucs cool avec une recherche à facettes dans l'expo API***