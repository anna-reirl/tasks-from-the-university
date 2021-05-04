program padenietel;
uses graph;
var m,v0,p1,p2,p3,p4,dv,a,b,dt,g,t,v,x:double;
q,p,w,c,i,j,ms:integer;
begin
initgraph(i,j,' ');
i:=getmaxx;
j:=getmaxy;
                        q:=49;
                        w:=j-21;
                        line(q,0,q,j);
                        line(0,w,i,w);
                        setcolor(7);
                        p:=95;
                        while q<1400 do
                        begin
                        line(q+p,0,q+p,w);
                        q:=q+p;
                        end;
                        while w>0 do
                        begin
                        line(50,w-p,i,w-p);
                        w:=w-p;
                        end;
                        setcolor(6);
                        OutTextXY(53,685,'0');
                        OutTextXY(53+p,685,'5');
                        OutTextXY(53+2*p,685,'10');
                        OutTextXY(53+3*p,685,'15');
                        OutTextXY(53+4*p,685,'20');
                        OutTextXY(53+5*p,685,'25');
                        OutTextXY(53+6*p,685,'30');
                        OutTextXY(53+7*p,685,'35');
                        OutTextXY(53+8*p,685,'40');
                        OutTextXY(53+9*p,685,'45');
                        OutTextXY(53+10*p,685,'50');
                        OutTextXY(53+11*p,685,'55');
                        OutTextXY(53+12*p,685,'60');
                        OutTextXY(53+13*p,685,'65');
                        OutTextXY(53+14*p,685,'70');
                                OutTextXY(38,685-p,'5');
                                OutTextXY(33,685-2*p,'10');
                                OutTextXY(33,685-3*p,'15');
                                OutTextXY(33,685-4*p,'20');
                                OutTextXY(33,685-5*p,'25');
                                OutTextXY(33,685-6*p,'30');
                                OutTextXY(33,685-7*p,'35');
                                OutTextXY(33,685-8*p,'40');
x:=2000;
a:=5;
b:=0.01;
ms:=20;
v0:=20;
m:=60;
t:=0;
dt:=0.1;
g:=9.8;
setcolor(5);
moveto(50,300);
while x>0.1 do
begin
p1:=(g-(a*v0+b*v0*v0*v0)/m)*dt;
p2:=(g-(a*(v0+0.5*p1)+b*sqr(v0+0.5*p1)*(v0+0.5*p1))/m)*dt;
p3:=(g-(a*(v0+0.5*p2)+b*sqr(v0+0.5*p2)*(v0+0.5*p2))/m)*dt;
p4:=(g-(a*(v0+p3)+b*sqr(v0+p3)*(v0+p3))/m)*dt;
v:=v0+(1/6)*(p1*2+p2+2*p3+p4);
x:=x-((v0+v)/2)*dt;
lineto(trunc(50+(t*ms)),trunc(j-(v*ms)));
v0:=v;
t:=t+dt;
end;
readln;
end.
