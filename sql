/*
Kommentare macht man so:
--
oder so:
/*
*/

*/

/*
BASIC DATENBANKEN
Datenbanktabellen

Eine Tabelle speichert und zeigt Daten in einem strukturierten Format an, 
das aus Spalten => Columns und Zeilen => rows besteht, die denen in Excel-Tabellen ähnlich sind. 

*/
-- --------------------
/*
Primary Key (ID)
Primärschlüssel

Ein Primärschlüssel ist ein Feld in der Tabelle, das die Datensätze der Tabelle eindeutig identifiziert. 

Die Hauptmerkmale des Primärschlüssels:
- Sie muss für jede Zeile einen eindeutigen Wert enthalten.
- Es darf keine NULL-Werte enthalten.

Beispielsweise enthält unsere Tabelle einen Datensatz für jeden Namen in einem Telefonbuch. 
Die eindeutige ID-Nummer wäre eine gute Wahl für einen Primärschlüssel in der Tabelle, 
da immer mehr als eine Person den gleichen Namen haben kann.

*/

/*
SQL
SQL steht für Structured Query Language.

SQL wird verwendet, um auf eine Datenbank zuzugreifen und sie zu manipulieren. 
MySQL ist ein Programm, das SQL versteht.

SQL kann:
- Einfügen, Aktualisieren oder Löschen von Datensätzen in einer Datenbank.
- neue Datenbanken, Tabellen, gespeicherte Prozeduren, Ansichten erstellen. 
- Daten aus einer Datenbank abrufen, etc.
SQL ist ein ANSI-Standard (American National Standards Institute), aber es gibt verschiedene Varianten. 
Versionen der SQL-Sprache.
Die meisten SQL-Datenbankprogramme haben neben dem SQL-Standard auch eigene proprietäre Erweiterungen, 
aber alle unterstützen die Hauptbefehle.


*/

-- SQL Statements

-- SHOW DATABASES;

/*

Die SQL SHOW-Anweisung zeigt Informationen an, die in der Datenbank und ihren Tabellen enthalten sind. 
Mit diesem hilfreichen Tool können Sie den Überblick über Ihre 
Datenbankinhalte behalten und sich an die Struktur Ihrer Tabellen erinnern.

*/
 -- SHOW DATABASES;


-- -----------------------

-- SHOW TABLES;
/*
Der Befehl SHOW TABLES wird verwendet, 
um alle Tabellen in der aktuell ausgewählten MySQL-Datenbank anzuzeigen.
*/
-- ---------------------------
-- SHOW COLUMNS FROM TabellenName

/*
SHOW COLUMNS zeigt Informationen über die Spalten in einer bestimmten Tabelle an.
*/

-- SHOW COLUMNS from docs;
-- ---------------------------------------

-- SELECT

/*

Die SELECT-Anweisung wird verwendet, um Daten aus einer Datenbank auszuwählen.
Das Ergebnis wird in einer Ergebnistabelle gespeichert, die als Ergebnismenge bezeichnet wird.

Eine Abfrage kann Informationen aus ausgewählten Spalten oder aus allen Spalten der Tabelle abrufen. 
Um eine einfache SELECT-Anweisung zu erstellen, geben Sie den/die Namen der gewünschten Spalte(n)
aus der Tabelle an.

*/

 SELECT content FROM docs;
-- ----------------------------------------

/*
SQL ermöglicht es, mehrere Abfragen oder Befehle gleichzeitig auszuführen. 
ist case-unabhängig. 
*/

SELECT rev, content from docs;

-- -----------------------------------
/*
Die folgenden Anweisungen sind gleichwertig und führen zum gleichen Ergebnis:
SELECT City FROM Kunden
sElEct City from Kunden
*/
SELECT content FROM docs;
sElEct content from docs;
-- -----------------------------------
/*

Eine einzelne SQL-Anweisung kann auf eine oder mehrere Textzeilen platziert werden. 
Darüber hinaus können mehrere SQL-Anweisungen in einer einzigen Textzeile kombiniert werden. 

Leerzeichen und mehrere Zeilen werden in SQL ignoriert. 
Beispielsweise ist die folgende Abfrage absolut korrekt.

*/

SELECT        rev

from
docs;

-- -----------------------------------
/*

Mehrere Spalten auswählen
Wie bereits erwähnt, ruft die SQL SELECT-Anweisung Datensätze aus Tabellen in Ihrer SQL-Datenbank ab. 

Sie können mehrere Tabellenspalten auf einmal auswählen.
Listen Sie einfach die Spaltennamen auf, getrennt durch Komma:

Setzen Sie kein Komma nach dem letzten Spaltennamen!
*/

