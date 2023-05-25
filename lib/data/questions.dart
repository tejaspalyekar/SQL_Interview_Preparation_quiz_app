import 'package:quize_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'Which of the following are some common RDBMS in use?',
    [
      'All of the above',
      'MySQL',
      'HeidiSQL',
      'Oracle',
    ],
  ),
  QuizQuestion('What command is used to create a new table in SQL?', [
    'Create TABLE',
    'BUILD TABLE',
    'GENERATE TABLE',
    'None of thr above',
  ]),
  QuizQuestion(
    'What does the following statement in SQL do? \n DROP TABLE student;',
    [
      'Deletes a table called student',
      'Creates a table called student',
      'Check if there is a table called student',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What does BLOB in SQL stand for?',
    [
      'Binary Large Object',
      'Big Large Object',
      'Binary Language for Object',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'Which of the following datatype is most appropriate for storing a string of up to 255 characters?',
    [
      'TINY TEXT',
      'TEXT',
      'BLOB',
      'BINARY',
    ],
  ),
  QuizQuestion(
    'which of the folowing commands is used to delete all rows and free up spcae from a table?',
    [
      'TRUNCATE',
      'DROP',
      'DELETE',
      'ALTER',
    ],
  ),
  QuizQuestion(
    'what does the following code snippet do? \n ALTER TABLE STUDENT ADD(ADDRESS VARCHAR2(20));',
    [
      'Adds a column called ADDRESS in the table student',
      'Checks if a column called ADDRESS is present in the table student',
      'invalid syntax',
      'none of the above',
    ],
  ),
  QuizQuestion(
    ' What does the following code snippet do? \n DELETE FROM STUDENTS\nWHERE AGE = 16;\nROLLBACK;',
    [
      'Performs an undo operation on the delete operation',
      'deletes the rows from the table where AGE = 16',
      'DElete the entire table',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'Full form of DDL?',
    [
      'DATA DEFINATION LANGUAGE',
      'DATA DERIVATION LANGUAGE',
      'DYNAMIC DATA LANGUAGE',
      'DETAILED DATA LANGUAGE',
    ],
  ),
  QuizQuestion(
    'Which of the following are vaild logical operators in SQL?',
    [
      'ALL of the above',
      'ALL',
      'AND',
      'SOME',
    ],
  ),
];
