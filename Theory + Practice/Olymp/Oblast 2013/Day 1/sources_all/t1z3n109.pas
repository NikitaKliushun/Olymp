//Головащенко Александр, МГОЛ, задача3
const
  maxmnoz = 160000;

type
  int = longint;
  Tmnoz = record
    f,l,next,pred,kol: int;
  end;

var
  mr: array [1..400, 1..400] of char;
  freedom, edit: array [1..maxmnoz] of boolean;
  mnoz: array [1..maxmnoz] of Tmnoz;
  free,first,n,m: int;
  footv: array [1..400] of int;
  otv: int64;

function prov(c, f, l:int): boolean;
begin
  prov:= false;
  while (mr[f,c] = mr[l,c]) do begin
    if f>=l then begin
      prov:= true;
      exit;
    end;
    inc(f); dec(l);
  end;
end;

function find(f,l: int):boolean;
var
  j: int;
begin
  find:= false;
  j:= first;
  while j <> 0 do begin
    if (mnoz[j].f = f) and (mnoz[j].l = l) then begin
      inc(mnoz[j].kol);
      edit[j]:= true;
      find:= true;
      exit
    end else
      j:=mnoz[j].next;
  end;
  mnoz[free].f:= f;
  mnoz[free].l:= l;
  mnoz[free].kol:= 1;
  mnoz[free].next:= first;
  mnoz[free].pred:= 0;
  if first<>0 then
     mnoz[mnoz[free].next].pred:= free;
  first:= free;
  edit[free]:= true;
  freedom[free]:= false;



  while freedom[free] = false do
    if free = maxmnoz then free := 1 else inc(free);
end;

procedure obr;
var
  i: int;
begin

  for i:= 1 to maxmnoz do
    if (freedom[i]= false) and (edit[i]= false) then begin
      inc(otv, footv[mnoz[i].kol]);
      if mnoz[i].next <> 0 then
        mnoz[mnoz[i].next].pred:= mnoz[i].pred;
      if mnoz[i].pred<> 0 then
        mnoz[mnoz[i].pred].next:= mnoz[i].next;
      freedom[i]:= true;
    end;
    fillchar(edit, sizeof(edit), false);
end;

var
  i,j,t: int;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  footv[1]:= 1;
  for i:= 2 to 400 do
    footv[i]:= footv[i-1] + i;

  readln(n, m);
  for i:= 1 to n do begin
    for j:= 1 to m do
      read(mr[i,j]);
    readln;
  end;

  otv:=0;
  fillchar(freedom, sizeof(freedom), true);
  first:= 0;
  free:= 1;

  for j:= 1 to m do begin
    t:= 1;
    for i:= 1 to n-1 do begin
      //if t <= i then
        t:= i + 1;
      while t <= n do
        if prov(j,i,t) then begin
        //  inc(otv);

          find(i,t);
          inc(t);
        end else
          //break;
          inc(t);
    end;
    obr;
  end;

  fillchar(edit,sizeof(edit), false);
  obr;

  write(otv);
  close(input);
  close(output);
end.