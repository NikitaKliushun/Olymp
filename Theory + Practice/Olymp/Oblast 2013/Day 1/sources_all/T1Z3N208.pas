{Œ¥¤ã­¥æª¨© Œ ªá¨¬ €­ â®«ì¥¢¨ç, £.‹®£®©áª, 8 ª« áá, 3 § ¤ ç }
{Ìåäóíåöêèé Ìàêñèì Àíàòîëüåâè÷, ã. Ëîãîéñê, 8 êëàññ, 3 çàäà÷à}
program T1Z3N208;
var
  fread,fwrite:text;
  N,M,i,j,k,l,z,cod,sh,x,y:integer;
  s:string;
  et:byte;
  vs:boolean;
  a:array [1..400,1..400] of byte;
begin
  assign(fread,'input.txt');
  assign(fwrite,'output.txt');
  reset(fread);
  rewrite(fwrite);

  readln(fread,n,m);
  sh:=0;
  for i:=1 to n do
  begin
    readln(fread,s);
    for j:=1 to m do
    begin
      val(s[j],z,cod);
      a[i,j]:=z;
    end;
  end;
  for j:=1 to m do
    for i:=2 to n do
    begin
      for y:=1 to n-i+1 do
        for x:=1 to m-j+1 do
          begin
            vs:=true;
            if (x + i > n) or (y + j > m) then
              break;
            for l:=0 to j do
              for k:=0 to i do
                if a[y+l,x+k] <> a[y+j-l,x+k] then
                  vs:=false;
            if vs then sh:=sh+1;
          end;
    end;
  write(fwrite,sh);

  close(fwrite);
  close(fread);
end.
