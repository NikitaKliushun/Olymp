{Елисеев Иван Алексеевич, г.Солигорск, 8 класс, Z1}
program T2Z1NC06;
var d:array[1..10000]of longint;
    i,k,x,z,v,m,s,w,b,t,q,j:longint;

procedure vvod;
  begin
    assign(input,'input.txt');
    reset(input);
    readln(m,w);
    for i:=1 to m do
      read(d[i]);
    readln(s,b,t);
    close(input);
  end;
procedure vivod;
  begin
    assign(output,'output.txt');
    rewrite(output);
    writeln(k);
    close(output);
  end;
procedure process;
begin
    k:=0;
    q:=s;
    for i:=1 to m do
      begin
        v:=q;
        for j:=1 to d[i] do
          begin
            if (j=t) and (v=b) then
            begin
              inc(k);
              break;
            end;
            inc(v);
            if v>w then v:=1;
            if j=d[i] then q:=v;
          end;
        {z:=d[i];
        x:=1;
        while x<=z do
          begin
            v:=q;
            while v<=w do
              begin
                if (x=t) and (b=v) then inc(k);
                inc(v); inc(x);q:=v;
                if x>z then
                  begin
                    break;
                    dec(v);
                  end;
              end;
          end;}
      end;
  end;
begin
  vvod;
  process;
  vivod;
end.
