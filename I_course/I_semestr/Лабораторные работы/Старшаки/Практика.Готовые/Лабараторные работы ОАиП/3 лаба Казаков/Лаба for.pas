Program LBFOR;
const
  start=-4*pi;
  finish=4*pi;
  step=pi/3;
var
  i,count:integer; 
  x,y:real;
Begin 
    count:=trunc((finish-start)/step);
    For i:= 0 to count do
      begin
        x:=start+i*step;
        y:=x*sin(x)+sqr(cos(x));
        writeln ('X= ',x, ' Y= ',y);
    end
End.
  