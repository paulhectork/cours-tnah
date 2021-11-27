# PYTHON _ LES BASES


---

Cette fiche hybride les cours de Clérice avec les tutoriels de W3Schools: https://www.w3schools.com/python/default.asp

---

# Python en bref:

**What can Python do?** <br>
- Python can be used on a server to create **web applications**. <br>
- Python can be used alongside software to create **workflows**. <br>
- Python can connect to **database systems**. It can also read and modify files. <br>
- Python can be used to handle big data and perform **complex mathematics**. <br>
- Python can be used for **rapid prototyping**, or for production-ready **software development**. <br>

---

**Python Syntax compared to other programming languages** <br>
- Python was designed for **readability**, and has some similarities to the English language with influence from mathematics.<br>
- Python uses **new lines** to complete a command, as opposed to other programming languages which often use semicolons or parentheses.<br>
- Python relies on **indentation**, using whitespace, to define scope; such as the scope of loops, functions and classes. Other programming languages often use curly-brackets for this purpose.<br>

---

**L'indentation et les retours à la ligne**

Les retours à la ligne et l'indentation (le nombre d'espaces avant une ligne de code) servent à **indiquer un bloc de code**. <br>
Les seuls délimiteurs sont le **deux-points (`:`)** et **l'indentation** du code. 
- Cette indentation doit être utilisée de manière **cohérente** dans tout votre code. <br>
- La convention consiste à utiliser **4 espaces** comme indentation (certains environnements de développement transforment automatiquement une tabulation en 4 espaces). <br>
- Cela signifie qu'après avoir utilisé un deux-points (comme dans notre instruction `if`), la ligne suivante devrait être indentée de quatre espaces de plus que la ligne précédente. <br>

**Exemple:**
```python
if 5 > 2:
  print("Five is greater than two!")
```



---

**`Method` vs `Function`**
- Une **fonction** est une opération, ou un bloc de code exécutable.
    - Elle accepte des **paramètres**, spécifiés dans `()`
    - Elle peut s'appliquer à toutes les classes et à tous les objets
- Une **méthode** est un cas particulier de fonction:
    - Elle est **définie pour une classe** ; chaque classe a un ensemble de méthodes qui lui sont propres.
    - Elle **s'applique à l'objet spécifié** seulement
    - Elle s'écrit `objet.method()`. L'`objet` est spécifié avant le point, les paramètres sont spécifiés dans `()`
    - Exemple: `mystring.split()` est une méthode qui s'applique à `mystring`; `split()` ne fonctionne que avec les `str`
    
---

**Les commentaires**
- Méthode 1: `# Commentaire sur une seule ligne`
- Méthode 2: créer une chaîne de caractères à laquelle on assigne aucune variable<br>`"""Commentaire`<br>`multi`<br>`ligne."""`

---

**La saisie de caractères bizarres**
- Échapper un caractère: `\caractère`
- Sauter une ligne hors d'une string multi-ligne: `\n`
- Tabulation: `\t`

---

**La proposition `pass`**
- Un statement `pass` permet de ne pas prendre en compte une condition, une boucle, une fonction, etc. 
- Il est utilisé quand la syntaxe du code nécessite de fournir une condition ou une boucle mais qu'on ne veut pas que celle-ci exécute du code.<br>``
for a in b:
    pass``


---
**Parser** : interpréter la syntaxe spécifique d’un langage pour pouvoir interagir avec un contenu

---

**Quelques trucs sur Markdown**
- Écrire du **code multi-lignes** entre 2 accents:
<br>\`\```Code
multi
ligne``\`\`
- Spécifier le langage: triple accent + nom du langage:<br>
\`\`\`
``
python
if a is True:
    print("Yes")
``
\`\`\`



---


# **Bonnes pratiques**

- **1 projet = 1 environnement virtuel**. Ça empêche que les librairies installées pour un projet se retrouvent dans un autre projet et créent des problèmes de dépendances.
- **N'installer que les librairies nécessaires à un projet**
- **Fermer un fichier avec `.close()`** dès qu'on ne s'en sert plus!
- **Les espaces n'ont pas d'importance** mais c'est bien d'en utilise aux bons endroits. Les IDE en rajoutent où il faut.


---

# Variables `var`

Une variable est un objet auquel on **assigne une/des valeurs**.
- Une variable peut contenir **tout type de donnée**: integrer, float, string, une autre variable...
- **L'assignation** de valeur se fait avec `=` <br>
- On peut **assigner la valeur d'une variable à une autre variable**, comme dans l'exemple. <br>

**Exemple:** assignation de la valeur d'une variable à une autre variable.


```python
livre = "The Lord of the Flies"
en_cours_de_lecture = livre
```


---

**Nommer une variable**.

A variable can have a short name (like x and y) or a more descriptive name (age, carname, total_volume). Rules for Python variables:

- Un nom de variable commence par **une lettre ou un underscore**, jamais avec un chiffre<br>
- Un nom de variable ne peut contenir que des caractères **alpha-numeriques et des underscores** (A-z, 0-9, and _ ) <br>
- Les noms sont **case-sensitive** (age, Age and AGE are three different variables)


---
**Assigner plusieurs valeurs à plusieurs variables**.<br>
`x, y, z = "Orange", "Banana", "Cherry"`

**Assigner une même valeur à plusieurs variables**<br>
`x = y = z = "Orange"`

**Extraire les valeurs d'une collection dans plusieurs variables**.<br>
Une collection de de valeurs est conservée dans une liste, tuple...<br>
`fruits = ["apple", "banana", "cherry"]`<br>
`x, y, z = fruits`<br>

**Retourner le contenu d'une variable avec `print()`**

De base,<br>
`x = "awesome"`<br>
`print("Python is " + x)`

On peut ensuite **combiner des variables** si les variables contiennent toutes des chaînes ou des nombres:<br>
- Avec **des chaînes**: <br>`x = "Python is "`<br>`y = "awesome"`<br>`z =  x + y`<br>`print(z)`<br>`Python is awesome`


- Avec **des nombres**, les opérateurs sont traités comme des opérateurs mathématiques:<br>`x = 5`<br>`y = 10`<br>`print(x + y)`<br>`15`


- On ne **peut pas** combiner des **nombres et des chaînes**

---

**Variable globale et varable locale**<br><br>
Une **variable globale** est définie pour l'ensemble du fichier (toutes les variables vues ci-dessus.

Une **variable locale** est définie uniquement à l'intérieur d'une fonction, comme dans l'exemple:<br>
```
def myfunc():
    x = "fantastic"
    print("Python is " + x)
