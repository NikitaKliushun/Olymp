{Сортировка слиянием}

var
   a,rez : array [1..1000] of LongInt;
   i,N : LongInt;

Procedure MergeSort(L,R : LongInt);
var
   s,i,ii,jj : LongInt;
begin
   if L < R then
               begin
                    s:=(L+R) shr 1;
                    MergeSort(L,s);
                    MergeSort(s+1,R);
                    ii:=L;
                    jj:=s+1;
                    for i:=L to R do
                    begin
                       if (ii<s+1) and ((a[ii]<a[jj])or(jj>R)) then
                             begin
                                 rez[i]:=a[ii];
                                 inc(ii);
                             end                               else
                             begin
                                 rez[i]:=a[jj];
                                 inc(jj);
                             end;
                    end;
                    for i:=L to R do
                      a[i]:=rez[i];
                end;
end;

begin
    Read(N);
    for i:=1 to N do
      Read(a[i]);
    MergeSort(1,N);
    for i:=1 to N do
      Write(a[i],' ');
end.
