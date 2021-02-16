program lodki;
uses graph;
const
Vr=2; dt=0.01; y0=1;
var
x,y,t,Vl,xm,ym,dx,dy:real;
i,j,k,gd,gm:integer;
l:boolean;
function A(x,y:real):real;
        begin
        A:=Vr-Vl*x/sqrt(x*x+y*y);
        end;
function B(x,y:real):real;
        begin
        B:=(-1)*Vl*y/sqrt(x*x+y*y);
        end;
procedure Eiler(var x,y,t:real);
        var
        perex:real;
        begin
                perex:=A(x,y);
                dx:=perex*dt;
                perex:=B(x,y);
                dy:=perex*dt;
                x:=x+dx;
                y:=y+dy;
                t:=t+dt;
        end;
begin
        initgraph(gd,gm,' ');
        i:=getmaxx; j:=getmaxy;
        line(50,0,50,j);
        j:=j div 2;
        line (0,j,i,j);
        for k:=1 to 10 do
        begin
        x:=0;y:=y0; t:=0;xm:=0;ym:=0;l:=true;
        Vl:=Vr*(1+k*0.3);
        i:=k;
        moveto(50,j-(y0*300));
        setcolor(i);
        while l do
        begin
        Eiler(x,y,t);
        lineto(trunc(50+(x*300)),trunc(j-(y*300)));
        if x>xm then
        begin
        xm:=x;
        ym:=y;
        end;
        if(y<0.04) and (x<0.04) then l:=false;
        end;
        end;
        readln;
        end.