myfunc()
```

**global** permet de faire d'une variable locale une variable globale:<br>
```
def myfunc():
    global x
    x = "fantastic"
myfunc()
```

---

# Types de données (Data Types) et Typage (Cast)

Une variable peut contenir de nombreux types de données.

**Par défaut, Python supporte:**

- **Les chaînes de caractères / character strings** `str`<br>
- **Les données numériques / numeric types**
    - Entiers/Integrers `int`
    - Nombres décimaux `float`
    - Nombres complexes `complex`
- **Les séquences**: un objet itérable et indexable
    - Les listes `list`
    - Les tuples `tuple`
    - Les séquences de nombres, avec la fonction `range`
- **Les mapping types / listes à clés**, avec les dictionnaires `dict`
- **Les sets**, avec 
    - `set` 
    - `frozenset`
- **Les boléens** (True/False) avec `bool`
- **Les types binaires / binary types**:
    - `bytes`
    - `bytearray`
    - `memoryview`
---

**Utiliser la fonction `type()` pour connaître le type de données**


```python
entier = 1
chaine = "1"
print(type(entier))
print(type(chaine))
```

    <class 'int'>
    <class 'str'>


---

**Spécifier le type de données / retyper / caster**

Il est possible de **spécifier le type de données d'une variable** en précédant celle-ci du nom du type de données: dans l'exemple, on spécifie que x est un string:<br>
`x = 'Hello world'`<br>
`str(Hello World)`

Avec la même méthode, on peut **retyper une variable**, c'est à dire imposer qu'elle soit lue comme un type de données plutôt qu'un autre.<br>
- Dans l'exemple ci-dessous, `"1"` serait reconnu comme une chaîne si on utilisait pas `int()`; avec `int()` on peut réaliser l'opération:<br>
`print(int("1") + 2)` donne pour résultat 3
- Ce système peut être utilisé pour faire tout plein de conversions fort utiles<br>
`x = float(1)`     # x will be 1.0<br>
`y = float(2.8)`   # y will be 2.8<br>
`z = float("3")`   # z will be 3.0<br>
`w = float("4.2")` # w will be 4.2


---


# Les chaînes de caractères `string` et la manipulation de chaînes
Les chaînes de caractères sont des suites de caractères, tout simplement. Elles sont souvent assignées à des variables.

---

**Propriété des chaînes**
- Une chaîne est **itérable**
- Une chaîne est **immuable**
- Une chaîne est **indexable** et l'indexation commence à 0.
- Une chaîne s'écrit **entre guillemets `""`**
- Une chaine est une **séquence**

---

**L'assignation d'une chaine à une variable** se fait ainsi:
- Pour une chaîne **à une seule ligne**: <br>`variable = "chaine"`
- Pour une chaîne **à plusieurs lignes**: <br>
`variable = """On met toute la chaine` <br>`entre trois guillemets`<br>`et on fait des retours à la ligne"""`

---

**L'indexation d'une chaîne**

Dans Python, les **chaînes sont indexées**: les différents éléments d'une chaîne sont numérotés.

**L'indexation positive** se fait à partir de `0`:
- `chaine[0]` est la première lettre de `chaîne`
- `chaîne[1]` est la deuxième lettre de `chaîne`
    
**L'indexation négative** se fait à partir de `-1`:
- `chaine[-1]` est la dernière lettre de `chaîne`
- `chaîne[1]` est l'avant dernière lettre de `chaîne`

Pour **connaître la longueur d'une chaîne**, on utilise la fonction **`len()`**:<br>
Soit une fonction `nom = 'Paul Hector'`<br>
- `print(len(nom))` retourne `11`, soit le nombre total de lettres<br>
- `print(len(nom)-1)` retourne `10`, soit le nombre total de lettres, -1.

Les **index de tranches/slices** permet de travailler avec une **série de caractères** dans une chaîne:<br>
- La **syntaxe générale** pour définir une tranche est <br> `chaine[numéro-du-premier-caractère;numéro-du-dernier-caractère]`<br>
- Si on ne **spécifie pas le début/fin de tranche**, la tranche commence/termine au début/fin de la chaîne:
    - `chaine[0;2]` = `chaine[:2]` = les trois premiers caractères de la chaîne.
    - `chaine[-2:-1]` = `chaine[-2:]` = les deux derniers caractères de la chaîne.

Il est alors possible de **faire des opérations avec des tranches**:<br>
`mot1 = "humanisant"`<br>`mot2 = "opportunités"`<br>`tranche = mot1[:4]+mot2[-5:]`<br>`print(tranche)` retourne le mot `humanités`. *ta-daaaa*

**Pour résumer**,<br>
<div style="display:block; text-align:center;"><img src="http://www.nltk.org/images/string-slicing.png" align=center /></div>

---

Vérifier si une **chaîne contient ou non une sous-chaîne** (c'est-à-dire une série de caractères) avec **`if`** et **`if not`**:
- **`if`** indique si une sous-chaîne se trouve dans une chaîne
<br>`txt = "The best things in life are free!"`<br>`print("free" in txt)` retourne `True`: "free" est dans la chaîne "txt"
- **`if not`** indique si une sous-chaîne ne se trouve dans une chaîne
<br>`txt = "The best things in life are free!"`<br>`print("boring" not in txt)` retourne `True`: "boring" n'est pas dans la chaîne "txt"

---

**Slicing/découper des chaînes** en utilisant les index de tranches:

`b = "Hello, World!"`<br>
`print(b[2:5])` retourne `llo`

`b = "Hello, World!`<br>
`print(b[:5])` retourne `Hello`

`b = "Hello, World!"`<br>
`print(b[-5:-2])` retourne `orl`

---

**Modifier des chaînes et nettoyer du texte**
- **Basculer la casse**
    - basculer en majuscule: `mystring.upper()`
    - basculer en minuscules: `mystring.lower()`
- **Supprimer les espaces** au début et à la fin d'une chaîne: `mystring.strip()`
- **La method `.join()`** sert à joindre des chaînes<br>
    - `join()` permet de joindre les chaînes spécifiées entre crochets
    - la chaîne précédant `.join()` est utilisée pour séparer des chaînes, comme dans l'exemple:
