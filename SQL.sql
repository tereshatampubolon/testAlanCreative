mysql -u root -p
  CREATE DATABASE alancreative;

  CREATE TABLE category(
    id INT AUTO_INCREMENT PRIMARY KEY,
    salary VARCHAR(100)
  );

  CREATE TABLE WORK(
    id INT AUTO_INCREMENT PRIMARY KEY,
    WORK VARCHAR(100),
    id_salary INT,
    FOREIGN KEY (id_salary) REFERENCES category(id)
  );

  CREATE TABLE NAME(
    id INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    id_work INT,
    id_salary INT,
    FOREIGN KEY (id_work) REFERENCES WORK(id),
    FOREIGN KEY (id_salary) REFERENCES category(id)
  );

  INSERT INTO category(salary) VALUES ('10.000.000');
  INSERT INTO category(salary) VALUES ('12.000.000');

  INSERT INTO WORK(WORK, id_salary) VALUES ('Frontend Dev', 1);
  INSERT INTO WORK(WORK, id_salary) VALUES ('Backend Dev', 2);

  INSERT INTO NAME(NAME, id_work, id_salary) VALUES ('Rebecca', 1, 1);
  INSERT INTO NAME(NAME, id_work, id_salary) VALUES ('Vita', 2, 2);

  SELECT name.name, work.work, category.salary FROM NAME, WORK, category WHERE name.id_work=work.id AND name.id_salary=category.id;

  