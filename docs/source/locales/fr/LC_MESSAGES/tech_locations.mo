��          �      l      �     �     �        z     1   �  &   �  5   �  =     9   W  "  �     �  �   �  �   a  O   �  G   4  9   |  	   �  $   �    �  �     [  �     �	     	
     
  �   0
  2   �
  &   �
  5   %  =   [  Q   �  X  �  (   D  �   m  �   %  u   �  G   B  9   �  	   �  $   �  t  �  �   h                              
                      	                                              Application Data Configuration File Locations Here, ``~`` corresponds to the user's home directory on Linux and MacOS, and ``<USER>`` is the user's username on Windows. Linux: ``~/.config/novelwriter/novelwriter.conf`` Linux: ``~/.local/share/novelwriter/`` MacOS: ``~/Library/Application Support/novelwriter/`` MacOS: ``~/Library/Preferences/novelwriter/novelwriter.conf`` The Application Data location also holds several folders: The general configuration of novelWriter, including everything that is in **Preferences**, is saved in one central configuration file. The location of this file depends on your operating system. The system paths are provided by the Qt QStandardPaths_ class and its ``ConfigLocation`` value. The standard paths are: These are the standard operating system defined locations. If your system has been set up in a different way, these locations may also be different. These folders are empty by default, but this is where the user can store custom theme files. See :ref:`a_custom` for more details. This folder is used to save the preview data for the **Manuscript Build** tool. Windows: ``C:\Users\<USER>\AppData\Local\novelwriter\novelwriter.conf`` Windows: ``C:\Users\<USER>\AppData\Roaming\novelwriter\`` ``cache`` ``icons``, ``syntax`` and ``themes`` novelWriter also stores a bit of data that is generated by the user's actions. This includes the list of recent projects form the **Welcome** dialog. Custom themes should also be saved here. The system paths are provided by the Qt QStandardPaths_ class and its ``AppDataLocation`` value. novelWriter will create a few files on your system outside of the application folder itself. These file locations are described in this chapter. Project-Id-Version: novelWriter 2.6b1
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-12-26 15:44+0100
Last-Translator: 
Language-Team: fr <LL@li.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
Generated-By: Babel 2.16.0
X-Generator: Poedit 3.4.2
 Données d'application Configuration Emplacement des fichiers Ici, ``~`` correspond au répertoire personnel de l'utilisateur sous Linux et MacOS, et ``<USER>`` est le nom d'utilisateur de l'utilisateur sous Windows. Linux : ``~/.config/novelwriter/novelwriter.conf`` Linux: ``~/.local/share/novelwriter/`` MacOS: ``~/Library/Application Support/novelwriter/`` MacOS: ``~/Library/Preferences/novelwriter/novelwriter.conf`` L'emplacement des données d'application contient également plusieurs dossiers : La configuration générale de novelWriter, y compris tout ce qui se trouve dans les **Préférences**, est enregistrée dans un fichier de configuration central. L'emplacement de ce fichier dépend de votre système d'exploitation. Les chemins d'accès au système sont fournis par la classe Qt QStandardPaths_ et sa valeur ``ConfigLocation``. Les chemins standard sont les suivants : Il s'agit des emplacements standard définis par le système d'exploitation. Si votre système a été configuré différemment, ces emplacements peuvent également être différents. Ces dossiers sont vides par défaut, mais c'est là que l'utilisateur peut stocker des fichiers de thèmes personnalisés. Voir :ref:`a_custom` pour plus de détails. Ce dossier est utilisé pour enregistrer les données de prévisualisation pour l'outil **Compilation de manuscrit**. Windows: ``C:\Users\<USER>\AppData\Local\novelwriter\novelwriter.conf`` Windows: ``C:\Users\<USER>\AppData\Roaming\novelwriter\`` ``cache`` ``icons``, ``syntax`` and ``themes`` novelWriter stocke également un certain nombre de données générées par les actions de l'utilisateur. Cela inclut la liste des projets récents de la boîte de dialogue **Bienvenue**. Les thèmes personnalisés devraient également être sauvegardés ici. Les chemins d'accès au système sont fournis par la classe Qt QStandardPaths_ et sa valeur ``AppDataLocation``. novelWriter créera quelques fichiers sur votre système en dehors du dossier de l'application elle-même. L'emplacement de ces fichiers est décrit dans ce chapitre. 