``livre = "Les Mains Sales"
livre = livre.split()
livre = " ".join([livre[0], livre[-1], livre[1]])
print(livre)``
- **La method `.split()`**
    - Comme argument, on peut **spécifier le séparateur à utiliser**
- **La method `.replace(oldvalue, newvalue, count)`**
     - `oldvalue`: valeur à rechercher. chaîne de caractères
     - `newvalue`: valeur avec laquelle remplacer oldvalue. chaîne de caractères
     - `count` (optionnel): précise le nombre d'occurrences à remplacer<br>`mystring.replace(".", ",")`

- **la method `.format()` pour formater des chaînes** 
	- **Exemple** `"{} est en premiere position, {} en deuxieme".format(1, 2)`
	- appelée sur une chaîne, `format` **remplace les valeurs entre `{}` par les valeurs spécifiées en paramètres**
	- sert à **automatiser la concaténation de chaînes**
	- **utile** quand on **itère sur des boucles** (pour créer une chaîne de caractères à chaque itération), quand on a des **listes de valeurs** et qu'on veut produire une chaîne de caractères pour chaque valeur
	- il est possible **d'indexer les valeurs à remplacer dans la chaîne**: la valeur entre {} est alors remplacée par le paramètre suivant son numéro d'index: 
		```Python
		quantity = 3
		itemno = 567
		price = 49.95
		myorder = "I want to pay {2} dollars for {0} pieces of item {1}."
		print(myorder.format(quantity, itemno, price))
		```
	- il est possible de **nommer les valeurs à remplacer dans la chaîne** pour être sûr de ne pas avoir d'erreurs dans le formatage: 
		```Python
		"{nom} a écrit le poème '{titre}'. {nom} est {nationalite}.".format(
		    nom="Brecht", titre="Solution", nationalite="allemand"
		)
		```


---
# Les listes `list`
Les listes sont des **variables contenant plusieurs objets**. C'est un des **quatre types de collections** dans Python, avec les Dictionnaires, les Tuples et les Sets.

---

**Les propriétés des listes**
- Une liste est un **itérable**. Elle est:
    - **ordonnée**
    - **indexable**
    - **muable** (les termes peuvent être édités individuellement)
    - peut contenir des **doublons**.<br>
- Une liste est une **séquence**: objet itérable et indexable
- Une liste peut contenir **n'importe quel type de données**: string, integrers, booleans... <br>
- Une même liste peut **contenir plusieurs types** de données.
- Une liste s'écrit **entre crochets `[]`**

---

**Créer une liste**
- En **définissant une variable**<br>`mylist = ["apple", "banana", "cherry"]`<br>
- En utilisant la fonction **`list()`**<br>
`thislist = list(("apple", "banana", "cherry"))`

---

**L'indexation d'une liste et naviguer dans une liste**
<br>Une liste est indexée. L'indexation suit les mêmes principes que pour une chaîne de caractères.
- Pour connaître la longueur d'une chaîne, on utilise la **fonction `len()`**
- Pour **accéder à un terme d'une liste**, `mylist[n°]`
    - `print(mylist[3])` retourne le 4e terme de la liste.
    - `print(mylist[-1])` retourne le dernier terme.
    - `[0, 1, 2][1]` retourne `1`, soit le 2e terme.
- Pour **accéder à une série de termes**: `mylist[index1-index2]`
    - `print(mylist[2:])` retourne tous les termes de `mylist` à partir du 3e terme.
- **Modifier un terme grâce à l'indexation**:<br>
`mylist[n°-du-terme-à-remplacer] = ["terme-à-ajouter"]`
---

**Concaténer des listes**<br>
`list3 = list1 + list2`

---

**Les méthodes applicables sur des listes, en bref**
- `.append()`	Adds an element at the end of the list
- `.clear()`	Removes all the elements from the list
- `.copy()`	Returns a copy of the list
- `.count()`	Returns the number of elements with the specified value
- `.extend()`	Add the elements of a list (or any iterable), to the end of the current list
- `.index()`	Returns the index of the first element with the specified value
- `.insert()`	Adds an element at the specified position
- `.pop()`	Removes the element at the specified position
- `.remove()`	Removes the item with the specified value
- `.reverse()`	Reverses the order of the list
- `.sort()`	Sorts the list

---

**Transformer une chaîne de caractères en liste avec la method `split()`**<br>
Cette fonction sépare une chaîne de caractères en liste en fonction des espaces. Par exemple:<br>
```
phrase = "Sacré nom d'une pipe."
mots = phrase.split()
print(mots)
```
=> `['Sacré', 'nom', 'd'une', 'pipe.']`

---

**Ajouter des termes**<br>
- Ajouter le terme spécififié avec la method **`append()`**<br>
`mylist.append("terme-à-ajouter")`
- Insérer un item à un endroit spécifique de la liste avec la method **`insert()`**:<br>
	```
	thislist = ["apple", "banana", "cherry"]
	thislist.insert(1, "orange")
	``` 
	insère `orange` en 2e terme de la liste.
- Compléter une liste avec les termes d'un iterable grâce à la method **`extend()`**:
    - Ajouter **les termes d'une liste** à une autre liste:<br>
		```
		thislist = ["apple", "banana", "cherry"]
		tropical = ["mango", "pineapple", "papaya"]
		thislist.extend(tropical)
		```
		ajoute les termes de `tropical` à la fin de `thislist`.
    - Cette méthode fonctionne avec **n'importe quel objet itérable**: tuple, set, dictionnaire.
		```
		thislist = ["apple", "banana", "cherry"]
		thistuple = ("kiwi", "orange")
		thislist.extend(thistuple)
		```

---

**Retirer des termes**
- Retirer terme spécifié avec la method **`.remove()`**<br>
`mylist.remove("terme-à-retirer")`
- Retirer un terme grâce à l'indexation avec la method **`.pop()`**<br>
`mylist.pop(n°)` retire le terme au numéro spécifié
- Supprimer une liste avec la fonction **`del`**<br>
`del thislist` supprime `thislist`.
- Vider une liste avec la method **`.clear()`**<br>
`mylist.clear()` vide une liste: la liste existe toujours, mais ne contient aucune variable.

---

**Classer une liste alphanumériquement avec `.sort()`**:<br>
`mylist.sort()`


---

**Les listes imbriquées / nested lists**<br>
`liste_imbriquee = [[‘a’, ‘b’, ‘c’, ‘d’], [‘e’, ‘f’]]`

