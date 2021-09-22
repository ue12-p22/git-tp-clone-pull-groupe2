# TP sur clone et pull

## `step0`:

  * l'enseignant a publié un repo  
    (suivez les instructions du prof)
  * l'élève l'a clôné
  * → un nouveau dossier est créé,  
    on se déplace dedans avec `cd`
  * → observer le contenu de `file1.md`

## `step1`:

  * l'élève ne fait **aucun changement** dans son repo
  * l'enseignant publie une modification  
    (ajout de 2 lignes dans `file1.md`)
  * l'élève tire avec `git pull`  
  * NB
    * → vérifier que le changement est répercuté dans le repo élève

## `step2`:

  * l'enseignant publie du nouveau contenu,  
    dans un nouveau fichier (`file2.md`)
  * l'élève tire avec `git pull` 
  * NB
    * → vérifier que le changement est répercuté dans le repo élève

## `step3`:

  * l'élève modifie la **`ligne #4`** dans le fichier `file1.md`
  * l'enseignant publie une nouvelle version dans laquelle il a modifié la **`ligne #2`**
  * l'élève essaie de tirer avec `git pull`  
  il constate que cela ne fonctionne pas
  * l'élève **crée un commit** avec son changement  
  (la `ligne 4` du fichier `file1.md`, donc)
  * il tire à nouveau
  * NB
    * → vérifier que les 2 modifications ont été fusionnées dans `file1.md`
    * → observer le graphe des commits
    * → vérifier l'état des modifications pendantes

****
à faire
****

## `step4`:

  essentiellement la même chose que le `step3`, mais les deux changements concernent **la même ligne**

  * l'élève modifie la **`ligne #6`** dans le fichier `file1.md`  
    par exemple en y mettant  
    `6 studentboom`
  * l'enseignant publie un changement **sur la même ligne**, qui contient  
    `6 teacherboom`
  * on essaie d'appliquer la même approche qu'au `step3`
  * la fusion est commencée, mais déclenche un **conflit**
  * l'élève résoud le conflit:
    * il édite manuellement le fichier `file1.md`
    * pour réconcilier les deux modifications,  
      par exemple en gardant comme 6-ème ligne  
      `6 studentboom teacherboom`
    * il peut alors terminer la fusion
    * pour cela il ajoute `file1.md` avec `git add`
    * et conclut avec `git merge --continue`
  * NB
    * → observer comment le contenu de `file1.md` est annoté autour du conflit, pour montrer les deux versions candidates
