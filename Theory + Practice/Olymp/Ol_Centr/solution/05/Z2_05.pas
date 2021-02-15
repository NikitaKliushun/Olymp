{
 @utor Gamezo Vladislav, 10 Klass, 2012-2013
 Task 2
}
var
 a:array [0..1000] of longint;
 k,i,N,S:longint;

begin
 Read(N);
 k:=1;
  For i:=1 to N do begin
     Read(a[i]);
     if a[i]>a[k] then k:=i;
                   end;
 a[0]:=0;
 For i:=1 to K do begin
         Inc(S,Abs(a[i]-a[i-1])+1)
                  end;
 Write(S-1);
end.