Une liste imbriquée est une **liste hiérarchisée de plusieurs sous-listes**<br>
- Une liste imbriquée peut contenir **plusieurs types d'objets**: strings, integrers, booleans...

- **L'indexation** d'une liste imbriquée se fait de la liste de 1e niveau aux listes imbriquées:
`liste_imbriquée[X][Y]` = terme Y de la sous-liste X
![image.png](attachment:image.png)

Utiliser **`.append()`** avec une liste imbriquée:<br>
- Premier exemple:<br>
	```
	bonnes_lectures = [[titre1, score1], [titre2, score2]]
	bonnes_lectures.append(["Voyage au bout de la nuit", 9])
	```
- Deuxième exemple:<br>
	```
	L = ['a', ['bb', 'cc'], 'd']
	L[1].append('xx')
	```
	=> `['a', ['bb', 'cc', 'xx'], 'd']`


---
# Les dictionnaires `dict`
Les dictionnaires sont des **variables contenant une collection d'items**, soit des couples clés:valeurs. C'est un des **quatre types de collections** dans Python, avec les Listes, les Tuples et les Sets.

---

**Les propriétés des dictionnaires**
- Un dictionnaire est **un itérable**,
    - **ordonné** (les items ne changent pas de place)
    - **indexable** (leur place est numérotée).
    - **muable** (les termes peuvent être édités individuellement)
    - ne contient **pas de doublons** (deux valeurs ne peuvent pas faire référence à la même clé).<br>
- Un dictionnaire peut contenir **n'importe quel type de données**: string, integrers, booleans, listes...
    - Une clé peut être n'importe quel type de donnée, mais doit être hashable (cad, avoir un `hash`, un code unique; en bref une clé ne doit pas être définie ailleurs)
    - Une valeur peut être n'importe quoi; les valeurs peuvent être de plusieurs types de données
- Un dictionnaire s'écrit **entre accolades `{}`**

---

**Les méthodes applicables sur des dictionnaires, en bref**
- `.clear()`	Removes all the elements from the dictionary
- `.copy()`	Returns a copy of the dictionary
- `.fromkeys()`	Returns a dictionary with the specified keys and value
- `.get()`	Returns the value of the specified key
- `.items()`	Returns a list containing a tuple for each key value pair
- `.keys()`	Returns a list containing the dictionary's keys
- `.pop()`	Removes the element with the specified key
- `.popitem()`	Removes the last inserted key-value pair
- `.setdefault()`	Returns the value of the specified key. If the key does not exist: insert the key, with the specified value
- `.update()`	Updates the dictionary with the specified key-value pairs
- `.values()`	Returns a list of all the values in the dictionary

---

**Créer un dictionnaire**<br>
- En **définissant une variable**<br>`mydict = {‘key1’:‘value1’, ‘key2’:‘value2’, ‘key3’:‘value3’}.`
- En **définissant un ensemble de couples clé-valeur**<br>
	```
	mydict = {}
	mydict[‘key1’] = value1`<br>`mydict[‘key2’] = value2
	```

---

**Les générateurs `.keys()`, `.values()`, `.items()`, `.get()`**
- Générer les clés d'un dictionnaire avec **`keys()`**
`mydict.keys()` retourne l'ensemble des clés de `mydict`
- Générer les valeurs d'un dictionnaire avec **`values()`**
`mydict.values()` retourne l'ensemble des valeurs de `mydict`
- Générer les items d'un dictionnaire avec **`items()`**
`mydict.items()` retourne l'ensemble des items (couples clés-valeurs) de `mydict`
- Générer les valeurs d'une clé spécifiée, si la clé existe: **`.get()`**
	- **syntaxe** - `dict.get(key[, value])`, avec
		- `key` - la clé à rechercher
		- `value` - valeur optionnelle: valeur à retourner si 'key' n'existe pas. Default = 'none'
	- **`.get()` ne génère pas d'erreur** si la clé n'existe pas, mais retourne 'value'
- Les générateurs **ne sont pas des listes** et **ne sont pas indexables**: ils ne sont pas enregistrés dans la mémoire de l'ordinateur mais sont générés sur demande.

---

**Changer les valeurs d'un dictionnaire**
- En faisant **référence à sa clé** <br>
	```
	thisdict =	{
		"brand": "Ford"
		"model": "Mustang"
		"year": 1964
	}
	```
	`thisdict["year"] = 2018` change `year` de 1964 à 2018.
- En utilisant **`update()`**
<br>`thisdict.update({"year": 2020})`
    - Cette méthode fonctionne avec n'importe quel objet itérable formé d'un couple clé-valeurs.
    
---

**Ajouter des items**
- En **créant un couple clé-valeur**<br>`thisdict["color"] = "red"` ajoute l'item `"color" : "red"`.
- En utilisant **`.update()`**:<br>`thisdict.update({"color" : "red"})` ajoute l'item `"color" : "red"`.

---

**Retirer des items**
- **`.pop()`**: retire un item en fonction de la clé spécifiée.<br>`thisdict.pop("year")` retire l'item `year:1964`.
- **`.popitem()`** retire le dernier item inséré<br>`thisdict.popitem()`
- **`del`** supprime un item en fonction de la clé spécifiée:<br>`del thisdict["model"]` supprime `model` du dictionnaire.
- **`.clear()`** vide un dictionnaire:<br>`thisdict.clear()`

---

**Les dictionnaires imbriqués** peuvent être créés de 2 manières:
- En **créant un dictionnaire qui contient plusieurs dictionnaires**:<br>
	```
	myfamily = {
		"child1" : {"name" : "Emil", "year" : 2004},
		"child2" : {"name" : "Tobias", "year" : 2007}
	}
	```
- En **regroupant plusieurs dictionnaires pré-existants en un nouveau dictionnaire**:<br>
	```
	child1 = {"name" : "Emil", "year" : 2004}
	child2 = {"name" : "Tobias", "year" : 2007}
	myfamily = {"child1" : child1, "child2" : child2}
	```


---


# Les tuples `tuple`

Un tuple est une variable contenant **une collection ordonnée de plusieurs éléments**. C'est un des **quatre types de collections** dans Python, avec les Listes, les Dictionnaires et les Sets.

---

**Les propriétés des tuples**
- Un tuple s'écrit **entre crochets `[]` et entre parenthèses `()`**
- Un tuple est **un itérable**
    - **ordonné**
    - **indexable**, 
    - **immuable** (les termes peuvent être édités individuellement, on ne peut le modifier après sa création)
    - un tuple **peut contenir des doublons**
