CREATE TABLE Journal(
   JournalID INTEGER NOT NULL,
   ISSNType TEXT NOT NULL,
   ISSN TEXT NOT NULL,
  CitedMedium TEXT NOT NULL,
   Volume INTEGER NOT NULL,
   Issue INTEGER NOT NULL,
   PubDateID INTEGER NOT NULL,
   Title TEXT NOT NULL,
   ISO Abbreviation TEXT NOT NULL,
   PRIMARY KEY (JournalID)
    
);

CREATE TABLE AuthorList(
   AuthorListID INTEGER NOT NULL,
   LastName TEXT NOT NULL,
   FirstName TEXT NOT NULL,
   Initals TEXT NOT NULL,
   PRIMARY KEY (AuthorListID)
   
);



CREATE TABLE History(
   HistoryID INTEGER NOT NULL,
   PubStatus TEXT NOT NULL,
   Year INTEGER NOT NULL,
   Month INTEGER NOT NULL,
   Day INTEGER NOT NULL,
   PRIMARY KEY (HistoryID)
   
);


CREATE TABLE Pagination(
   Pagination TEXT NOT NULL,
   MedlinePgn TEXT NOT NULL,
   EIdType TEXT NOT NULL,
   Validation TEXT NOT NULL,
   PRIMARY KEY (Pagination)
);

CREATE TABLE Abstract(
   AbstractID INTEGER NOT NULL,
   Label TEXT NOT NULL,
   NlmCategory TEXT NOT NULL,
   Text TEXT NOT NULL,
   PRIMARY KEY (AbstractID));
   
   
   CREATE TABLE ArticleDate(
   ArticleDateID INTEGER NOT NULL,
   Year INTEGER NOT NULL,
   Month INTEGER NOT NULL,
   Day INTEGER NOT NULL,
   PRIMARY KEY (ArticleDateID)
);


CREATE TABLE Article(
   ArticleID INTEGER NOT NULL,
   JournalID INTEGER NOT NULL,
   Pagination INTEGER NOT NULL,
   ELocationID TEXT NOT NULL,
   AbstractID TEXT NOT NULL,
   AuthorID INTEGER NOT NULL,
   HistoryID INTEGER NOT NULL,
   Language TEXT NOT NULL,
   PublicationTypeListID INTEGER NOT NULL,
   ArticleDateID INTEGER NOT NULL,
   ArticleTitle TEXT NOT NULL,
   PRIMARY KEY (ArticleID)
   FOREIGN KEY (JournalID) REFERENCES Journal (JournalID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (AuthorID) REFERENCES Author (AuthorID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (HistoryID) REFERENCES History (HistoryID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (Pagination) REFERENCES Pagination (Pagination)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (ElocationID) REFERENCES ELocation (ElocationID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (AbstractID) REFERENCES Abstract (AbstractID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (HistoryID) REFERENCES History (HistoryID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (PublicationTypeListID) REFERENCES PublicationTypeList (PublicationTypeListID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
   FOREIGN KEY (ArticleDateID) REFERENCES ArticleDate (ArticleDateID)
     ON DELETE CASCADE
     ON UPDATE CASCADE
)
