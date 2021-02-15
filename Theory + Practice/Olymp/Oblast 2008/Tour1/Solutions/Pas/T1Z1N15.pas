{Косик Иван, г. Воложин}
program T1Z1N15;
type
  my=1..1000000;
var
  K,H,W,b,H2,W2:my;
  i:longint;
  a:boolean;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(K);
  a:=true;
  if (K=1) or (K=2)
    then
    begin
      H2:=K;
      W2:=1
    end
    else
    begin
      for i:=2 to K div 2 do
        if K mod i=0
          then
          begin
            a:=false;
            break
          end;
      b:=K-1;
      if a=false
        then for i:=K div 2 downto 2 do
               if K mod i=0
                 then
             begin
               H:=K div i;
               W:=K div H;
               if abs(H-W)=b
                 then break;
               if abs(H-W)<b
                 then
                 begin
                   b:=abs(H-W);
                   H2:=H;
                   W2:=W;
                 end
             end;

  if b>(K-sqr(trunc(sqrt(K))))
    then
    begin
      H2:=trunc(sqrt(K));
      W2:=H2
    end
  end;
  writeln(H2,' ',W2);
  close(input);
  close(output)
end.

