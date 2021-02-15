type queue=Record
       qu:array[1..1000,1..2] of shortint;
       b:integer;
       n:integer;
     end;

var f1,f2:text;
    f:array[1..10,1..10] of shortint;
    q:queue;
    i,j,k,t,n:shortint;
    ch:char;
    ships:array[1..10,1..4,1..2] of shortint;
    sCount,sC:shortint;
    hit,hit1,nEoSh:boolean;
    curShipP:shortint;
    curX,curY:shortint;

procedure QInit(var q:queue);
  begin
    q.b:=1;
    q.n:=1;
  end;

procedure QIns(var q:queue; a,b:shortint);
  begin
    q.qu[q.n,1]:=a;
    q.qu[q.n,2]:=b;
    inc(q.n);
  end;

procedure QRem(var q:queue);
  begin
    q.qu[q.b,1]:=0;
    q.qu[q.b,2]:=0;
    inc(q.b);
  end;

procedure QWork(var q:queue);
var curX,curY:shortint;
  begin
    while q.b<>q.n do
      begin
        if not(nEoSh)
          then
            begin
              inc(sCount);
              curShipP:=1;
            end
          else
            inc(curShipP);
        nEoSh:=false;
        curX:=q.qu[q.b,1];
        curY:=q.qu[q.b,2];
        ships[sCount,curShipP,1]:=curX;
        ships[sCount,curShipP,2]:=curY;
        f[curX,curY]:=sCount;

        //X+
        if (curX>=1)and
             (curX<10)and
               (f[curX+1,curY]=-1)
          then
            begin
              QIns(q,curX+1,curY);
              nEoSh:=true;
            end;

        //Y+
        if (curY>=1)and
             (curY<10)and
               (f[curX,curY+1]=-1)
          then
            begin
              QIns(q,curX,curY+1);
              nEoSh:=true;
            end;

        QRem(q);
      end;
  end;

begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);

  QInit(q);

  for i:=1 to 10 do
    begin
      for j:=1 to 10 do
        begin
          read(f1,ch);
          if ch = '.'
            then
              f[i,j]:=0
            else
              f[i,j]:=-1;
        end;
      readln(f1);
    end;

    for i:=1 to 10 do
      for j:=1 to 10 do
        if f[i,j]=-1
          then
            begin
              QIns(q,i,j);
              QWork(q);
            end;


    readln(f1,n);
    sC:=sCount;
    for i:=1 to n do
      begin
        hit:=false;
        hit1:=false;
        readln(f1,curX,ch,ch);
        curY:=ord(ch)-96;
        if curY=11 then curY:=10;
        for j:=1 to sCount do
            for k:=1 to 4 do
                if (ships[j,k,1]=curX)and(ships[j,k,2]=curY)
                  then
                     begin
                       hit:=true;
                       ships[j,k,1]:=0;
                       ships[j,k,2]:=0;
                       if (ships[j,1,1]=0)and
                          (ships[j,2,1]=0)and
                          (ships[j,3,1]=0)and
                          (ships[j,4,1]=0)
                         then
                           begin
                             dec(sC);
                             if sC<>0
                               then
                                 begin
                                   writeln(f2,'DEAD');
                                   hit1:=true;
                                 end
                               else
                                 begin
                                   writeln(f2,'GAME OVER');
                                   close(f2);
                                   exit;
                                 end;
                           end;
                     end;
        if hit
          then
            begin
              if not(hit1)
                then
                  begin
                    writeln(f2,'HIT');
                    hit1:=true;
                  end;
            end
          else
            begin
              writeln(f2,'MISS');
              hit1:=false
            end;
      end;



  close(f1); close(f2);
end.
