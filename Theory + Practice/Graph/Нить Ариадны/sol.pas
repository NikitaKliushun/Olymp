type
   List                        =  record
                                    n,s,e,w : Integer;
                                  end;
   Zapis                       =  record
                                    x,y,pr : Integer;
                                    n      : Char;
                                  end;
var
   a                           :  array [-200..200,-200..200] of List;
   Q                           :  array [1..640000] of Zapis;
   i,j,x1,y1,beg,fin,x2,y2,D   :  Integer;
   S                           :  String;

procedure In_Q(xx,yy,pp : Integer; nn : Char);
begin
    Inc(fin);
    Q[fin].x:=xx;
    Q[fin].y:=yy;
    Q[fin].pr:=pp;
    Q[fin].n:=nn;
end;

procedure Out_Q(var xx,yy : Integer);
begin
    Inc(beg);
    xx:=Q[beg].x;
    yy:=Q[beg].y;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    ReadLn(S);
    x1:=0; y1:=0;
    D:=Length(S);
    for i:=1 to D do
    begin
        if S[i] = 'N' then begin Dec(x1); a[x1,y1].n:=1; end;
        if S[i] = 'S' then begin Inc(x1); a[x1,y1].s:=1; end;
        if S[i] = 'W' then begin Dec(y1); a[x1,y1].w:=1; end;
        if S[i] = 'E' then begin Inc(y1); a[x1,y1].e:=1; end;
    end;
    In_Q(x1,y1,0,'X');
    S:='';
    while beg < fin do
    begin
        Out_Q(x2,y2);
        if (x2 = 0) and (y2 = 0) then
                     begin
                         while Beg > 1 do
                             begin
                                 S:=Q[beg].n + S;
                                 Beg:=Q[Beg].pr;
                             end;
                         Break;
                     end;
         if a[x2,y2].s = 1 then
                 begin
                     a[x2,y2].s:=0;
                     In_Q(x2-1,y2,beg,'N');
                 end;
         if a[x2,y2].n = 1 then
                 begin
                     a[x2,y2].n:=0;
                     In_Q(x2+1,y2,beg,'S');
                 end;
         if a[x2,y2].w = 1 then
                 begin
                     a[x2,y2].w:=0;
                     In_Q(x2,y2+1,beg,'E');
                 end;
         if a[x2,y2].e = 1 then
                 begin
                     a[x2,y2].e:=0;
                     In_Q(x2,y2-1,beg,'W');
                 end;
    end;
    Write(S);
    Close(Input);
    Close(Output);
end.