SELECT rev, content FROM docs;
-- -----------------------------------
/*

Die folgende SQL-Anweisung selektiert alle Spalten der Tabelle docs:

*/

SELECT * FROM docs;

-- -----------------------------------
/*

Das Schlüsselwort SQL DISTINCT wird in Verbindung mit SELECT verwendet, 
um alle doppelten Datensätze zu eliminieren und nur eindeutige zurückzugeben.
*/

SELECT DISTINCT id, rev FROM docs;

-- -----------------------------------
/*
Manchmal müssen wir jedoch nur eine Teilmenge von Datensätzen abrufen. 
In MySQL wird dies durch die Verwendung des Schlüsselwortes LIMIT erreicht. 
*/

SELECT ID,rev , content FROM docs LIMIT 2;
-- -----------------------------------
/*
Sie können auch eine Reihe von Datensätzen aus einem bestimmten Abschnitt übernehmen.
*/

SELECT ID, rev, content FROM docs LIMIT 2, 4;

-- -----------------------------------
/*
In SQL können Sie den Tabellennamen vor dem Spaltennamen angeben, 
indem Sie ihn durch einen Punkt trennen.
Diese Form des Schreibens ist besonders nützlich, 
wenn Sie mit mehreren Tabellen arbeiten, die sich die gleichen Spaltennamen teilen können.
*/
SELECT id FROM docs;
SELECT customers.id FROM docs;
-- -----------------------------------
/*
ORDER BY wird zusammen mit SELECT verwendet, um die zurückgegebenen Daten zu sortieren. 

*/

SELECT * FROM docs ORDER BY content;

-- -----------------------------------
/*
ORDER BY kann die abgerufenen Daten nach mehreren Spalten sortieren. 
Wenn Sie ORDER BY mit mehr als einer Spalte verwenden, 
trennen Sie die Liste der Spalten, um ORDER BY mit Kommas zu folgen. 

Bspl. Tipp
Da wir zwei Peter haben, werden sie nach der Spalte Alter in aufsteigender Reihenfolge geordnet.
*/
SELECT * FROM docs ORDER BY rev, content;
-- -----------------------------------
/*
Die WHERE-Klausel wird verwendet, um nur die Datensätze zu extrahieren, 
die ein bestimmtes Kriterium erfüllen.
*/
SELECT * FROM docs WHERE ID = 1;
-- -----------------------------------
/*
Die WHERE-Klausel wird verwendet, um nur die Datensätze zu extrahieren, 
die ein bestimmtes Kriterium erfüllen.
Mit Vergleichsoperatoren.

= ist gleich
!= ist nicht gleich
>   ist größer als
<    ist kleiner als
>=  ist größer als oder gleich
>=   ist kleiner als oder gleich
BETWEEN  zwischen einem inklusiven Bereich
*/

