program zaiaz;
uses graph;
const
Vz = 10;
x0 = 40;
dt = 0.01;
p  = 30;
var
Xv, Yv, Xz, Yz, Vv, t: double;
i, j, k, u1, u2: integer;
l: boolean;
function A(x, y: double): double;
begin
A := Vv*(Xz-Xv) / sqrt((Xz-Xv)*(Xz-Xv)+(Yz-Yv)*(Yz-Yv));
end;
function B(x, y: double): double;
begin
B := Vv*(Yz-Yv) / sqrt((Xz-Xv)*(Xz-Xv)+(Yz-Yv)*(Yz-Yv));
end;
procedure Eiler(var x, y, t: double);
begin
x := x+A(x, y)*dt;
y := y + B(x, y)*dt;
t := t+dt;
end;
Begin
initgraph(u1, u2,'');
i := GetmaxX; j := GetmaxY;
line(50, 0, 50, j);
line(0, j - 50, i, j - 50);
for k:=3 to 6 do
begin
Vv:=Vz*(1+k*0.3);
Xz :=0;
Yz :=0;
l:=true;
Xv :=x0;
Yv :=0;
t := 0;
moveto(50, j-50);
while l do
begin
moveto(trunc(50+(Xz*p)), trunc(j-50-(Yz*p)));
Xz := Xz + Vz*cos(pi/3)*dt;
Yz := Yz + Vz*sin(pi/3)*dt;
setcolor(7);
lineto(trunc(50 + (Xz*p)), trunc(j - 50 - (Yz*p)));
moveto(trunc(50 + (Xv*p)), trunc(j - 50 - (Yv*p)));
Eiler(Xv, Yv, t);
setcolor(4);
lineto(trunc(50 + (Xv*p)), trunc(j - 50 - (Yv*p)));
if (abs(Xz -  Xv) < 0.0428) and (abs(Yz - Yv) < 0.0428) then
l:= false;
end;
end;
readln;
end.
