{
 @utor Gamezo Vladislav, 10 Klass, 2012-2013
 Task 1
}
var
 i,Q,j:longint;
 a:array [1..4] of longint;
begin
 For i:=1 to 4 do
             Read(a[i]);
 For i:=1 to 4 do
  For j:=1 to 4-i do
     if a[j]>a[j+1] then begin
                          Q:=a[j];
                          a[j]:=a[j+1];
                          a[j+1]:=Q;
                         end;
 Write(a[1]*a[2]+a[3]*a[4]);
end.
