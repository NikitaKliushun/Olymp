var
     a:array [0..105] of Longint;
     N,S,max,Nom,i:Longint;
begin
     Readln(N);
     Nom:=0;
     max:=0;
     for i:=1 to N do
begin
     Read(a[i]);
     if a[i]>max then begin
                           max:=a[i];
                           Nom:=i;
                       end;
 end;
     for i:=1 to Nom do
begin
     if a[i]>a[i-1] then S:=S+(a[i]-a[i-1]);
     if i<>Nom then if a[i+1]<a[i] then S:=S+1+(a[i]-a[i+1])
                                   else S:=S+1;
 end;
     Writeln(S);
 end.
