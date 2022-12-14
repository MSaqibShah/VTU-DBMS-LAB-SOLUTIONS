CREATE TABLE STUDENT(
USN VARCHAR(10) PRIMARY KEY, 
SNAME VARCHAR(25),
ADDRESS VARCHAR(25),
PHONE int,
GENDER VARCHAR(1)
);

CREATE TABLE SEMSEC(
SSID VARCHAR(5) PRIMARY KEY, 
SEM int,
SEC varchar(1)
);

CREATE TABLE CLASS (
USN VARCHAR(10),
SSID VARCHAR(5),
PRIMARY KEY (USN, SSID),
FOREIGN KEY (USN) REFERENCES STUDENT (USN),
FOREIGN KEY (SSID) REFERENCES SEMSEC (SSID)
);

CREATE TABLE IAMARKS ( 
USN VARCHAR (10),
SUBCODE VARCHAR (8),
SSID VARCHAR (5),
TEST1 int,
TEST2 int,
TEST3 int,
FINALIA int,
PRIMARY KEY (USN, SUBCODE, SSID),
FOREIGN KEY (USN) REFERENCES STUDENT (USN),
FOREIGN KEY (SUBCODE) REFERENCES SUBJECT (SUBCODE),
FOREIGN KEY (SSID) REFERENCES SEMSEC(SSID)
);


INSERT INTO STUDENT VALUES ('1RN13CS020','AKSHAY','BELAGAVI', 887782,'M');
INSERT INTO STUDENT VALUES ('1RN13CS062','SANDHYA','BENGALURU', 772212,'F');
INSERT INTO STUDENT VALUES ('1RN13CS091','TEESHA','BENGALURU', 7712312312,'F');
INSERT INTO STUDENT VALUES ('1RN13CS066','SUPRIYA','MANGALURU', 887722,'F');
INSERT INTO STUDENT VALUES ('1RN14CS010','ABHAY','BENGALURU', 990001,'M');
INSERT INTO STUDENT VALUES ('1RN14CS032','BHASKAR','BENGALURU', 911099,'M');
INSERT INTO STUDENT VALUES ('1RN14CS025','ASMI','BENGALURU', 789477,'F'); 
INSERT INTO STUDENT VALUES ('1RN15CS011','AJAY','TUMKUR', 984501,'M');
INSERT INTO STUDENT VALUES ('1RN15CS029','CHITRA','DAVANGERE', 769121,'F');
INSERT INTO STUDENT VALUES ('1RN15CS045','JEEVA','BELLARY', 994421,'M'); 
INSERT INTO STUDENT VALUES ('1RN15CS091','SANTOSH','MANGALURU', 881201,'M');
INSERT INTO STUDENT VALUES ('1RN16CS045','ISMAIL','KALBURGI', 990001,'M');
INSERT INTO STUDENT VALUES ('1RN16CS088','SAMEERA','SHIMOGA', 990212,'F');
INSERT INTO STUDENT VALUES ('1RN16CS122','VINAYAKA','CHIKAMAGALUR', 880011,'M');



INSERT INTO SEMSEC VALUES ('CSE8A', 8,'A'); 
INSERT INTO SEMSEC VALUES ('CSE8B', 8,'B');
INSERT INTO SEMSEC VALUES ('CSE8C', 8,'C');
INSERT INTO SEMSEC VALUES ('CSE7A', 7,'A'); 
INSERT INTO SEMSEC VALUES ('CSE7B', 7,'B');
INSERT INTO SEMSEC VALUES ('CSE7C', 7,'C');
INSERT INTO SEMSEC VALUES ('CSE6A', 6,'A'); 
INSERT INTO SEMSEC VALUES ('CSE6B', 6,'B'); 
INSERT INTO SEMSEC VALUES ('CSE6C', 6,'C');
INSERT INTO SEMSEC VALUES ('CSE5A', 5,'A'); 
INSERT INTO SEMSEC VALUES ('CSE5B', 5,'B'); 
INSERT INTO SEMSEC VALUES ('CSE5C', 5,'C');
INSERT INTO SEMSEC VALUES ('CSE4A', 4,'A'); 
INSERT INTO SEMSEC VALUES ('CSE4B', 4,'B');
INSERT INTO SEMSEC VALUES ('CSE4C', 4,'C');
INSERT INTO SEMSEC VALUES ('CSE3A', 3,'A'); 
INSERT INTO SEMSEC VALUES ('CSE3B', 3,'B');
INSERT INTO SEMSEC VALUES ('CSE3C', 3,'C');
INSERT INTO SEMSEC VALUES ('CSE2A', 2,'A'); 
INSERT INTO SEMSEC VALUES ('CSE2B', 2,'B');
INSERT INTO SEMSEC VALUES ('CSE2C', 2,'C'); 
INSERT INTO SEMSEC VALUES ('CSE1A', 1,'A');