- Un tuple peut contenir **n'importe quel type de données**: string, integrers, booleans...
- Un tuple est une **séquence**
- Un tuple permet **d'indexer rapidement plusieurs variables**.<br>
	```
	bonne_lecture_tuple = [('Les poèmes de Paul Celan', 8), ('Voyage au bout de la nuit', 9), ('To the lighthouse', 9)]
	titre, note = bonne_lecture_tuple[0]
	print(titre)
	```
	retourne `Les poèmes de Paul Celan`<br>`print(note)` retourne `8`.
- **L'utilité d'un tuple**: il n'est pas modifiable, donc on s'en sert pour contenir des données auxquelles on ne veut pas toucher / qu'on veut protéger.

---

**Créer un tuple**
- En **définissant une variable**:<br>`mytuple = [(a1, b1), (a2, b2)]`
- En utilisant **`tuple()`**:<br>`mytuple = tuple(("a", "b", "c"))`
- Un cas particulier: **le tuple de 1** s'écrit:<br>`mytuple = (1, )`


---


# Les sets `set`

Les sets sont des **variables contenant une collection d'items**, soit des couples clés:valeurs. C'est un des **quatre types de collections** dans Python, avec les Listes, les Tuples et les Dictionnaires.

---

**Les propriétés des dictionnaires**
- Un set est **un itérable**,
    - **non-ordonné** (les items ne sont pas dans un ordre précis)
    - **non-indexable** (les items ne sont pas numérotés et ne peuvent être appelés avec un index).
    - **immuable** (les termes ne peuvent être édités individuellement)
    - ne contient **pas de doublons** (deux valeurs ne peuvent pas faire référence à la même clé).<br>
- Un set est une **séquence**
- Un set peut contenir **n'importe quel type de données**: string, integrers, booleans, listes...
- Un set peut être utilisé pour **supprimer les doublons** d'une chaîne de caractères ou d'une liste.
- Un set s'écrit **entre accolades `{}`**

---

**Les methods applicables sur des sets, en bref**
- `.add()`	Adds an element to the set
- `.clear()`	Removes all the elements from the set
- `.copy()`	Returns a copy of the set
- `.difference()`	Returns a set containing the difference between two or more sets
- `.difference_update()`	Removes the items in this set that are also included in another, specified set
- `.discard()`	Remove the specified item
- `.intersection()`	Returns a set, that is the intersection of two other sets
- `.intersection_update()`	Removes the items in this set that are not present in other, specified set(s)
- `.isdisjoint()`	Returns whether two sets have a intersection or not
- `.issubset()`	Returns whether another set contains this set or not
- `.issuperset()`	Returns whether this set contains another set or not
- `.pop()`	Removes an element from the set
- `.remove()`	Removes the specified element
- `.symmetric_difference()`	Returns a set with the symmetric differences of two sets
- `.symmetric_difference_update()`	inserts the symmetric differences from this set and another
- `.union()`	Return a set containing the union of sets
- `.update()`	Update the set with the union of this set and others


---

**Créer un set**
- En **définissant une variable**:<br>`myset = {a, b, c}`
- En utilisant **`set()`**:<br>`myset = set(("a", "b", "c"))`

---

**Ajouter des éléments dans un set**
- Ajouter un seul élément avec `.add()`:<br>`myset.add("a")`
- Ajouter un autre set ou un autre objet itérable (dictionnaire, liste, tuple...) avec `.update()`:<br>`myset.update(otheriterable)`
- Joindre deux sets:<br>
    - En créant un nouveau set avec `.union()`:<br>`set3 = set1.union(set2)`
    - En mettant à jour un set avec `.update()`<br>`set1.update(set2)`

---

**Retirer des éléments d'un set**
- Retirer un seul élément avec `.remove()` et `.discard()`:<br>`thisset.remove("a")`<br>`thisset.discard("a")`<br>
- Retirer tous les éléments d'un set avec `.clear()`:<br>`thisset.clear()`
- Supprimer un set avec `del`<br> `del thisset`

---

**Accéder aux items d'un set**
- Avec une boucle `for`:<br>``for x in thisset:
    print(x)``
- Avec l'argument `in`<br>`print("banana" in thisset)`
    


---


# Les opérateurs / Operators
Il existe plusieurs types d'opérateurs dans Python. Ici, on fait une présentation rapide et on reviendra potentiellement dessus plus tard.

**Les opérateurs arithmétiques / arithmetic operators**
- `+` 	Addition    	`x + y`
- `-` 	Subtraction 	`x - y`
- `*` 	Multiplication 	`x * y`
- `/` 	Division    	`x / y`
- `%` 	Modulo / Reste d'une division     	`x % y`
- `//` 	Floor division / Division à résultat entier 	`x // y`
- `**` 	Exponentiation / Exponentiel 	`x ** y`


**Les opérateurs d'assignation / assignment operators**
- `=` 	équivaut à 	`x = 5` 	
- `+=` 	équivaut à 	`x = x + 3` => incrémentation de la variable
- `-=` 	équivaut à 	`x = x - 3` 	
- `*=` 	équivaut à	`x = x * 3` 	
- `/=` 	équivaut à 	`x = x / 3` 	
- `%=` 	équivaut à 	`x = x % 3` 	
- `//=` équivaut à 	`x = x // 3` 	
- `**=` équivaut à 	`x = x ** 3` 	
- *`&=` 	équivaut à 	`x = x & 3`* 	
- *`|=` 	équivaut à 	`x = x | 3`*
- *`^=` 	équivaut à 	`x = x ^ 3`* 	
- *`>>=` équivaut à 	`x = x >> 3`* 	
- *`<<=` équivaut à 	`x = x << 3`*


**Les opérateurs de comparaison / comparison operators**
- `==` 	Equal 	`x == y` 	
- `!=` 	Not equal 	`x != y` 	
- `>` 	Greater than 	`x > y` 	
- `<` 	Less than 	`x < y` 	
- `>=` 	Greater than or equal to 	`x >= y` 	
- `<=` 	Less than or equal to 	`x <= y`

**Les opérateurs logiques**
- `and` returns True if both statements are true<br>
`x < 5 and  x < 10`
- `or` returns True if one of the statements is true<br>
`x < 5 or x < 4` 	
- `not`reverses the result, returns False if the result is true<br>
`not(x < 5 and x < 10)`

