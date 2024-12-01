___
> ## Nobel Win Table

```sql
CREATE TABLE NOBEL_WIN
(
    YEAR VARCHAR(25) NOT NULL,
    SUBJECT VARCHAR(25) NOT NULL,
    WINNER VARCHAR(25) NOT NULL,
    COUNTRY VARCHAR(25) NOT NULL,
    CATEGORY VARCHAR(25) NOT NULL
);




INSERT ALL
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Physics', 'Louis Neel', 'France', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Physiology', 'Bernard Katz', 'Germany', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Economics', 'Paul Samuelson', 'USA', 'Economist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1970', 'Physiology', 'Julius Axelrod', 'USA', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1971', 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1971', 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1971', 'Peace', 'Willy Brandt', 'Germany', 'Chancellor')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1971', 'Literature', 'Pablo Neruda', 'Chile', 'Linguist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1971', 'Economics', 'Simon Kuznets', 'Russia', 'Economist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1978', 'Peace', 'Anwar al-Sadat', 'Egypt', 'President')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1978', 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1987', 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1987', 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1987', 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1994', 'Economics', 'Reinhard Selten', 'Germany', 'Economist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1994', 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1987', 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1987', 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1987', 'Economics', 'Robert Solow', 'USA', 'Economist')
    INTO NOBEL_WIN (YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES ('1994', 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')
SELECT 1 FROM DUAL;

```

```sql
YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
---- ------------------------- --------------------------------------------- ------------------------- ------------
1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
1970 Physics                   Louis Neel                                    France                 Scientist
1970 Chemistry                 Luis Federico Leloir                          France                 Scientist
1970 Physiology                Ulf von Euler                                 Sweden                 Scientist
1970 Physiology                Bernard Katz                                  Germany                Scientist
1970 Literature                Aleksandr Solzhenitsyn                        Russia                 Linguist
1970 Economics                 Paul Samuelson                                USA                    Economist
1970 Physiology                Julius Axelrod                                USA                    Scientist
1971 Physics                   Dennis Gabor                                  Hungary                Scientist
1971 Chemistry                 Gerhard Herzberg                              Germany                Scientist
1971 Peace                     Willy Brandt                                  Germany                Chancellor
1971 Literature                Pablo Neruda                                  Chile                  Linguist
1971 Economics                 Simon Kuznets                                 Russia                 Economist
1978 Peace                     Anwar al-Sadat                                Egypt                  President
1978 Peace                     Menachem Begin                                Israel                 Prime Minister
1987 Chemistry                 Donald J. Cram                                USA                    Scientist
1987 Chemistry                 Jean-Marie Lehn                               France                 Scientist
1987 Physiology                Susumu Tonegawa                               Japan                  Scientist
1994 Economics                 Reinhard Selten                               Germany                Economist
1994 Peace                     Yitzhak Rabin                                 Israel                 Prime Minister
1987 Physics                   Johannes Georg Bednorz                        Germany                Scientist
1987 Literature                Joseph Brodsky                                Russia                 Linguist
1987 Economics                 Robert Solow                                  USA                    Economist
1994 Literature                Kenzaburo Oe                                  Japan                  Linguist

```
