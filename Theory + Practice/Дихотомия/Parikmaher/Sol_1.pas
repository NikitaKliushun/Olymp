{
Written by Fyodor Menshikov 27.01.2006
9:09-9:27
}
{$N+,E-}
{$R+,Q+}
type
   real=extended;
var
   nClients,i,startequal:integer;
   s,hoursS,minutesS:string;
   hours,minutes,code:integer;
   time:array[1..51]of integer;
   answer,equaltime,t:real;
begin
   assign(input,'haircut.in');
   reset(input);
   assign(output,'haircut.out');
   rewrite(output);
   readln(nClients);
   for i:=1 to nClients+1 do begin
      readln(s);
      if (s[1] in ['0'..'9']) and (s[2] in ['0'..'9']) and (s[3]=':') and
         (s[4] in ['0'..'9']) and (s[5] in ['0'..'9'])
      then
      else
         halt(1);
      hoursS:=copy(s,1,2);
      minutesS:=copy(s,4,2);
      val(hoursS,hours,code);
      if code<>0 then
         halt(1);
      if (hours<9)or(hours>18) then
         halt(1);
      val(minutesS,minutes,code);
      if code<>0 then
         halt(1);
      if (minutes<0)or(minutes>59) then
         halt(1);
      time[i]:=hours*60+minutes;
   end;
   for i:=1 to nClients do
      if time[i]>time[i+1] then
         halt(1);
   answer:=-1;
   for startequal:=1 to nClients do begin
      equaltime:=(time[nClients+1]-time[startequal])/(nClients+1-startequal);
      if equaltime<5 then
         continue;
      if (answer<>-1)and(equaltime>answer) then
         continue;
      t:=time[1];
      for i:=1 to startequal-1 do begin
         if time[i]>t then
            t:=time[i]+5
         else
            t:=t+5;
      end;
      if t>time[startequal] then
         continue;
      t:=time[startequal];
      for i:=startequal to nClients do begin
         if time[i]>t then
            t:=time[i]+equaltime
         else
            t:=t+equaltime;
      end;
      if t>time[nClients+1]+1e-8 then
         continue;
      answer:=equaltime;
   end;
   if answer=-1 then
      writeln('-1')
   else
      writeln(answer:0:8);
end.