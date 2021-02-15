{Kunovski Igor, Borisov, Liceum, Tur 2, Zadacha3}
Program T2Z3N02;

procedure OpenF;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
end;

procedure CloseF;
begin
  close(input);
  close(output);
end;

var  graph:array[1..100000,1..100000] of boolean;
     comp:array[1..100000] of longint;
     used:array[1..100000] of longint;
     N,M:longint;
     i,j,x,y:longint;
     kol:int64;

procedure mp(i:longint);
var x:longint;
begin
  for x:=1 to n do begin
    if (used[x]=0) and (comp[x]<>0) and (x<>i) and (graph[i][x]) then begin
      used[x]:=used[i]+1;
      mp(x);
    end;
    if (used[x]>0) and (used[x]>used[i]+1) and (x<>i) and (graph[i][x]) then begin
      used[x]:=used[i]+1;
      mp(x);
    end;
  end;
end;

begin
  OpenF;
  readln(N,M);
  for i:=1 to m do begin
    readln(x,y);
    inc(comp[x]);
    inc(comp[y]);
    graph[x][y]:=True;
    graph[y][x]:=True;
  end;
  kol:=0;
  for i:=1 to n do
    if comp[i]<>0 then begin
      used[i]:=1;
      mp(i);
      for y:=1 to n do begin
          if (y<>i) and (used[i]>0) and (used[y]>0) and not(graph[i][y]) then
            kol:=kol+abs(abs(used[i]-used[y])-1)*2;
          used[y]:=0;
      end;
      used[i]:=0;
      comp[i]:=-1;
    end;
  writeln(kol);
  CloseF;
end.