**Les opérateurs d'identités / identity operators**
- `is` returns True if both variables are the same object <br>`x is y`
- `is not` returns True if both variables are not the same object<br>`x is not y`

**Les opérateurs d'appartenance / membership operators**
- `in` returns True if a sequence with the specified value is presented in an object<br>`x in y`
- `not in` returns True if a specified value is not present in the object<br>`x not in y`

**Les opérateurs binaires / bitwise operators**<br>En premier, l'opérateur, ensuite et en gras son nom, à la fin la description.
- `&`  	**AND** 	Sets each bit to 1 if both bits are 1
- `|` 	**OR** 	Sets each bit to 1 if one of two bits is 1
- `^` 	**XOR** 	Sets each bit to 1 if only one of two bits is 1
- `~`  	**NOT** 	Inverts all the bits
- `<<` 	**Zero fill left shift** 	Shift left by pushing zeros in from the right and let the leftmost bits fall off
- `>>` 	**Signed right shift** 	Shift right by pushing copies of the leftmost bit in from the left, and let the rightmost bits fall off

---
# Les conditions
Cette partie reprend un peu des choses de la partie Opérateurs

**Les conditions simples**
Les conditions simples sont des conditions logiques héritées des maths. On peut aussi les appeler **opérateurs de comparaison**:
- `==` 	Equal 	`x == y` 	
- `!=` 	Not equal 	`x != y` 	
- `>` 	Greater than 	`x > y` 	
- `<` 	Less than 	`x < y` 	
- `>=` 	Greater than or equal to 	`x >= y` 	
- `<=` 	Less than or equal to 	`x <= y`

---

**`if`, `elif` et `else`**<br>
Ces trois conditions sont évaluées `True` ou `False`, ce qui peut **déterminer l'exécution d'une portion de code**.
- **`if` / si**: première condition
- **`elif`**: condition supplémentaire à vérifier. On peut mettre plusieurs conditions `elif` à la suite.
	- **Différence entre `if` suivi d'un `elif` et `if` suivi d'un `if`** (càd: différence entre if et elif):
en fait je suis pas sur de comprendre
 	   - **TLDR** deux boucles `if` de même degré sont indépendantes l'une de l'autre alors que dans une structure `if...elif`, le **`elif` est conditionné au `if`**
 	   - `elif` ne s'exécute que si `if` est `False`. Si `if` est `True`, la boucle s'arrête.
	    - `if` s'exécute en tout cas, que `if` soit `False` ou `True`. Que le 1er `if` soit `True` ou `False`, le 2e `if` lance une nouvelle boucle indépendante de la première.
        - **Exemple1**
		```python
		mot = "complémentaires"
		if "a" in mot:
		  print(mot + " contient la lettre a")
		elif "s" in mot and "p" in mot:
		  print(mot + " contient la lettre s et p")
		```
		returns `complémentaires contient la lettre a`: la boucle s'arrête, puisque `if` est `True`.
		- **Exemple2**
		```python
		mot = "complémentaires"
		if "a" in mot:
			print(mot + " contient la lettre a")
		if "s" in mot and "p" in mot:
  		print(mot + " contient la lettre s et p")
		```
		returns
		```python
		complémentaires contient la lettre a
		complémentaires contient la lettre p et s
		```
		puisque deux boucles `if` indépendantes sont lancées.
    

- **`else` / sinon**: condition qui s'applique si aucune des propositions précédentes n'est `True`.
- **Nested `if`**: une proposition `if` peut être contenue dans une autre proposition en `if`:<br>
```python
x = 41
if x > 10:
  print("Above ten,")
  if x > 20:
    print("and also above 20!")
  else:
    print("but not above 20.")
```
    
**Les arbres conditionnels**
- Un arbre conditionnel est une **série de conditions commencant par un `if`**.
- Dans un arbre conditionnel, **la première proposition `True` arrête l'arbre** (que la proposition soit `if` ou `elif`.
- Un **nested `if`** détermine le début d'un **nouvel arbre conditionnel**. Le 2nd arbre est totalement indépendant du premier.
- **Exemple ci-dessous** (ridiculement compliqué): 
    - 3 arbres imbriqués
    - il y a 2 arbres conditionnels de degré 2. Si on arrive au 2e degré, les 2 arbres de ce degré s'exécuteront.
    - dans ce cas de figure, faire un schéma de l'arbre à la main.

```python
if x > y:
    print("a")
    if x > z:
        print("b")
        if x < m:
            print("c")
        elif x < n:
            print("d")
    elif x == 1:
        print("e")
    if x >= 3:
        print(2)
elif x > r:
    print("f")
else print("g")
```

---
    
