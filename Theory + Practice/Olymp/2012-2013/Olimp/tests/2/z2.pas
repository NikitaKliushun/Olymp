program z2;
var
  n,m,k:longint;
  p:int64;
  f1,f2:text;
begin
  assign(f1,'in.txt');
  reset(f1);
  assign(f2,'out.txt');
  rewrite(f2);

  read(f1,n,m);
  if m <= n
     then if m mod 2 =1
             then begin
                    p := m div 2;
                    p := p * 4;
                  end  
             else begin
                    p := m div 2 - 1;
                    p := p * 4 + 2;
                  end  
     else if n mod 2 = 1
             then begin
                    p := n div 2;
                    p := p * 4 + 1;
                  end  
             else begin
                    p := n div 2 - 1;
                    p := p * 4 + 3;
                  end;  
  write(f2,p);
  
  close(f1);
  close(f2);
end. 