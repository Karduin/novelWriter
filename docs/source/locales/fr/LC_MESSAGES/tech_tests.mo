��          �               L  _   M     �  ~  �     =  J   J     �     �  �   �  =   �  �   �  �   s  �   �  I   �  ^   B  B   �  d   �  �   I  \   �  j  P	  c   �
       �  1       U        d     y  B  �  X   �  �   !  �   �  +  \  [   �  f   �  _   K  v   �  �   "  t   �   Adding the flag ``-v`` to the ``pytest`` command will increase verbosity of the test execution. Advanced Options All tests are named in such a way that you can filter them by adding more bits of the test names. They all start with the word "test". Then comes the group: "Core", "Base", "Dlg", "Tool", or "Gui". Finally comes the name of the class or module, which generally corresponds to a single source code file. For instance, running the following will run all tests for the document editor: Dependencies Other useful report formats are ``xml``, and ``term`` for terminal output. Running Tests Simple Test Run Since several of the tests involve opening up the novelWriter GUI, you may want to disable the GUI for the duration of the test run. Moving your mouse while the tests are running may otherwise interfere with the execution of some tests. The dependencies for running the tests can be installed with: The novelWriter source code is well covered by tests. The test framework used for the development is ``pytest`` with the use of an extension for Qt. This will install a couple of extra packages for coverage and test management. The minimum requirement is ``pytest`` and ``pytest-qt``. This will only run the tests of the "core" package, that is, all the classes that deal with the project data of a novelWriter project. The "gui" tests, likewise, will run the tests for the GUI components, and the "base" tests cover the bits in-between. To run a single test, simply add the full test name to the ``-k`` switch. To run the tests, you simply need to execute the following from the root of the source folder: You can also add coverage report generation. For instance to HTML: You can also filter the tests with the ``-k`` switch. The following will do the same as ``-m core``: You can also run tests per subpackage of novelWriter with the ``-m`` command. The available subpackage groups are ``base``, ``core``, and ``gui``. Consider for instance: You can disable the renderring of the GUI by setting the flag ``QT_QPA_PLATFORM=offscreen``: Project-Id-Version: novelWriter 2.6b1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-12-21 19:37+0100
PO-Revision-Date: 2024-12-26 17:30+0100
Last-Translator: 
Language: fr
Language-Team: fr <LL@li.org>
Plural-Forms: nplurals=2; plural=(n > 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.16.0
 L'ajout du drapeau ``-v`` à la commande ``pytest`` augmente la verbosité de l'exécution du test. Options avancées Tous les tests sont nommés de manière à ce que vous puissiez les filtrer en ajoutant d'autres éléments aux noms des tests. Ils commencent tous par le mot « test ». Vient ensuite le groupe : « Core », “Base”, “Dlg”, “Tool” ou “Gui”. Enfin, vient le nom de la classe ou du module, qui correspond généralement à un seul fichier de code source. Par exemple, l'exécution de ce qui suit lancera tous les tests pour l'éditeur de documents : Dépendances D'autres formats de rapport utiles sont ``xml``, et ``term`` pour la sortie terminal. Exécution des tests Test simple Puisque plusieurs des tests impliquent l'ouverture de l'interface graphique de novelWriter, vous pouvez désactiver l'interface graphique pour la durée de l'exécution du test. Si vous déplacez votre souris pendant que les tests sont en cours d'exécution, vous risquez d'interférer avec l'exécution de certains tests. Les dépendances nécessaires à l'exécution des tests peuvent être installées avec : Le code source de novelWriter est bien couvert par des tests. Le cadre de test utilisé pour le développement est ``pytest`` avec l'utilisation d'une extension pour Qt. Cela installera quelques paquets supplémentaires pour la couverture et la gestion des tests. Le minimum requis est ``pytest`` et ``pytest-qt``. Ceci n'exécutera que les tests du paquet « core », c'est-à-dire toutes les classes qui traitent les données d'un projet novelWriter. Les tests « gui », de même, exécuteront les tests des composants de l'interface graphique, et les tests « base » couvriront les éléments intermédiaires. Pour lancer un seul test, il suffit d'ajouter le nom complet du test au commutateur ``-k``. Pour exécuter les tests, il suffit d'exécuter ce qui suit à partir de la racine du dossier source : Vous pouvez également ajouter la génération de rapports de couverture. Par exemple en HTML : Vous pouvez également filtrer les tests avec le commutateur ``-k``. Ce qui suit fera la même chose que ``-m core`` : Vous pouvez aussi lancer des tests par sous-paquet de novelWriter avec la commande ``-m``. Les groupes de sous-paquetages disponibles sont ``base``, ``core``, et ``gui``. Prenons un exemple : Vous pouvez désactiver le rendu de l'interface graphique en définissant le drapeau ``QT_QPA_PLATFORM=offscreen`` : 