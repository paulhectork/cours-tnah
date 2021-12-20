# LATEX

# INTRODUCTION
- latex est un **langage informatique** qui permet d'écrire et produire des pdf en automatisant la mise en page
- **extension** :
	- `.tex` - le texte brut
	- `.pdf` - le document compilé
- **spécificité** du langage: **séparation fond-forme**
	- fond: terme propre écrit
	- forme: mise en page et structuration intellectuelle du document, grâce à des commandes
- **pour la petite histoire**
	- 1997: **Tex** créé par Donald Knuth pour permettre la production d'articles mathématiques
	- 1985: **Latex** créé en 1985, surcouche de tex. Évolutions:
		- simplification du langage, augmentation de ses capacités
		- permet de produire des beaux documents
- **inconvéniens du wysiwyg** (type libreoffice)
	- format très lourd, facilement alourdis par ajout d'images
	- demande beaucoup de mise en page
	- problèmes de formats et de versions des logiciels
- **avantages de latex**:
	- mise en page automatique (texte justifié, numérotation des pages et parties...)
	- production automatique de tables, d'index...
	- ajout d'images, figures...
	- fonctionnalités pour édition scientifique
- **syntaxe et écriture**
	- **commandes simples**: antislash, nom de commande, options entre crochets, accolades pour l'elt principal
		-`\documentclass[a4paper, 12pt, twoside]{book}`
	- **environnements** : ensemble de texte encadré par une balise de début et une balise de fin
		- `\begin{document} Texte \end{document}`
	- utilise des **paquets** supplémentaires
- **langage et éditeurs**
	- en local: TexStudio
	- en ligne: Overleaf


---
# COMMANDES
- **choisir un compileur** : `XeLaTeX` c'est pas mal
- **commentaires**: `%commentaire`
- **déclaration de classe de document** :  `\documentclass{class}` : 1e déclaration obligatoire
- **utiliser des paquets**: `\usepackage{pkgname}`
- **commandes sans accolades** : certaines commandes ne prennent pas d'argument et s'écrivent donc sans `{}` ; dans ce cas, la commande s'applique à toute la suite du texte jusqu'à revenir au mode par défaut


---
**forme des caractères**
- **gérer les langues** : 
- **texte en gras** : `\textbf{blabla}`
- **texte en italique** : `\textit{blala}`
- **texte souligné** : `\underline{blabla}`
- **petites capitales** : `\textsc{blabla}`
- **encadrer** : `\fbox{blabla}`
- **barrer du texte** : 
	- au début du document, utiliser le paquer `soul`
	- ensuite, `st{blabla}`
- **basculer en police mono** : `\texttt{blabla}`
- **combiner des commandes** : `\commande1{\commande2{blabla}`
	- *exemple gras et italique: `\textit{\textbf{blabla}}`
- **texte en exposant** `\textsuperscript{blabla}` **ou en surbaissé** `\textsubscript{blabla}`
- **taille des caractères** (sans accolades)
	- `\tiny` : tout petit
	- `\small` : petit
	- `\large` : grand
	- `\Large` : très grand
	- `\huge` : énorme

---
**structure du document**
- **nouveau document** : `\documentclass{}` et `\begin{document}`
- **nouveau chapitre** : `\chapter{title}`
- **nouvelle section** : `\section{title}`
- **nouvelle sous-section** : `\subsection{title}`
- **nouveau paragraphe** : `\part`
- **retour à la ligne** :
	- `saut de ligne` (on laisse une ligne vide entre les 2 lignes) ; **indentation automatique**
	- `\\` : forcer le retour à la ligne; **pas d'indentation automatique**
- **ligne vide dans le pdf**: `\\ + saut de ligne`
- **retour à la ligne sans indentation** : `\noindent`


---
**environnements**
Les environnements servent à contenir des grosses parties de texte
- **début et fin d'un environnement**: 
	- `\begin{eltname}` et `\end{eltname}`
	- *exemple pour début et fin d'un document:*
		```
			\begin{document}
			texte
			\end{document}
		```
- les environnements **peuvent être imbiqués** (faire un begin avant d'avoir fermé l'environnement précédent)
- **environnement citation** : `\begin{qutotation}`
- **environnement langue** : `\begin{otherlanguage}{lg_name}`
- **listes non-ordonnées** : `itemize`
	```
		\begin{itemize}
			\item blabla
			\item bleble
		\end{itemize}
	```
- **listes ordonnées** : `enumerate`
	```
		\begin{enumerate}
			\item blabla
			\item bleble
		\end{itemize}
	```
	- on peut **imbriquer des listes !**
- **images** : `figure`
	- `centering` - comportement de l'image (centrée)
	- `includegraphics` - intégrer l'image
	- `caption` - légende
	- `label` - identifiant de l'image
	```
		\begin{figure}
    		\centering
    		\includegraphics[width=5cm]{img/captureDecran.png}
    		\caption{Première image}
    		\label{fig:my_label}
		\end{figure}
	```
-**tableaux**: `tabular`
	- `\begin{tabular}` : créer l'environnement
	- `{c|...|c}` : déclarer le nb de colonnes ; on met autant de `c` que de colonnes
	- `\hline` : tracer des lignes horizontales ; en toute rigueur, on met une ligne horizontale par ligne + une ligne horizontale au début
	- `texte1 & texte2` : écrire le texte dans les lignes; `&` sert à séparer les colonnes
```
		\begin{tabular}{c|c}
		\hline
			texte1 & texte2\\ \hline
			texte3 & texte4\\ \hline
		\end{tabular}
```




---
**espaces**
- **par défaut** : un espace c'est un espace
- **espace insécable** `~`
- **espaces fines** : `\,` (espaces dans nombres, par exemple: `9\,0000`)

