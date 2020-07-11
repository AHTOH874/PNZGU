const
  path = 'E:\1 семестр\7_lab.txt';
  marks_count = 5;
  students_count = 3;

type
  student_type = record 
    FIO: string[30];
    kurs: byte;
    group: string[10];
    marks: array [1..marks_count] of byte;
    upgrade, doljnick: boolean;
  end;

var
  sum: integer;
  Student: student_type;
  User_course: string[10];
  Students: array [1..students_count] of student_type;
  Students_file: file of student_type;

procedure Vivod(Student: student_type);
begin
  writeln(Student.FIO:15, 
      Student.kurs:11,
      Student.group:20,
      Student.marks:20);
end;

begin
  Assign(Students_file, path);
  ReWrite(Students_file);
  for var i := 1 to students_count do
  begin
    write('Введите ФИО: ');
    readln(Student.FIO);
    write('Введите номер курса: ');
    readln(Student.kurs);
    write('Введите номер группы: ');
    readln(Student.group);
    writeln('Введите оценки за семестр их должно быть ', marks_count, ': ');
    for var k := 1 to marks_count do begin readln(Student.marks[k]);sum := sum + Student.marks[k]; end;
    if sum < marks_count * 3 then Student.doljnick := True else Student.doljnick := False;
    if Student.marks.Min() > 4 then Student.upgrade := True else Student.upgrade := False;    
    write(Students_file, Student);
    sum := 0;
  end;
  close(Students_file);
  writeln('Введите группу, по которой будут выводится таблицы:');
  readln(User_course);
  Reset(Students_file, path);
  Writeln('Должники:');
  writeln('.------------------------------------------------------------.');
  writeln('|     ФИО     |   Курс   |      Группа      |     Оценки     |');
  writeln('`------------------------------------------------------------`');
  for var i := 1 to students_count do 
  begin
    Seek(Students_file, i - 1);
    Read(Students_file, Student);
    Students[i] := Student;
    if Students[i].doljnick and (User_course = Students[i].group) then Vivod(Students[i]);
  end;
  Writeln('Повышение стипендии:');
  writeln('.------------------------------------------------------------.');
  writeln('|     ФИО     |   Курс   |      Группа      |     Оценки     |');
  writeln('`------------------------------------------------------------`');
  for var i := 1 to students_count do 
  begin
    if Students[i].upgrade and User_course = Students[i].group then Vivod(Students[i]);
  end;
  
end.