{Pivovarevich Vitaly Igorevich, Vileskij rajon, klass 11"A", zadacha 1, tur1}
Program T1Z1NA06;
Var f1,f2:text;
k,o,j:char;
n,left,i:byte;
a:array [1..10, 'a'..'j'] of char;

Function ndealeft(i:byte;j:char):boolean;
Begin
  If (j>'a') then Case a[pred(i),j] of
                       '#':ndealeft:=true;
                       '*':ndealeft:=ndealeft(pred(i),j);
                       end;
end;

Function ndearight(i:byte; j:char):boolean;
Begin
  If (j<'j') then case a[succ(i),j] of
                            '#':ndearight:=true;
                            '*':ndearight:=ndearight(succ(i),j);
                       end;
end;

Function ndeaup(i:byte; j:char):boolean;
Begin   
  If (i>1) then case a[i,pred(j)] of
                          '#':ndeaup:=true;
                          '*':ndeaup:=ndeaup(i,pred(j));
                       end;
end;

Function ndeadown(i:byte;j:char):boolean;
Begin
  If (i<10) then case a[i,succ(j)] of
                      '#':ndeadown:=true;
                      '*':ndeadown:=ndeadown(i,succ(j));
                       end;
end;
 
Function ndea (i:byte; j:char):boolean;
Begin
  If (j>'a') then Case a[pred(i),j] of
                       '#':ndea:=true;
                       '*':ndea:=ndealeft(pred(i),j);
                       end;
  If (j<'j') then case a[succ(i),j] of
                            '#':ndea:=true;
                            '*':ndea:=ndearight(succ(i),j);
                       end;
  If (i>1) then case a[i,pred(j)] of
                          '#':ndea:=true;
                          '*':ndea:=ndeaup(i,pred(j));
                       end;
  If (i<10) then case a[i,succ(j)] of
                      '#':ndea:=true;
                       '*':ndea:=ndeadown(i,succ(j));
                       end;
end;
  

Begin
  Assign(f1,'input.txt');
  Assign(f2,'output.txt');
  Reset(f1);
  For i:=1 to 10 do
      For j:='a' to 'j' do
          Begin
          Read(f1,a[i,j]);
          If a[i,j]='#' then
             Begin
               If (j='a') and (i=1) then left:=left+1
               Else if (j='a') then Begin if a[i,pred(j)]='.' then left:=left+1; end
               Else if (i=1) then Begin if a[pred(i),j]='.' then left:=left+1; end
               Else if (a[pred(i),j]='.') and (a[i,pred(j)]='.') then left:=left+1;
            end;      
          If j='j' then Readln(f1);
          end;
  Readln(f1,n);
  Rewrite(f2);
  Repeat
    Readln(f1,i,o,k);
    If k='k' then k:='j';
    If (a[i,k]='.') or (a[i,k]='*') then writeln(f2,'MISS')
    Else if (a[i,k]='#') then
         Begin
         a[i,k]:='*';
         If (ndea(i,k)=true) then writeln(f2,'HIT')
                          Else begin
                                 left:=left-1;
                                 If (left>0) then writeln(f2,'DEAD')
                                             Else writeln(f2,'GAME OVER');
                               end;
        end;
    n:=n-1;
   until(n=0) or (left=0);
   Close(f1);
   Close(f2);
end.
 
        
  