**`and`, `or` et `not`**<br>
Ces trois **opérateurs logiques** permettent de combiner des conditions 
- **`and` / et**: tous les statements doivent être `True` pour que la proposition soit `True`.
- **`or` / ou**: un des statements doit être `True` pour que la proposition soit `True`.
- **`not`** permet de tester une condition qui n'est pas vraie: cet opérateur renvoie `True` si la condition n'est pas vraie.
- Toujours **commencer un bloc conditionnel par propositions les plus générales** (qui ont le plus de chances d'être `True`. Un bloc conditionnel est une suite d'opérateurs logiques.
    
---

**La syntaxe**: 
- **Syntaxe complète** : une proposition contenant une condition est toujours suivie d'un `:`, d'un retour à la ligne et d'une indentation.<br>
	```python
	mot = "complémentaires"
	if "a" in mot:
		print(mot + " contient la lettre a")
	elif "s" in mot and "p" in mot:
	print(mot + " contient la lettre s et p")
	else:
		print("Mais où avez-vous trouvé ce mot !?")``
- **Syntaxe rapide/short-hand** :
    - Short hand `if`:<br>`if a>b print("a is greater than b")`
    - Short hand `if...else`
			```
			a = 2
			b = 330
			print("A") if a > b else print("B")
			```
    
---
   
**Vérifier si une variable est assignée** avec `if`:
- On crée une proposition avec `if` suivi du nom de la variable (voir exemple)
- Permet d'**exécuter une portion de code seulement si une variable est assignée** (si une chaîne/tuple/dictionnaire... contient des informations)<br>
```
nombres = []
if nombres:
	print("J'ai trouvé une liste pleine !")
```


---
**`if __name__ = "__main__"`**
- **tldr** - cette structure permet de **vérifier si un module est le module principal** d'un projet et sert à exécuter un script seulement si le module est le module principal
- dans un projet multi-fichier, permet d'**appeler un fichier `.py` sans l'exécuter** (par exemple, un script A peut récupérer dans un script B une fonction sans que celle-ci ne s'exécute parce que B n'est pas le script principal)
- Python files are called **modules** and they are identified by the `.py` file extension. A module can define functions, classes, and variables.
- So when the interpreter runs a module, the `__name__` variable will be set as  `__main__` if the module that is being run is the **main program**.
- But **if the code is importing the module** from another module, then the `__name__`  variable will be set to that module’s name.
- We can use an `if __name__ == "__main__"` block to **allow or prevent code from being run** when the modules are imported.


---
# La boucle `for`
La boucle `for` permet d'itérer une action: de l'exécuter sur tous les éléments d'un objet itératif (liste, tuple, dictionnaire, chaîne, string).

---
**La syntaxe**<br>est toujours suivie d'un `:`, d'un retour à la ligne et d'une indentation.

---
**Sur quoi une boucle `for` itère**:
- Dans une **chaîne**, `for` itère sur tous les caractère
- Dans une **liste**, un **set** et un **tuple**, `for` itère sur toutes les valeurs de la liste/set/tuple
- Dans un **dictionnaire**, `for` itère sur les clés
- Dans un **générateur**, `for` itère sur un tuple de valeurs<br>`for mydict.keys()` itère sur un tuple des clés<br>`for mydict.items()` itère sur les couples clés-valeurs

---

**Les arguments `break` et `continue`**
- `break` interrompt la boucle si une condition est remplie.
- `continue` met fin à une première itération de la boucle et en lance une deuxième. Permet de sauter un certain nombre d'éléments dans l'itérable en fonction d'une condition.

---

**Les nested loops**<br>Un nested loop est une boucle dans une boucle. La boucle intérieure s'exécute une fois à chaque itération de la boucle extérieure:<br>
```
adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]
for x in adj:
  for y in fruits:
    print(x, y)
```
retourne: `red apple red banana red cherry big apple big banana big cherry tasty apple tasty banana tasty cherry`
    
---

**La fonction `range()`**<br>Cette fonction retourne une série de nombres:
- `for x in range(6)` retourne `0 1 2 3 4 5`
- `for x in range (2, 6)` retourne `3 4 5`


---
# `try` ... `except`: tester et gérer des erreurs

**Erreurs en Python** = `exceptions` qui, en temps normal, stoppent l'exécution du code. `try` et `except` permettent de tester et de gérer des erreurs sans stopper l'exécution du code: le bloc de code `try` s'exécute; si il n'y a pas d'erreurs, tout va bien, sinon le bloc `except` se lance. Une **structure `try...except` exécute le code dans `try` jusqu'à la première erreur**; ensuite, c'est `except` qui s'exécute pour le reste du code.

- **`try`** - exécuter un bloc de code pour jusqu'à ce qu'il soulève une erreur
- **`except`** - bloc de code à exécuter si `try` soulève des erreurs
	- **pour gérer différents types d'erreurs**; plusieurs blocs `except` peuvent être mis à la suite
	- **exemple**: un bloc de code à exécuter pour les `NameError`, un bloc à exécuter pour les `SyntaxError`
		```Python
		except NameError:
			#code
		except SyntaxError
			#code
		```
- **`else`** - bloc de code à exécuter si `try` ne soulève pas d'erreurs
- **`finally`** - bloc de code à exécuter, qu'il y ait ou non des erreurs

**Exemple**:
```Python
try:
  print(x)
except:
  print("Something went wrong")
else:
  print("Nothing went wrong") 
finally:
  print("The 'try except' is finished") 
```

---
# Gérer des fichiers

**La fonction `open()`** sert à ouvrir un fichier stocké sur l'ordinateur.
- **Syntaxe**: ```open(file, mode, args)```
- **Les arguments de `open()`** permettent de spécifier la manière dont le fichier est ouvert:
    - **`file`**: chaîne de caractères précisant le chemin vers le fichier
    - **`mode`**: mode d'ouverture du fichier
        - `r`: lire
        - `w`: write. Crée le fichier si il n'existe pas
        - `a`: append. Crée le fichier si il n'existe pas
        - `x`: create. Crée le fichier
        - `t`: mode supplémentaire à r/w/a/x: traiter le fichier comme du texte
        - `b`: mode supplémentaire à r/w/a/x: traiter le fichier comme un fichier binaire
    - **`encoding=`** précise l'encodage des caractères du fichier
    - Les arguments s'écrivent dans la parenthèse après le nom du fichier suivi d'une virgule:<br>`open('data/cid.v1071.1682.txt', encoding='latin')`
- **Par défaut** (si on ne spécifie pas d'autres arguments), un fichier s'ouvre en mode **lecture** et en **UTF-8**. 
- **Ouvrir un fichier =/= lire un fichier**. Pour lire un fichier, on utilise `.read()`.

---

**La method `.read()`** sert à accéder au contenu d'un fichier ouvert.<br>
- **Syntaxe** (en exemples): 
    - En assignant une variable
    ```
	fichier_ouvert = open('nom_du_fichier')
  print(fichier_ouvert.read())
  ```
    - Sans assigner de variable<br>`open('nom_du_fichier').read()`
    - Méthode express pour afficher un texte dans un fichier:<br>`print(open('data/cid.v1071.1682.txt').read())`
- On peut **définir un texte comme une variable**. Il est alors manipulable comme **chaîne de caractères**<br>`texte = open('nom_du_fichier').read()`
 
---
 
**La method `.close()`** sert à fermer un fichier.<br>
- `fichier_ouvert.close()`
- **Fermer le fichier** dès qu'on en a plus besoin: garder un fichier ouvert utilise plus de ressources et augmente le risque d'erreurs.

---

**La method `.write()`** sert à écrire dans un fichier.<br>
- `fichier_ouvert.write()`
- Ne fonctionne qu'**avec des fichiers ouverts pour écriture**: préciser l'argument `w` quand on utilise `open()`.

---

**En utilisant `with...as`**
- `with` sert à **assigner un fichier à une variable**
- La variable est **définie pour ce bloc de code** uniquement: à la fin du bloc, le fichier se ferme automatiquement sans avoir à utiliser `.close()`
- **Les variables modifiées dans cet ensemble restent disponibles après la fin du bloc**. 
    - Dans l'exemple ci-dessous:<br>
    	```
		with open("data/cid.v1071.1682.txt") as fichier_cid:
 		texte = fichier_cid.read()
		```
        - `fichier_cid` n'est pas utilisable après l'exécution de la boucle: le fichier texte est clos en dehors de la boucle `with`. Il y aura une erreur **`I/O operation on closed file`**: erreur de lecture et d'écriture sur un fichier fermé. 
        - `texte` reste utilisable en dehors de la boucle: on a créé une variable `texte`et on lui a assigné le contenu de `fichier_cid` alors que `"data/cid.v1071.1682.txt"` était ouvert.
    - En bref et dans mes mots: 
        - À la fin de la boucle, la variable assignée à un fichier ouvert avec `with` continue d'exister, mais elle correspond à un fichier fermé.
        - Les variables assignées avec `with` ne sont pas utilisables en dehors de la boucle, puisque le fichier auquel elles renvoient est fermé.
        - Les autres variables créées ou modifiées pendant l'exécution de la boucle restent utilisables après la boucle.

- L'objectif est de **simplifier la gestion des fichiers**, optimiser le code et dimininuer la quantité de ressources utilisées



---


# Les fonctions

Une fonction est un **bloc de code qui s'exécute lorsqu'il est appelé**, qui prend optionnellement des paramètres et qui **retourne des valeurs** (sauf exception). 
- Il existe deux types de fonctions: les fonctions **sans paramètres** et les fonctions **avec paramètres**.
- On peut parler d'argument et de paramètre. Nuance entre les termes: on parle d'argument dans la définition de la fonction, de paramètre dans l'utilisation de la fonction.

**Définir une fonction avec `def`**<br>
```python
def fonction_avec_parametres(parametre1, parametre2, parametre3):
    # Le code de la fonction
