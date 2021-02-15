Var
 F,P,S,Hour,Minutes,cod : Longint;
 S1,S2 : String;

Begin
 ReadLn(S1);
 ReadLn(S2);
 Val(s1[1]+s1[2],Hour,cod);
 F:=F+Hour*60;
 Val(s1[4]+s1[5],Minutes,cod);
 F:=F+Minutes;

 Val(s2[1]+s2[2],Hour,cod);
 P:=P+Hour*60;
 Val(s2[4]+s2[5],Minutes,cod);
 P:=P+Minutes;

 S:=F-P;
 If S<0 then S:=1440-Abs(S);
 Hour:=S div 60;
 Minutes:=S mod 60;
 If Hour div 10=0 then Write('0',Hour,':')
                  else Write(Hour,':');
 If Minutes div 10=0 then Write('0',Minutes)
                     else Write(Minutes);
End.