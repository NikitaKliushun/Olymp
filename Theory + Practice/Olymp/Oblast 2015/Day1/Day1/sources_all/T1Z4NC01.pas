//Козелько Никита Сергеевич, город Солигорск, 11 класс, задача 4
var tto, pred, last, gl, nal:array[1..200005] of longint;
    t, y, u, ans, n:longint;
    i:longint;
    f1, f2:text;

procedure add(f, g, h, k:longint);
 begin

 tto[f*2-1]:=g;
 pred[f*2-1]:=last[h];
 last[h]:=f*2-1;
 gl[f*2-1]:=g;
 nal[f*2-1]:=k;

 tto[f*2]:=h;
 pred[f*2]:=last[g];
 last[g]:=f*2;
 gl[f*2]:=g;
 nal[f*2]:=k;

 end;

function mmax(v, p:longint):longint;
 var q, m1, m2, nm1, nn, maxnal, m:longint;
     bm1:boolean;
 begin
 q:=last[v];
 m1:=0;
 m2:=0; nm1:=0; bm1:=false; maxnal:=0;
 while (q<>0) do
  begin
  if tto[q]<>p then begin
                    m:=mmax(tto[q], v)+nal[q];
                    if m>m1 then begin
                                 m2:=m1;
                                 bm1:=false;
                                 m1:=m;
                                 if gl[q]=v then begin
                                                 bm1:=true;
                                                 nm1:=nal[q];
                                                 if nm1>maxnal then maxnal:=nm1;
                                                 end;
                                 end
                            else if m>m2 then begin
                                              m2:=m;
                                              end;
                    end
               else begin

                    //if gl[q]=v then nn:=nal[q]
                    //           else nn:=0;
                    end;
  q:=pred[q];
  end;

 {if nn>maxnal then mmax:=m1-nn+nn
              else begin  }
                   if bm1 then begin
                               if m1-nm1>m2 then mmax:=m1-nm1
                                            else mmax:=m2;
                               end
                          else mmax:=m1;
                   {end;  }
 end;

begin

assign(f1, 'input.txt'); reset(f1);
assign(f2, 'output.txt'); rewrite(f2);

read(f1, n);
for i:=1 to n-1 do
 begin
 read(f1, t, y, u);
 add(i, t, y, u);
 end;

ans:=mmax(1, -1);

writeln(f2, ans);

close(f1); close(f2);

end.
