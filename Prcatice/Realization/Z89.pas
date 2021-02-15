Type
 Train = record
          Time : Longint;
          Nam : String;
         end;

Var
 Str,Str1,Str2 : String;
 N,i,j,l,h1,m1,h2,m2,Start,Finish,cod,Min,Min_N : Longint;
 A : array [1..100] of Train;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(N);
     For i:=1 to N do
     begin
         ReadLn(Str);
         l:=length(str);
         j:=2; str1:='"';
         while str[j] <> '"' do
         begin
             str1:=str1+str[j];
             Inc(j);
         end;
         str1:=str1+str[j]; a[i].nam:=str1;
         delete(str,1,j+1);
         Val(str[1]+str[2],h1,cod);
         Val(str[4]+str[5],m1,cod);
         Start:=h1 * 60 + m1;
         delete(str,1,6);
         Val(str[1]+str[2],h2,cod);
         Val(str[4]+str[5],m2,cod);
         Finish:=h2 * 60 + m2;
         If Finish <= Start then a[i].time:=finish + 1440 - start
                            else a[i].time:=finish - start;
     end;
    Close(Input);
    Min:=1440;
    For i:=1 to N do
     if a[i].time < Min then begin
                                 Min:=a[i].time;
                                 Min_N:=i;
                             end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     WriteLn('The fastest train is ',a[Min_N].nam,'.');
     WriteLn('It''s speed is ',Round(650 / (Min / 60) ),' km/h, approximately.');
    Close(Output);
End.
          -