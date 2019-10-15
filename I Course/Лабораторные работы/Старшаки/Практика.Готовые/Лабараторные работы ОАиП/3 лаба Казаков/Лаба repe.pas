Program LBReap;
const
  start=-4*pi;
  finish=4*pi;
  step=pi/3;
var
  x,y:real;
Begin
  x:=start;
  repeat
     y:=x*sin(x)+sqr(cos(x));
     writeln ('X= ',x, ' Y= ',y);
     x:=x+step;
  until (x >= start) and (x >= finish+0.001)
END.