{Михайловский Михаил Николаевич
Минский государственный областной лицей}
Program T1Z1N30;
var i:longint;
    k,h,w,l,res,bestres,hbest,wbest:longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(k);
  hbest:=1;
  wbest:=k;
  bestres:=abs(hbest-wbest);
  for h:=1 to (k div 2) do
    begin
      w:=k div h;
      res:=abs(h-w)+(k mod h);
      if res<bestres then begin
                            bestres:=res;
                            hbest:=h;
                            wbest:=k div h;
                          end;

    end;
  write(hbest,' ',wbest);
  close(input);
  close(output);
end.
