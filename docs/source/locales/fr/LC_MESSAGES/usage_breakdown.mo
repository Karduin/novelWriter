��    C      4  Y   L      �  <   �  &   �  J     O   `  �   �    �  '   �  /   �  1   	  H   L	  �  �	     _  �   u     1  U  ?    �  2  �  �  �     R  �  h     "  �   /  �   �  �   �  �   t  �     �   �  �   '  *  �     �       �             -     <     L  �   i  )   �  U       u    �  G  �     �  �  �  L   p!  �   �!    �"  �  �#  z  c%  (  �&  u   (  W   }(  �   �(  ~   })    �)  �   +  8   �+    �+  9  �,    
.  /  /  �   >0  h   51  %  �1  0  �2  (  �3  [  5  K   z6  :   �6  i   7  z   k7  6  �7  |  9  /   �:  I   �:  H   ;  Z   ];  X  �;     >  �   ->     ?  �  
?  ?  �@  �  �A  �  ]C  3   E  ^  GE     �G  �   �G  �   �H  *  NI  �   yJ  �   hK  �   L  �   �L  x  bM     �N  !   �N  W  O     mP     �P     �P  +   �P  �   �P  /   �Q  �  �Q     �S  }  �S  t  U  K  �V  �  �W  X   �Y  a  �Y  #  V[  �  z\    g^  P  s`  �   �a  x   Nb  �   �b  �   ]c  D  �c  �   2e  G   �e  J   f  {  kg  <  �h  ~  $j  ?  �k  �   �l  x  �m  �  �n  }  �p     <   :      )   B   9         5   >   .   A   $                                   +   !          1      '   
           6             8      ,                 /   7   #             3           -         ?      *   (   &                4       ;   %      2                      0   	   =   C   "             @                  **Level 1** is used for the novel title, and for partitions. **Level 2** is used for chapter tiles. **Level 3** is used for scene titles -- optionally replaced by separators. **Level 4** is for section titles within scenes, if such granularity is needed. A global search tool is available from the side bar. It allows you to search through your entire project. The tool does not provide a replace feature. There is a search and replace tool available in the document editor that acts on the open document. A number of new formatting options were added in 2.2 to allow for some special formatting cases. At the same time, a small formatting toolbar was added to the editor. It is hidden by default, but can be opened by pressing the button in the top--left corner of the editor header. A screenshot of the Novel Outline View. A screenshot of the Novel Tree and Editor View. A screenshot of the Project Tree and Editor View. An illustration of how heading levels correspond to the novel structure. An optional third panel on the right side contains a document viewer which can view any document in your project independently of what is open in the document editor. This panel is not intended as a preview window, although you can use it for this purpose if you wish. For instance if you need to check that the formatting tags behave as you expect. However, the main purpose of the viewer is for viewing your notes next to your editor while you're writing. Building a Manuscript By default, novelWriter uses a light colour theme. You can also choose between a standard dark theme that have neutral colours, or a series of other included themes, from **Preferences**. Colour Themes Each heading is indented according to the heading level, not its parent/child relationship to other elements of your project. You can open and edit your novel documents from this view as well. All headings contained in the currently open document should be highlighted in the view to indicate which ones belong together in the same document. Editing text files in the ``content`` folder is less risky as these are just plain text. Editing the main project XML file, however, may make the project file unreadable and you may crash novelWriter and lose project structure information and project settings. Firstly, all the text you add to your project is saved directly to your project folder in separate files. Only the project structure and the text you are currently editing is stored in memory at any given time, which means there is a smaller risk of losing data if the application or your computer crashes. For advanced processing, you can export the content of the project to a JSON file. This is useful if you want to write your own custom processing script in for instance Python, as the entire novel can be read into a Python dictionary with a couple of lines of code. The JSON file can be populated with either HTML formatted text, or with the raw text as typed it into the novel documents. GUI Layout and Design Generally, the novel view should update when you make changes to the novel structure, including edits of the current document in the editor. The information is only updated when the automatic save of the document is triggered, or you manually press :kbd:`Ctrl+S` to save changes. (You can adjust the auto-save interval in **Preferences**.) You can also regenerate the whole novel view by pressing the refresh button in the novel view header. How it Works If the project or novel view does not have focus, pressing :kbd:`Ctrl+T` switches focus to whichever of the two is visible. If one of them already has focus, the key press will switch between them instead. If you click the triangular icon to the right of each item, a tooltip will pop out showing all the meta data collected for that heading. If you have multiple **Novel** type root folders, the header of the novel view becomes a dropdown box. You can then switch between them by clicking the :guilabel:`Outline of ...` text. You can also click the novel icon button next to it. If you switch between light and dark mode on the GUI, you should also switch editor theme to match, otherwise icons may be hard to see in the editor and viewer. If you wish, you *can* create your own colour themes, and even have them added to the application. See :ref:`a_custom_theme` for more details. It is possible to show an optional third column in the novel view. The settings are available from the menu button in the toolbar. Likewise, pressing :kbd:`Ctrl+E` will switch focus to the document editor or viewer, or if any of them already have focus, it will switch focus between them, Most formatting features supported are available through convenient keyboard shortcuts. They are also available in the main menu under **Format**, so you don't have to look up formatting codes every time you need them. For reference, a list of all shortcuts can be found in the :ref:`a_kb` chapter. Novel Outline View Novel View and Editor View On the left side of the main window, you will find a sidebar. This bar has buttons for the standard views you can switch between, a quick link to the **Build Manuscript** tool, and a set of project-related tools and quick access to settings at the bottom. Project Layout Project Search Project Storage Project Tree and Editor View Secondly, having multiple small files means it is very easy to synchronise them between computers with standard file synchronisation tools. See :ref:`a_manuscript` for more details. Since novelWriter has to keep track of a bunch of files and folders when a project is open, it may not run well on some virtual file systems. A file or folder must be accessible with exactly the path it was saved or created with. An example where this is not the case is the way Google Drive is mapped on Linux Gnome desktops using gvfs/gio. Switching Focus Switching the GUI colour theme does not affect the colours of the editor and viewer. They have separate colour selectable from the "Document colour theme" setting in **Preferences**. They are separated because there are a lot more options to choose from for the editor and viewer. The HTML5 format is suitable for conversion by a number of other tools like Pandoc_, or for importing into word processors if the Open Document or Word Document format isn't suitable. The Open Document format is supported by most office type applications, so is the Word Document format. In addition, printing is also possible. The editor also has a **Focus Mode** you can toggle either from the menu, from the icon in the editor's header, or by pressing :kbd:`F8`. When **Focus Mode** is enabled, all the user interface elements other than the document editor itself are hidden away. The files of a novelWriter project are stored in a dedicated project folder. The project structure is kept in a file at the root of this folder called ``nwProject.nwx``. All the document files and associated meta data are stored in other folders below the project folder. For a more technical description of what all the files mean and how they're organised, see the :ref:`a_storage` section. The four heading levels, **Level 1** to **Level 4**, are treated as follows: The heading levels for partitions, chapters and scenes only apply within novelWriter. When you generate your manuscript, chapters are considered as the topmost heading level, with scenes below it. Partitions are inserted as text elements in most formats. The main features of novelWriter are listed in the :ref:`a_intro` chapter. In this chapter, we go into some more details on how they are implemented. This is intended as an overview. Later on in this documentation these features will be covered in more detail. The main point of novelWriter is that you are free to organise your project documents as you wish into sub-folders or sub-documents, and split the text between these documents in whatever way suits you. All that matters to novelWriter is the linear order the documents appear at in the project tree (top to bottom). The chapters, scenes and sections of the novel are determined by the headings within those documents. The main window does not by default have an editor toolbar like many other applications do. This reduces clutter, and since the documents are formatted with style tags, it is not needed most of the time. Still, a small formatting toolbar can be popped out by clicking the left-most button in the header of the document editor. It gives quick access to standard formatting codes. The project can at any time be assembled into a range of different formats through the **Build Manuscript** tool. Natively, novelWriter supports `Open Document`_, Microsoft Word Document (known as `Office Open XML`_), HTML5, and various flavours of Markdown. You can also generate a PDF document. The project tree will highlight with a different background colour the document that is currently open in the editor. The project tree will select an icon for the document based on the first heading in it. The user interface of novelWriter is intended to be as minimalistic as practically possible, while at the same time provide useful features needed for writing a novel. These two shortcuts make it possible to jump between all these GUI elements without having to reach for the mouse or touchpad. This heading level structure is only taken into account for :term:`novel documents`. For :term:`project notes`, the heading levels have no structural meaning, and you are free to use them however you want. See :ref:`a_struct` and :ref:`a_references` for more details. This is a brief introduction to how you should structure your writing projects. All of this will be covered in more detail later. This way of storing data was chosen for several reasons. When the application is in **Novel Outline View** mode, the tree, editor and viewer are replaced by a large table that shows the entire novel structure with all the tags and references listed. Pretty much all collected meta data is available here in different columns. When the application is in **Novel Tree View** mode, the project tree is replaced by an overview of your novel structure for a specific Novel :term:`root folder`. Instead of showing individual documents, the tree now shows all headings of your novel text. This includes multiple headings within the same document. When the application is in **Project Tree View** mode, the work area of the main window is split in two, or optionally three, panels. The left-most panel contains the project tree and all the documents in your project. The second panel is the document editor. You can add documents as child items of other documents. This is often more useful than adding folders, since you anyway may want to have the chapter heading in a separate document from your individual scene documents so that you can rearrange scene documents freely without affecting chapter placement. You can now define multiple build definitions in the **Build Manuscript** tool. This allows you to define specific settings for various types of draft documents, outline documents, and manuscript formats. See :ref:`a_manuscript` for more details. You can now drag and drop documents from the project tree onto the editor or viewer panels to open them. You can select which novel root folder to display from the dropdown box, and you can select which columns to show or hide from the menu button. You can also rearrange the columns by drag and drop. The app remembers your column order and sizes between sessions, and for each individual project. You should not add additional files to the project folder yourself. Nor should you, as a rule, manually edit files within it. If you really must manually edit the text files, e.g. with some automated task you want to perform, you need to rebuild the :term:`Project Index` when you open the project again. novelWriter is not intended to be a full office type word processor. It doesn't support images, links, tables, and other complex structures and objects often needed for such documents. Formatting is limited to headings, in-line basic text formats, text alignment, and a few other simple features. Project-Id-Version: novelWriter 2.6b1
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2025-01-27 13:21+0100
Last-Translator: 
Language-Team: fr <LL@li.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
Generated-By: Babel 2.16.0
X-Generator: Poedit 3.4.2
 **Le niveau 1** est utilisé pour le titre du roman et pour les partitions. Le **niveau 2** est utilisé pour les titres de chapitres. **Le niveau 3** est utilisé pour les titres de scènes, éventuellement remplacés par des séparateurs. **Le niveau 4** est destiné aux titres de section à l'intérieur des scènes, si une telle granularité est nécessaire. Un outil de recherche global est disponible dans la barre latérale. Il vous permet d'effectuer une recherche dans l'ensemble de votre projet. Cet outil n'offre pas de fonction de remplacement. Un outil de recherche et de remplacement est disponible dans l'éditeur de documents et agit sur le document ouvert. Un certain nombre de nouvelles options de formatage ont été ajoutées dans la version 2.2 pour permettre certains cas de formatage particuliers. En même temps, une petite barre d'outils de formatage a été ajoutée à l'éditeur. Elle est cachée par défaut, mais peut être ouverte en appuyant sur le bouton situé dans le coin supérieur gauche de l'en-tête de l'éditeur. Capture d'écran de la vue d'ensemble du roman. Capture d'écran de l'arborescence des romans et de la vue de l'éditeur. Capture d'écran de l'arborescence du projet et de la vue de l'éditeur. Illustration de la correspondance entre les niveaux de rubriques et la structure du roman. Un troisième panneau facultatif sur le côté droit contient une visionneuse de documents qui peut afficher n'importe quel document de votre projet indépendamment de ce qui est ouvert dans l'éditeur de documents. Ce panneau n'est pas conçu comme une fenêtre de prévisualisation, bien que vous puissiez l'utiliser à cette fin si vous le souhaitez. Par exemple, si vous avez besoin de vérifier que les balises de formatage se comportent comme vous le souhaitez. Cependant, l'objectif principal de la visionneuse est de visualiser vos notes à côté de votre éditeur pendant que vous écrivez. Élaboration d'un manuscrit Par défaut, novelWriter utilise un thème de couleur claire. Vous pouvez également choisir un thème sombre standard avec des couleurs neutres, ou une série d'autres thèmes inclus, dans les **Préférences**. Thèmes Chaque titre est indenté en fonction du niveau du titre, et non de sa relation parent/enfant avec d'autres éléments de votre projet. Vous pouvez également ouvrir et modifier vos nouveaux documents à partir de cette vue. Toutes les rubriques contenues dans le document actuellement ouvert doivent être mises en évidence dans la vue pour indiquer celles qui appartiennent au même document. L'édition de fichiers texte dans le dossier ``content`` est moins risquée car il s'agit de texte simple. Cependant, éditer le fichier XML du projet principal peut rendre le fichier du projet illisible et vous risquez de planter novelWriter et de perdre les informations sur la structure et les paramètres du projet. Tout d'abord, tout le texte que vous ajoutez à votre projet est enregistré directement dans le dossier de votre projet, dans des fichiers séparés. Seule la structure du projet et le texte que vous êtes en train d'éditer sont stockés en mémoire à un moment donné, ce qui signifie qu'il y a moins de risque de perdre des données si l'application ou votre ordinateur tombe en panne. Pour un traitement avancé, vous pouvez exporter le contenu du projet vers un fichier JSON. Ceci est utile si vous souhaitez écrire votre propre script de traitement personnalisé, par exemple en Python, car le roman entier peut être lu dans un dictionnaire Python avec quelques lignes de code. Le fichier JSON peut être alimenté par du texte formaté en HTML ou par le texte brut tel qu'il a été tapé dans les documents du roman. Mise en page et conception de l'interface graphique En général, la vue du roman doit être mise à jour lorsque vous apportez des modifications à la structure du roman, y compris les modifications du document courant dans l'éditeur. Les informations ne sont mises à jour que lorsque la sauvegarde automatique du document est déclenchée, ou lorsque vous appuyez manuellement sur :kbd:`Ctrl+S` pour sauvegarder les modifications (vous pouvez ajuster l'intervalle de sauvegarde automatique dans **Préférences**). Vous pouvez également régénérer la vue du roman en entier en appuyant sur le bouton d'actualisation dans l'en-tête de la vue du roman. Comment ça marche Si la vue du projet ou du roman n'a pas le focus, presser :kbd:`Ctrl+T` fait basculer le focus sur celle des deux qui est visible. Si l'une d'entre elles a déjà le focus, la pression sur la touche permet de passer de l'une à l'autre. Si vous cliquez sur l'icône triangulaire à droite de chaque élément, une infobulle s'affichera, indiquant toutes les métadonnées collectées pour cette rubrique. Si vous avez plusieurs dossiers racine de type **Nouveau**, l'en-tête de la vue roman devient une liste déroulante. Vous pouvez alors passer de l'un à l'autre en cliquant sur le texte :guilabel:`Outline of ...`. Vous pouvez également cliquer sur le bouton de l'icône du roman situé à côté. Si vous passez du mode clair au mode foncé dans l'interface graphique, vous devez également changer le thème de l'éditeur pour qu'il corresponde, sinon les icônes risquent d'être difficiles à voir dans l'éditeur et le visualiseur. Si vous le souhaitez, vous pouvez créer vos propres thèmes de couleurs, et même les ajouter à l'application. Voir :ref:`a_custom_theme` pour plus de détails. Il est possible d'afficher une troisième colonne facultative dans la vue nouvelle. Les paramètres sont disponibles à partir du bouton de menu dans la barre d'outils. De même, en appuyant sur :kbd:`Ctrl+E`, le focus passe à l'éditeur ou à l'afficheur du document, ou si l'un d'entre eux est déjà au focus, il passe de l'un à l'autre, La plupart des fonctions de formatage prises en charge sont accessibles par des raccourcis clavier pratiques. Ils sont également disponibles dans le menu principal sous **Format**, de sorte que vous n'avez pas à chercher les codes de formatage à chaque fois que vous en avez besoin. Pour référence, une liste de tous les raccourcis se trouve dans le chapitre :ref:`a_kb`. Vue d'ensemble du roman Vue du roman et vue de l'éditeur Sur le côté gauche de la fenêtre principale, vous trouverez une barre latérale. Cette barre comporte des boutons pour les vues standard entre lesquelles vous pouvez basculer, un lien rapide vers l'outil **Compiler le manuscrit**, ainsi qu'un ensemble d'outils liés au projet et un accès rapide aux paramètres dans la partie inférieure. Structure du projet Recherche dans un projet Stockage du projet Arborescence du projet et vue de l'éditeur Deuxièmement, le fait d'avoir plusieurs petits fichiers signifie qu'il est très facile de les synchroniser entre ordinateurs à l'aide d'outils de synchronisation de fichiers standard. Voir :ref:`a_manuscript` pour plus de détails. Comme novelWriter doit garder la trace d'un grand nombre de fichiers et de dossiers lorsqu'un projet est ouvert, il peut ne pas fonctionner correctement sur certains systèmes de fichiers virtuels. Un fichier ou un dossier doit être accessible avec exactement le chemin avec lequel il a été sauvegardé ou créé. Un exemple où ce n'est pas le cas est la façon dont Google Drive est mappé sur les bureaux Linux Gnome en utilisant gvfs/gio. Changer de focus Le changement de thème de couleur de l'interface graphique n'affecte pas les couleurs de l'éditeur et du visualiseur. Ils ont des couleurs séparées qui peuvent être sélectionnées à partir du paramètre « Thème de couleur du document » dans les **Préférences**. Elles sont séparées parce qu'il y a beaucoup plus d'options à choisir pour l'éditeur et le visualiseur. Le format HTML5 peut être converti par un certain nombre d'autres outils tels que Pandoc_, ou importé dans des traitements de texte si les formats Open Document ou Word Document ne conviennent pas. Le format Open Document est pris en charge par la plupart des applications bureautiques, tout comme le format Word Document. En outre, l'impression est également possible. L'éditeur dispose également d'un **Mode Focus** que vous pouvez activer soit à partir du menu, soit à partir de l'icône dans l'en-tête de l'éditeur, soit en appuyant sur :kbd:`F8`. Lorsque le **Mode Focus** est activé, tous les éléments de l'interface utilisateur autres que l'éditeur de document lui-même sont cachés. Les fichiers d'un projet novelWriter sont stockés dans un dossier dédié au projet. La structure du projet est conservée dans un fichier à la racine de ce dossier appelé ``nwProject.nwx``. Tous les fichiers de documents et les métadonnées associées sont stockés dans d'autres dossiers sous le dossier du projet. Pour une description plus technique de la signification de tous les fichiers et de leur organisation, voir la section :ref:`a_storage`. Les quatre niveaux de rubrique, **niveau 1** à **niveau 4**, sont traités comme suit : Les niveaux d'en-tête pour les parties, les chapitres et les scènes ne s'appliquent qu'à novelWriter. Lorsque vous générez votre manuscrit, les chapitres sont considérés comme le niveau d'en-tête le plus élevé, et les scènes comme le niveau inférieur. Les partitions sont insérées comme des éléments de texte dans la plupart des formats. Les principales fonctionnalités de novelWriter sont listées dans le chapitre :ref:`a_intro`. Dans ce chapitre, nous entrons dans les détails de leur implémentation. Il s'agit d'une vue d'ensemble. Plus loin dans cette documentation, ces fonctionnalités seront abordées plus en détail. L'intérêt principal de novelWriter est que vous êtes libre d'organiser les documents de votre projet comme vous le souhaitez, dans des sous-dossiers ou des sous-documents, et de répartir le texte entre ces documents de la manière qui vous convient. Tout ce qui importe à novelWriter est l'ordre linéaire dans lequel les documents apparaissent dans l'arborescence du projet (de haut en bas). Les chapitres, scènes et sections du roman sont déterminés par les titres de ces documents. La fenêtre principale ne comporte pas, par défaut, de barre d'outils d'édition, comme c'est le cas dans de nombreuses autres applications. Cela réduit l'encombrement et, comme les documents sont formatés avec des balises de style, la barre d'outils n'est pas nécessaire la plupart du temps. Néanmoins, une petite barre d'outils de formatage peut être affichée en cliquant sur le bouton le plus à gauche dans l'en-tête de l'éditeur de documents. Elle permet d'accéder rapidement aux codes de formatage standard. Le projet peut à tout moment être assemblé dans une gamme de formats différents grâce à l'outil **Compiler le manuscrit**. Nativement, novelWriter supporte `Open Document`_, Microsoft Word Document (connu sous le nom de `Office Open XML`_), HTML5, et diverses saveurs de Markdown. Vous pouvez également générer un document PDF. L'arborescence du projet met en évidence, avec une couleur d'arrière-plan différente, le document actuellement ouvert dans l'éditeur. L'arborescence du projet sélectionnera une icône pour le document en fonction de la première rubrique qu'il contient. L'interface utilisateur de novelWriter se veut aussi minimaliste que possible, tout en offrant les fonctionnalités utiles à l'écriture d'un roman. Ces deux raccourcis permettent de passer d'un élément de l'interface graphique à l'autre sans avoir à saisir la souris ou le pavé tactile. Cette structure de niveaux de rubriques n'est prise en compte que pour les :term:`documents du roman`. Pour :term:`notes de projet`, les niveaux d'en-tête n'ont pas de signification structurelle, et vous êtes libre de les utiliser comme vous le souhaitez. Voir :ref:`a_struct` et :ref:`a_references` pour plus de détails. Il s'agit d'une brève introduction à la manière dont vous devez structurer vos projets d'écriture. Nous reviendrons plus en détail sur ce sujet ultérieurement. Ce mode de stockage des données a été choisi pour plusieurs raisons. Lorsque l'application est en mode **Vue d'ensemble du roman**, l'arbre, l'éditeur et l'afficheur sont remplacés par un grand tableau qui montre la structure complète du roman avec toutes les balises et les références listées. Pratiquement toutes les métadonnées collectées sont disponibles ici dans différentes colonnes. Lorsque l'application est en mode **Arborescence du roman**, l'arborescence du projet est remplacée par une vue d'ensemble de la structure de votre roman pour un Novel :term:`dossier racine` spécifique. Au lieu de montrer des documents individuels, l'arbre montre maintenant tous les titres du texte de votre roman. Cela inclut les titres multiples au sein d'un même document. Lorsque l'application est en mode **Arborescence du projet**, la zone de travail de la fenêtre principale est divisée en deux, ou éventuellement trois, panneaux. Le panneau le plus à gauche contient l'arborescence du projet et tous les documents de votre projet. Le deuxième panneau est l'éditeur de documents. Vous pouvez ajouter des documents en tant qu'éléments enfants d'autres documents. C'est souvent plus utile que d'ajouter des dossiers, car vous pouvez de toute façon vouloir que l'en-tête de chapitre figure dans un document distinct de vos documents de scène individuels, afin de pouvoir réorganiser librement les documents de scène sans affecter l'emplacement des chapitres. Vous pouvez désormais définir plusieurs définitions de construction dans l'outil **Compiler un manuscrit**. Cela vous permet de définir des paramètres spécifiques pour différents types de projets de documents, de documents de synthèse et de formats de manuscrits. Voir :ref:`a_manuscript` pour plus de détails. Vous pouvez désormais faire glisser et déposer des documents de l'arborescence du projet sur les panneaux de l'éditeur ou de l'afficheur pour les ouvrir. Vous pouvez sélectionner le dossier racine du roman à afficher dans la liste déroulante, et vous pouvez sélectionner les colonnes à afficher ou à masquer à l'aide du bouton de menu. Vous pouvez également réorganiser les colonnes par glisser-déposer. L'application mémorise l'ordre et la taille des colonnes d'une session à l'autre et pour chaque projet individuel. Vous ne devez pas ajouter vous-même des fichiers supplémentaires au dossier du projet. En règle générale, vous ne devez pas non plus modifier manuellement les fichiers qui s'y trouvent. Si vous devez vraiment éditer manuellement les fichiers texte, par exemple dans le cadre d'une tâche automatisée, vous devez reconstruire le :term:`Index du projet` lorsque vous ouvrez à nouveau le projet. novelWriter n'est pas conçu pour être un traitement de texte complet de type bureautique. Il ne prend pas en charge les images, les liens, les tableaux et autres structures et objets complexes souvent nécessaires pour de tels documents. Le formatage est limité aux titres, aux formats de texte de base en ligne, à l'alignement du texte et à quelques autres fonctions simples. 