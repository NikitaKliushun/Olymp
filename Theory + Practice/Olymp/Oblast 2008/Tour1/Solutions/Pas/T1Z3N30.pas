{Михайловский Михаил Николаевич
Минский государственный областной лицей}
Program T1Z3N30;
var n,i,j,t,k,m:longint;
    a:longint;
    str:array[1..65535] of word;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,m);
  for i:=1 to n do
    str[i]:=i;
  for i:=1 to m do
    begin
      read(a);
      for j:=1 to n do
          if str[j]=a then begin
                             write(j,' ');
                             t:=str[j];
                             for k:=j downto 2 do
                               str[k]:=str[k-1];
                             str[1]:=t;
                             break;
                           end;

    end;

  close(input);
  close(output);
end.