SELECT * FROM docs WHERE ID = 1;
SELECT * FROM docs WHERE ID BETWEEN 3 AND 4;
-- -----------------------------------
/*
Wenn Sie mit Textspalten arbeiten, 
umgeben Sie jeden Text, der in der Anweisung erscheint, 
mit einfachen Anführungszeichen (').
*/
SELECT * FROM docs WHERE rev = '2';
-- -----------------------------------
/*
Logische Operatoren können verwendet werden, um zwei boolesche Werte zu kombinieren 
und ein Ergebnis von true, false oder null zurückzugeben.

and true wenn beide true sind
or  true wenn eines der beiden true ist
in   true, wenn der Operand gleich einem aus einer Liste von Ausdrücken ist.
not  true wenn die abfrage nicht true ist
*/
SELECT ID FROM docs WHERE id >= 3 AND rev <= 2;
-- -----------------------------------
/*
Wenn Sie Zeilen auswählen möchten, 
die mindestens eine der angegebenen Bedingungen erfüllen, 
können Sie den logischen Operator OR verwenden.
*/
SELECT * FROM docs  WHERE id = '1' OR rev = '2';
-- -----------------------------------
/*
  Kombinieren von AND & OR
*/
SELECT * FROM customers
WHERE City = 'New York'
AND (Age=30 OR Age=35);
-- -----------------------------------
/*
  IN Operator
Der IN-Operator wird verwendet, wenn Sie eine Spalte mit mehr als einem Wert vergleichen möchten. 
*/
/* So würde es mit or aussehen
SELECT * FROM customers 
WHERE City = 'New York'
OR City = 'Los Angeles'
OR City = 'Chicago';
*/
-- hier mit IN
SELECT * FROM customers 
WHERE City IN ('New York', 'Los Angeles', 'Chicago');
-- -----------------------------------
/*
  NOT IN Operator
Mit dem Operator NOT IN können Sie eine Liste bestimmter 
Werte aus der Ergebnismenge ausschließen. 
*/
SELECT * FROM customers 
WHERE City NOT IN ('New York', 'Los Angeles', 'Chicago');
-- -----------------------------------
/*
  CONCAT FUNKTION
Die CONCAT-Funktion wird verwendet, 
um zwei oder mehr Textwerte zu verketten und gibt die verkettende Zeichenkette zurück.
sieht dann so aus z.b. 
John, New York
David, Los Angeles
*/
SELECT CONCAT(FirstName, ', ' , City) FROM customers;
-- -----------------------------------
/*
  AS kEYWORD
Eine concatenation führt zu einer neuen Spalte. Der Standard-Spaltenname ist die CONCAT-Funktion.
Sie können der resultierenden Spalte mit dem Schlüsselwort AS einen benutzerdefinierten Namen zuweisen:
Eine concatenation führt zu einer neuen Spalte.
*/
SELECT CONCAT(FirstName,', ', City) AS new_column 
FROM customers;
-- -----------------------------------
/*
Arithmetische Operatoren
Arithmetische Operatoren führen arithmetische Operationen auf numerische Operanden durch. Die arithmetischen Operatoren beinhalten Addition (+), Subtraktion (-), Multiplikation (*) und Division (/). 
Das folgende Beispiel fügt 500 zum Gehalt jedes Mitarbeiters hinzu und wählt das Ergebnis aus:
*/
SELECT ID, FirstName, LastName, Salary+500 AS Salary
FROM employees;
-- -----------------------------------
/*
Die UPPER-Funktion
Die LOWER-Funktion
Die Funktion UPPER konvertiert alle Buchstaben der angegebenen Zeichenkette in Großbuchstaben. 
Die Funktion LOWER konvertiert die Zeichenkette in Kleinbuchstaben.
*/
SELECT FirstName, UPPER(LastName) AS LastName 
FROM employees;
-- -----------------------------------
/*
SQRT und AVG
Die Funktion SQRT gibt die Quadratwurzel des angegebenen Wertes im Argument zurück.
Ebenso gibt die AVG-Funktion den Durchschnittswert einer numerischen Spalte zurück:
Eine weitere Möglichkeit, das SQRT durchzuführen, ist die Verwendung von POWER mit dem 1/2-Exponenten. Allerdings scheint SQRT in diesem Fall schneller zu arbeiten als POWER.
*/
SELECT Salary, SQRT(Salary) FROM employees;
SELECT AVG(Salary) FROM employees;
-- -----------------------------------
/*
Die SUM Funktion
Die Funktion SUMME dient zur Berechnung der Summe für die Werte einer Spalte.
*/
SELECT SUM(Salary) FROM employees;
-- -----------------------------------
/*
Eine Subquery ist eine Abfrage innerhalb einer anderen Abfrage. 
*/
SELECT AVG(Gehalt) FROM Mitarbeiter;
/*
Betrachten wir ein Beispiel. Wir brauchen vielleicht die Liste aller Mitarbeiter, deren Gehälter über dem Durchschnitt liegen.
Berechnen Sie zunächst den Durchschnitt:
Wie wir den Durchschnitt bereits kennen, können wir ein einfaches WHERE verwenden, um die Gehälter aufzulisten, die höher als diese Zahl sind.
*/
SELECT Vorname, Gehalt von Mitarbeitern 
WHERE Salary > 3100
ORDER BY Salary DESC;
/*
Das DESC-Schlüsselwort sortiert die Ergebnisse in absteigender Reihenfolge. 
Ebenso sortiert ASC die Ergebnisse in aufsteigender Reihenfolge.
*/
-- -----------------------------------
/*
Eine einzelne Subquery liefert das gleiche Ergebnis leichter.
*/
SELECT FirstName, Salary FROM employees 
WHERE  Salary > (SELECT AVG(Salary) FROM employees) 
ORDER BY Salary DESC;
-- -----------------------------------
/*
LIKE Keyword
Das Schlüsselwort LIKE ist nützlich, wenn Sie eine Suchbedingung innerhalb Ihrer WHERE-Klausel angeben.
*/
SELECT * FROM employees 
WHERE FirstName LIKE 'A%';
-- -----------------------------------
/*
Als weiteres Beispiel wählt die folgende SQL-Abfrage alle Mitarbeiter aus, deren Nachname mit dem Buchstaben "s" endet:
*/
SELECT * FROM employees 
WHERE LastName LIKE '%s';
-- -----------------------------------
/*
Die MIN-Funktion wird verwendet, um den Minimalwert eines Ausdrucks in einer SELECT-Anweisung zurückzugeben.
Beispielsweise möchten Sie vielleicht das Mindestgehalt der Mitarbeiter wissen.
*/
SELECT MIN(Salary) AS Salary FROM employees;
-- ----------------------------------
