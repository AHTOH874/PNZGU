const
  path = 'F:\LEARNING\I Course\Лабораторные работы\Решённые.Основы алгоритмизации и программирования\code\7_8_labas.txt';
  count = 5;

type
  student = Record
    FIO: string[20];
    course: integer;
    group: string[10];
    neyv: integer;
    yv: integer;
    sum: integer;
  end;

var
  a: array of string;
  nomer: string;
  student_elem: student;
  students: array [1..count] of student;
  students_file: file of student;

begin
  Assign(students_file, path);
  ReWrite(students_file);
  for var i := 1 to count do
  begin
    write('Введите ФИО - 20 символов: ');
    readln(student_elem.FIO);
    write('Введите номер курса - число: ');
    readln(student_elem.course);
    write('Введите номер группы - 10 символов: ');
    readln(student_elem.group);
    write('Введите кол-во по неуважительной - число: ');
    readln(student_elem.neyv);
    write('Введите кол-во по уважительной - число: ');
    readln(student_elem.yv);
    student_elem.sum := student_elem.neyv + student_elem.yv;
    write(students_file, student_elem);
  end;
  close(students_file);
  Reset(students_file, path);
  writeln('ФИО':25, 
      'Номер курса':15,
      'Номер группы':15,
      'По неуважительной':20,
      'По уважительной':20,
      'Всего часов':15);
  for var i := 1 to count do 
  begin
    Seek(students_file, i - 1);
    Read(students_file, student_elem);
    students[i] := student_elem;
    writeln(student_elem.FIO:25, 
      student_elem.course:15,
      student_elem.group:15,
      student_elem.neyv:20,
      student_elem.yv:20,
      student_elem.sum:15);
  end;
  writeln('Введите номер группы');
  readln(nomer);
  writeln('По уважительной');
  for var i := 1 to count do 
  begin
    if (students[i].group = nomer) and (students[i].yv > 0)  then writeln(students[i].FIO:25, 
      students[i].course:15,
      students[i].group:15,
      students[i].yv:20)
  end;
  writeln('По неуважительной ');
  for var i := 1 to count do 
  begin
    if (students[i].group = nomer) and (students[i].neyv > 0)  then writeln(students[i].FIO:25, 
      students[i].course:15,
      students[i].group:15,
      students[i].neyv:20)
  end
end.