def fonction_sans_parametre():
    # le code la fonction
```

---

**Appeler une fonction**<br>Écrire le nom de la fonction suivi de parenthèses avec les paramètres (si la fonction accepte des paramètres)
```python
def my_function():
    print("Hello from a function")
my_function()
```

---

**Définir une valeur de retour avec `return`**<br>`return` renvoie des valeurs de retour, ce qui permet d'accéder aux résultats calculés dans la fonction.
- La fonction **prend fin** quand elle atteint un `return`: dans une fonction, il ne peut y avoir qu'un `return`
```python
def carre(x):
    return x*x
```

---

**Les arguments/paramètres**
<br>Ils servent à préciser des **informations supplémentaires** sur comment la fonction doit s'exécuter: avec quelles variables...
- Un argument peut être de **n'importe quel data type**: string, int, bool...
- Une fonction doit être appelée avec **le bon nombre d'arguments**: si une fonction est définie avec 2 arguments, il faut préciser 2 arguments quand on l'utilise
- Ils sont spécifiés après le nom de la fonction, entre parenthèses **`()`**, séparés d'une virgule **`,`**
- **Les arguments arbitraires, `*arg`** sont utilisés quand on veut pouvoir préciser un nombre variable d'arguments. Dans ce cas, le nom du paramètre est **précédé d'une astérisque `*`**
```python
def myfunction(*arguments)
```
- **Les arguments mots-clés / keyword arguments, `key = value`**: la syntaxe key = value permet de rentrer des arguments dans un ordre autre que celui utilisé par la définition de la fonction. On écrit le nom de l'argument, suivi d'un `=` et de la valeur qu'on attribue pour cet argument.
```python
myfunction(arg3 = "a", arg1 = "e", arg2 = "z")
```
- **Les arguments mots-clés arbitraires / arbitrary keyword arguments**, `**kwargs` permet de pouvoir rentrer un nombre variable d'arguments mots-clés.

---

**La portée/scope d'une fonction**
- Les variables définies dans une fonction ont une **portée limitée à cette fonction**: elles n'existent que dans le cadre de cette fonction et ne sont pas accessibles ensuite (comme les variables définies avec `with...as`).
- `return` permet d'accéder au résultat d'une fonction: sans `return` le résultat ne serait plus accessible une fois la fonction exécutée !
- On utilise **`global` pour changer la portée d'une variable**: quand on définit une variable dans une fonction, on la précède de la fonction `global` comme ci-dessous:<br>
```python
def myfunc():
    global x
    x = "fantastic"
myfunc()
```

---

**Les fonctions récursives**<br>
- Une fonction récursive est une **fonction qui s'appelle elle-même**
- C'est risqué mais ça peut être très utile puisqu'on peut boucler à travers tous les résultats produits.<br>
``def tri_recursion(k):
  if(k > 0):
    result = k + tri_recursion(k - 1)
    print(result)
  else:
    result = 0
return result``

---

**Documenter une fonction avec la méthode Sphinx et la RST**

Après avoir nommé une fonction, au moment où on la définit:
- **`"""`**: Ouvrir un commentaire multi-ligne
- **`Première ligne`**: description de la fonction
- **`:param PARAMETRE:`** nom et description du premier paramètre
- **`:type PARAMETRE:`** type de données du premier paramètre (`list`, `str`, `dict`, `int`, `TextIOWrapper`, etc.)
    - On fait pareil pour tous les paramètres de la fonction
- **`:returns:`** description de ce qui est renvoyé par la fonction
- **`:rtype:`** *return type*, type de données renvoyées (`list`, `str`, `dict`, `int`, `TextIOWrapper`, etc.)
- **`"""`**: Fermer le commentaire multi-ligne et écrire sa fonction

Exemple:
```python
def comptage2(mots):
    """ Compte et stocke le décompte de chaque mot dans une liste de mots
    
    :param mots: Liste de mosts
    :type mots: list
    :returns: Dictionnaire où les clefs sont les mots et les valeurs le nombre d'occurrences
    :rtype: dict
    """
```


---
**`enumerate()`**

Fonction qui **énumère les items dans un itérable** en **générant des tuples** index de la valeur -- valeur pour tous les éléments de l'itérable.
- **syntaxe** - `enumerate(iterable, start=0)`, avec
	- `iterable`  - itérable à énumérer
	- `start` - numéro où commencer l'énumération (si `start=5`, l'énumération commence à 5, pas à 0)
- pour **retourner les résultats d'enumerate**, il faut retyper: `list(enumerate(iterable))`