var n,m,i,l,code,aln,bln,tek,ans,nach:longint;
    f:text;
    symbol:byte;
    a,b:array[0..10000001]of byte;
   answ:array[0..10000001]of longint;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,m);
for i:=1 to n do
 begin
  read(f,code);
  aln:=aln+code;
  if i mod 2=0 then symbol:=0
               else symbol:=1;
  while code>0 do
   begin
    inc(tek);
    a[tek]:=symbol;
    dec(code);
   end;
 end;

readln(f);tek:=0;

for i:=1 to m do
 begin
  read(f,code);
  bln:=bln+code;
  if i mod 2=0 then symbol:=0
               else symbol:=1;

  while code>0 do
   begin
    inc(tek);
    b[tek]:=symbol;
    dec(code);
   end;
  end;

close(f);

if aln>bln then
        begin
         l:=aln;
         for i:=bln downto 1 do
          begin
           a[l]:=(a[l]+b[i])mod 2;
           dec(l);
          end;
         ans:=1; 
         a[aln+1]:=3;
         tek:=0;
         nach:=1;
          while a[nach]<>1 do
           begin
            inc(nach);
           end;
         for i:=nach to aln do
          if a[i]<>a[i+1] then begin inc(tek);answ[tek]:=ans; ans:=1; end
                          else inc(ans);
        end
       else
        begin
         l:=bln;
         for i:=aln downto 1 do
          begin
           b[l]:=(b[l]+a[i])mod 2;
           dec(l);
          end;
         ans:=1; tek:=0;nach:=1;
         b[bln+1]:=3;
         while b[nach]<>1 do
          begin
           inc(nach);
          end;
         for i:=nach to bln do
          if b[i]<>b[i+1] then begin inc(tek);answ[tek]:=ans;ans:=1; end
                          else inc(ans);
        end;

assign(f,'output.txt');
rewrite(f);
for i:=1 to tek-1 do
 write(f,answ[i],' ');
write(f,answ[tek]);
close(f);
end.
