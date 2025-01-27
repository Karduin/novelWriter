��                          u        �     �     �     �     �  �     �   �  >  6  �   u  �   ]  �     �   �  <   �  6  �  �   ,
     �
  W     L   c  �   �  �   �  �   L  �   �  !  �  `   �  X   /  %   �  7   �  ;   �  �   "  j  "  �   �  +   )      U      v  $   �     �  �   �  �   m  f  F    �  �   �  �   �  �   �  S   �  ~  �  #  k     �  q   �  i       �  �   �   �   l!  �   "  _  �"  q   _$  r   �$  2   D%  M   w%  A   �%  +  &   A local copy of this documentation can be generated as HTML. This requires installing some Python packages from PyPi: Build and Install from Source Building the Documentation Building the Example Project Building the Translation Files Dependencies If successful, the documentation should be available in the ``docs/build/html`` folder and you can open the ``index.html`` file in your browser. If you install from PyPi, these dependencies should be installed automatically. If you install from source, dependencies can still be installed from PyPi with: If you installed novelWriter from a package, the translation files should be pre-built and included. If you're running novelWriter from the source code, you will need to generate the files yourself. The files you need will be written to the ``novelwriter/assets/i18n`` folder, and will have the ``.qm`` file extension. If you want to improve novelWriter with translation files for another language, or update an existing translation, instructions for how to contribute can be found in the ``README.md`` file in the ``i18n`` folder of the source code. If you want to install novelWriter directly from the source available on GitHub_, you must first build the package using the Python Packaging Authority's build tool. It can be installed with: In order to be able to create new projects from example files, you need a ``sample.zip`` file in the ``assets`` folder of the source. This file can be built from the ``pkgutils.py`` script by running: Most of the custom commands for building packages of novelWriter, or building assets, are contained in the ``pkgutils.py`` script in the root of the source code. You can list the available commands by running: On Debian-based systems the tool can also be installed with: On Linux distros, the Qt library is usually split up into multiple packages. In some cases, secondary dependencies may not be installed automatically. For novelWriter, the library files for rendering the SVG icons may be left out and needs to be installed manually. This is the case on for instance Arch Linux. PyQt/Qt must be at least 5.15.0. If you want spell checking, you must install the ``PyEnchant`` package. The spell check library must be at least 3.0 to work with Windows. On Linux, 2.0 also works fine. Running from Source The documentation can then be built from the root folder in the source code by running: The following Python packages are needed to run all features of novelWriter: The text below assumes the command ``python`` corresponds to a Python 3 executable. Python 2 is now deprecated, but on many systems the command ``python3`` may be needed instead. Likewise, ``pip`` may need to be replaced with ``pip3``. This chapter describes various ways of running novelWriter directly from the source code, and how to build the various components like the translation files and documentation. This requires that the Qt Linguist tool is installed on your system. On Ubuntu and Debian, the needed package is called ``qttools5-dev-tools``. This should generate a ``.whl`` file in the ``dist/`` folder at your current location. The wheel file can then be installed on your system. Here with example version number 2.0.7, but yours may be different: This will build the documentation as a PDF using LaTeX. The file will then be copied into the assets folder and made available in the **Help** menu in novelWriter. The Sphinx build system has a few extra dependencies when building the PDF. Please check the `Sphinx Docs`_ for more details. With the tool installed, run the following command from the root of the novelWriter source code: You can also build a PDF manual from the documentation using the ``pkgutils.py`` script: You can build the ``.qm`` files with: ``PyEnchant`` – needed for spell checking (optional). ``PyQt5`` – needed for connecting with the Qt5 libraries. novelWriter has been designed to rely on as few dependencies as possible. Only the Python wrapper for the Qt GUI libraries is required. The package for spell checking is optional, but recommended. Everything else is handled with standard Python libraries. Project-Id-Version: novelWriter 2.6b1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-12-21 19:37+0100
PO-Revision-Date: 2024-12-26 17:23+0100
Last-Translator: 
Language: fr
Language-Team: fr <LL@li.org>
Plural-Forms: nplurals=2; plural=(n > 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.16.0
 Une copie locale de cette documentation peut être générée au format HTML. Cela nécessite l'installation de certains paquets Python à partir de PyPi : Compiler et installer à partir des sources Élaboration de la documentation Construction du projet d'exemple Création des fichiers de traduction Dépendances En cas de succès, la documentation devrait être disponible dans le dossier `docs/build/html` et vous pouvez ouvrir le fichier `index.html` dans votre navigateur. Si vous installez à partir de PyPi, ces dépendances devraient être installées automatiquement. Si vous installez à partir des sources, les dépendances peuvent toujours être installées à partir de PyPi avec : Si vous avez installé novelWriter à partir d'un paquetage, les fichiers de traduction devraient être préconstruits et inclus. Si vous exécutez novelWriter à partir du code source, vous devrez générer les fichiers vous-même. Les fichiers dont vous avez besoin seront écrits dans le dossier ``novelwriter/assets/i18n``, et auront l'extension ``.qm``. Si vous voulez améliorer novelWriter avec des fichiers de traduction pour une autre langue, ou mettre à jour une traduction existante, les instructions pour contribuer peuvent être trouvées dans le fichier ``README.md`` dans le dossier ``i18n`` du code source. Si vous souhaitez installer novelWriter directement à partir des sources disponibles sur GitHub_, vous devez d'abord construire le paquet à l'aide de l'outil de construction de la Python Packaging Authority. Il peut être installé avec : Afin de pouvoir créer de nouveaux projets à partir des fichiers d'exemple, vous avez besoin d'un fichier ``sample.zip`` dans le dossier ``assets`` de la source. Ce fichier peut être construit à partir du script ``pkgutils.py`` en exécutant : La plupart des commandes personnalisées pour construire des paquets de novelWriter, ou pour construire des actifs, sont contenues dans le script ``pkgutils.py`` à la racine du code source. Vous pouvez lister les commandes disponibles en lançant : Sur les systèmes basés sur Debian, l'outil peut également être installé avec : Sur les distributions Linux, la bibliothèque Qt est généralement divisée en plusieurs paquets. Dans certains cas, des dépendances secondaires peuvent ne pas être installées automatiquement. Pour novelWriter, les fichiers de la bibliothèque pour le rendu des icônes SVG peuvent être omis et doivent être installés manuellement. C'est le cas, par exemple, sous Arch Linux. PyQt/Qt doit être au moins 5.15.0. Si vous voulez un correcteur orthographique, vous devez installer le paquet ``PyEnchant``. La bibliothèque de vérification orthographique doit être au moins 3.0 pour fonctionner sous Windows. Sous Linux, la version 2.0 fonctionne également très bien. Executer depuis la source La documentation peut ensuite être créée à partir du dossier racine du code source en lançant le programme : Les paquets Python suivants sont nécessaires pour exécuter toutes les fonctionnalités de novelWriter : Le texte ci-dessous suppose que la commande ``python`` correspond à un exécutable Python 3. Python 2 est maintenant déprécié, mais sur de nombreux systèmes, la commande ``python3`` peut être utilisée à la place. De même, ``pip`` peut être remplacé par ``pip3``. Ce chapitre décrit les différentes façons d'exécuter novelWriter directement à partir du code source, et comment construire les différents composants tels que les fichiers de traduction et la documentation. Cela nécessite que l'outil Qt Linguist soit installé sur votre système. Sur Ubuntu et Debian, le paquet nécessaire s'appelle ``qttools5-dev-tools``. Cela devrait générer un fichier ``.whl`` dans le dossier ``dist/`` de votre emplacement actuel. Le fichier wheel peut alors être installé sur votre système. Ici avec l'exemple de la version numéro 2.0.7, mais la vôtre peut être différente : Cela créera la documentation sous forme de PDF en utilisant LaTeX. Le fichier sera ensuite copié dans le dossier assets et rendu disponible dans le menu **Aide** de novelWriter. Le système de construction de Sphinx a quelques dépendances supplémentaires lors de la construction du PDF. Veuillez consulter les `Sphinx Docs`_ pour plus de détails. Une fois l'outil installé, exécutez la commande suivante à partir de la racine du code source de novelWriter : Vous pouvez également créer un manuel PDF à partir de la documentation en utilisant le script ``pkgutils.py`` : Vous pouvez construire les fichiers ``.qm`` avec : ``PyEnchant`` - nécessaire pour la vérification orthographique (optionnel). ``PyQt5`` - nécessaire pour se connecter aux bibliothèques Qt5. novelWriter a été conçu pour s'appuyer sur le moins de dépendances possible. Seul le wrapper Python pour les bibliothèques Qt GUI est nécessaire. Le paquetage pour la vérification orthographique est optionnel, mais recommandé. Tout le reste est géré par les bibliothèques Python standard. 