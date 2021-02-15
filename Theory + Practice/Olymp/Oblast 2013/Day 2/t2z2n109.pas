//Головащенко, МГОЛ ЗД_2
type
  int=longint;

var
  n,k,min:int;
  nom,d: array [1..100000] of int;
 // dub: array [1..1000000000] of boolean;

procedure qsort(f,l:int);
var
  t, buf,i,j:int;
begin
{  i:= f; j:= l;
  t:= d[(i+j) div 2];
  repeat
    while (i<l) and (d[i]<=t) do
      inc(i);
    while (f<j) and (d[j]>=t) do
      dec(j);
    if i<=j then begin
      buf:= d[i]; d[i]:= d[j]; d[j]:= buf;
      buf:= nom[i]; nom[i]:= nom[j]; nom[j]:= buf;
      inc(i); dec(j);
    end;
  until i>=j;
  if f<j then qsort(f,i);
  if i<l then qsort(i,l);
end;
   }

  for i:=1 to n do
    for j:= 1 to n-1 do
      if d[j]>d[j+1] then begin
        buf:= d[j]; d[j]:= d[j+1]; d[j+1]:= buf;
        buf:= nom[j]; nom[j]:= nom[j+1]; nom[j+1]:= buf;
      end;
end;

var
  i,j,l,r,t:int;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  //fillchar(dub,sizeof(dub),true);
  readln(n,k);
  j:=1;
  for i:= 1 to n do begin
    nom[j]:= i;
    read(d[j]);
    {if dub[d[j]] = false then begin
      dub[d[j]]:= true;}
      inc(j);
   // end;

  end;

  qsort(1,n);

  min:=1000000000;
  for i:= 1 to n do begin
    j:= i+k-1;
    if j>n then begin
      writeln(r-l+1);
      for t:= l to r do
        write (nom[t],' ');
      close(input);
      close(output);
      exit;
    end;
    if min> d[j]-d[i] then begin
      min:= d[j]-d[i];
      l:= i; r:= j;
    end;
  end;
end.
