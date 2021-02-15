Uses testlib;
var
  n,res,correct : LongInt;
Begin
  n:=inf.ReadLongInt;
  res:=ouf.ReadLongInt;
  if (res<0) or (res>n) then quit(_pe,'');

  correct:=ans.ReadLongInt;
  if (res<>correct) then quit(_wa,'');
  quit(_ok,':)');
End.
