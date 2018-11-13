===MySQL Install instructions:===

1) Download MySQL installer from https://dev.mysql.com/downloads/installer/

2) Once MySQL Installer is set-up, install the following modules:
	-MySQL Server
	-MySQL WorkBench
	-MySQL for Excel (You might need to install Office VC runtime 2010 before you can install this)
	-Connector/J
	-Connector/Python
	
3) To set-up the connection with MATLAB, follow the instructions here: https://nl.mathworks.com/help/database/ug/mysql-jdbc-windows.html

4) To import MySQL data from github, use MySQL WorkBench. Under Server>Data import, Navigate to the folder where the dump file is located and import

===File description===

-db.sql: 				Contains the entire SQL database. 
						Can be used to construct your own local copy of the database using MySQL workbench
						As of 13/11: contains flight schedule and bay restriction data
		 
-SQL_parser_test.py: 	Short hacked-together python program that reads data in text format and 
						converts it into TABLE INSERT commands for the flights table.
						i.e.: Saves us from having to type every row in the table manually

-data.txt:				Contains data from thesis pdf tables which was copy-pasted directly