Program T1Z2N106;{ Герасимович Анастасия Юрьевна,п.Гатово,Минский район,9 класс,задача2}

var a,c,b,i,k:longint;
    l:array[1..1000] of integer;
    output,input:text;
begin
     assign(input,'d:\input.txt');
     reset(input);
     read(input,a,c);
     close(input);
     b:=2;
     k:=1;
for i:=2 to c-1 do
                  begin
                     if c mod i=0 then l[k]:=c div i;
                     k:=k+1;
                  end;
for i:=1 to c-1 do
                begin
                     if l[i]=a then l[i]:=0;
                end;
for i:=1 to c-1 do
                begin
                if (l[i]>a) and (l[i] mod a=0) then b:=b+1;
                  end;

if a=c then b:=1;

       assign(output,'d:\output.txt');
       rewrite(output);
       write(output,b);
       close(output);



end.