INSERT INTO CLASS VALUES ('1RN14CS010','CSE7A'); 
INSERT INTO CLASS VALUES ('1RN14CS025','CSE7A'); 
INSERT INTO CLASS VALUES ('1RN14CS032','CSE7A');
INSERT INTO CLASS VALUES ('1RN15CS011','CSE4A'); 
INSERT INTO CLASS VALUES ('1RN15CS029','CSE4A'); 
INSERT INTO CLASS VALUES ('1RN15CS045','CSE4B'); 
INSERT INTO CLASS VALUES ('1RN15CS091','CSE4C');
INSERT INTO CLASS VALUES ('1RN16CS045','CSE3A'); 
INSERT INTO CLASS VALUES ('1RN16CS088','CSE3B'); 
INSERT INTO CLASS VALUES ('1RN16CS122','CSE3C');
INSERT INTO SUBJECT VALUES ('10CS81','ACA', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS82','SSM', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS83','NM', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS84','CC', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS85','PW', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS71','OOAD', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS72','ECS', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS73','PTW', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS74','DWDM', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS75','JAVA', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS76','SAN', 7, 4);
INSERT INTO SUBJECT VALUES ('15CS51', 'ME', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS52','CN', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS53','DBMS', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS54','ATC', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS55','JAVA', 5, 3); 
INSERT INTO SUBJECT VALUES ('15CS56','AI', 5, 3);

INSERT INTO SUBJECT VALUES ('15CS41','M4', 4, 4); 
INSERT INTO SUBJECT VALUES ('15CS42','SE', 4, 4); 
INSERT INTO SUBJECT VALUES ('15CS43','DAA', 4, 4); 
INSERT INTO SUBJECT VALUES ('15CS44','MPMC', 4, 4); 
INSERT INTO SUBJECT VALUES ('15CS45','OOC', 4, 3); 
INSERT INTO SUBJECT VALUES ('15CS46','DC', 4, 3);
INSERT INTO SUBJECT VALUES ('15CS31','M3', 3, 4); 
INSERT INTO SUBJECT VALUES ('15CS32','ADE', 3, 4); 
INSERT INTO SUBJECT VALUES ('15CS33','DSA', 3, 4); 
INSERT INTO SUBJECT VALUES ('15CS34','CO', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS35','USP', 3, 3); 
INSERT INTO SUBJECT VALUES ('15CS36','DMS', 3, 3);

INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1RN13CS062','10CS81','CSE8C', 15, 16, 18);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1RN13CS062','10CS82','CSE8C', 12, 19, 14);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1RN13CS062','10CS83','CSE8C', 19, 15, 20);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1RN13CS062','10CS84','CSE8C', 20, 16, 19);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1RN13CS062','10CS85','CSE8C', 15, 15, 12);

-- ============ Q1
select S.*, SE.sem, SE.sec
from STUDENT S, CLASS C, SEMSEC SE
where S.USN = C.USN and
SE.SSID = C.SSID AND SEM=4 AND SEC='C';

-- ============ Q2
select se.sem, se.sec, s.gender, count( s.gender) as count
from STUDENT s, CLASS c, SEMSEC se
where S.USN = C.USN and
SE.SSID = C.SSID
GROUP BY Se.SEM, Se.SEC, S.GENDER
order by se.sem;


-- ============ Q3
CREATE VIEW STU_TEST1_MARKS_VIEW AS
SELECT TEST1, SUBCODE FROM IAMARKS
WHERE USN = '1RN13CS091';

-- ============ Q4
delimiter #
CREATE PROCEDURE AVGMARKS()
begin
update IAMARKS
set FINALIA = (
    case when greatest(TEST1,TEST2) != greatest(test1, test3)
    then greatest(test1,TEST2) + greatest(test1,test3)
    else
    greatest(test1,test2) + greatest(test2,test3)
    end
)/2
where FINALIA is Null;
end #
delimiter ;


-- ============ Q5
select s.usn,S.SNAME,S.ADDRESS,S.PHONE,S.GENDER, (
case
    when ia.finalia between 17 and 20
    then 'OUTSTANDING'
    when ia.finalia between 12 and 16
    then 'AVERAGE'
    else 'WEAK'
end
) as cat
from student s, IAMARKS ia, SEMSEC SS, SUBJECT sub
where s.usn = ia.usn and ia.SSID = ss.SSID and ia.SUBCODE = sub.SUBCODE and
ss.sem = 8; 