---
**caractères spéciaux et caractères réservés**
- **caractère d'échappe** : `\`
- **numérotation**
	- **première** : `1\ere{}`, `\primo`
	- **deuxième** : `2\eme{}`, `\secundo`
	- **autres systèmes de numérotation** : `\no`, `\no`, `\nos`, `\No`, `\Nos`
- **guillemets**
	- **guillemets français** : 
		- charger la langue française : `\usepackage[french]{babel}`
		- utiliser og et fg : `\og texte \fg`
	- **guillemets anglais** : `''`
- **cadradins**
	- **quart cadratin** :`-`
	- **semi-cadratin** : `--`
	- **cadration** : `---`
- **le backslash** : `\textbackslash`
- **caractères spéciaux** : `\`
	- `\{`, `\}`
	- `%`

---
**langues**
- la langue doit être chargée dans babel
- sélectionner une langue **pour tout le document** : `\selectlangage{language_name}`
- changer de langue **pour une partie du document** : `\begin{otherlanguage}{language_name}` et `\end{otherlanguage}`


---
**images**
- **charger le paquer pour images** : `usepackage{graphicx}`
- **créer un dossier d'images** pour pouvoir appeler les images (dans l'environnement graphique), dans lequel on enregistre les images qu'on veut utiliser
- **ajouter l'image au document** : `\includegraphics[]{}`
	- **`[]` - les options** (width, height...)
	- **`{}` - le chemin vers le fichier**
	- *exemple* `\includegraphics[width=5cm]{img/capture.png}`
- **créer un environnement** pour ajouter des détails sur l'image (légende...) :
	- `centering` - comportement de l'image (centrée)
	- `includegraphics` - intégrer l'image
	- `caption` - légende
	- `label` - identifiant de l'image
	```
		\begin{figure}
    		\centering
    		\includegraphics[width=5cm]{img/captureDecran.png}
    		\caption{Première image}
    		\label{fig:my_label}
		\end{figure}
	```
	
	
	---
**tableaux**
- **petits tableaux**: `tabular`
	- `\begin{tabular}` : créer l'environnement
	- `{c|...|c}` : déclarer le nb de colonnes ; on met autant de `c` que de colonnes
	- `\hline` : tracer des lignes horizontales ; en toute rigueur, on met une ligne horizontale par ligne + une ligne horizontale au début
	- `texte1 & texte2` : écrire le texte dans les lignes; `&` sert à séparer les colonnes
```
		\begin{tabular}{c|c}
		\hline
			texte1 & texte2\\ \hline
			texte3 & texte4\\ \hline
		\end{tabular}
```
- **tableaux sur plusieurs pages** : `longtable`
	- en préambule, **charger les paquets**: `longtable`, 
		- `lscape`, `pdflscape` : faire basculer le document en mode paysage
		- `longtable` : créer le tableau
	- générer les environnements: `\begin{landscape}` et `\begin{longtable}`
	- remplir le tableau, comme tabular:
	```
		\begin{landscape}
		\begin{longtable}{c|c|c|c|c|c}
			a &b &c &d &d &e &f\\
	```
- **utiliser des couleurs dans les tableaux**
	- **charger les paquets**:
		- `colortbl` : colorier les tables
		- `xcolor` : meilleure gestion des couleurs, avec gradients
		- `diagbox` : scinder les colonnes diagonalement
	- **créer l'environnement** `table` (pas tabular!)
	- **scinder la première colonne**: `diagbox{}{}` (on met le contenu des colonnes scindées en diagonales)
	- **colorier une case** : `\cellcolor{colorname}` au début de la case
	- **tldr**: 
	```
		\begin{table}[!h]
    	\centering
    	\begin{tabular}{|c|c|c|}
    	\hline
      	\diagbox{A}{E} & \cellcolor{red}  texte  & z \\ \hline
      	 s & \cellcolor{blue} d & r\\ \hline
    	\end{tabular}
    	\caption{Caption}
		\end{table}
	```


---
**listes**

ratrapper

---
**métadonnées**
- dans le prologue, **bases**:
	- `\author{authorname}`
	- `\title{titledoc}`
	- `\date{date}`
- dans le prologue, **avec le pckg `hyperref`**
	- `usepackage{hyperref}` : importer le paquet
	- `\hypersetup{pdfauthor={text}, pdftitle={text}, pdfsubject= {text}, pdfkeywords={text1} {textN}}`


---
**définir des commandes personnalisées - `newcommand`**

- syntaxe : `\newcommand{commandname}[arguments]{commandaction}`
- les noms de commandes commencent par `\`
- *exemple: `\newcommand{\bcp}{\textbf{beaucoup}}`*


---
**annexes - `appendix`**

- `\usepackage{appendix}` (à charger avant `hyperref`)
- reste: j'ai pas compris mais bref: 
	```
		\appendix
		\renewcommand{\appendixpagename}		{Annexes}
		\renewcommand{\appendixtocname}{Annexes}
		\addappheadtotoc
		\appendixpage
	```

---
**table des matières**

à la fin du document:
```
	\listoffigures
	\listoftables
	\tableofcontents
```


---
**index**
- importer le paquet `imakeidx` dans le préambule
- créer un nom d'index: `makeindex[name=idxname]` dans le préambule (on peut créer autant de noms d'index qu'on veut)
- ajouter des éléments du texte dans l'index: `\index[idxname]{mot-à-ajouter}`
- créer l'index: `\printindex[idxname]` là où on veut que l'index soit (à la fin du doc, par exemple)
- si **on a un seul index** : pas besoin de faire `makeindex` si de spécifier des noms d'index: `\index{mot}` sans nom d'index entre crochets

- **sous-entrées d'index** : ratrapper
