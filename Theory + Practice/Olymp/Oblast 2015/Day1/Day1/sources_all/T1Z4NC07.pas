{Ломтев Даниил Андреевич Слуцк 11 №4}
const
  n_roads = 2000;
var
 roads : array [1..n_roads, 1..n_roads] of integer;
 coast : array [1..n_roads] of longint;
 visited : array [1..n_roads] of boolean;
 m, pre, max, min, m_min, m_max, memo, s : longint;
 n : longint;
 x, y, z : longint;
 i, j : longint;
 have_road, started : boolean;

procedure debug;
var
 i, j : longint;
begin
 writeln;
 writeln('in ', m);
 write('m=', m, ': ');
 for i := 1 to n do
  write(coast[i], ' ');
end;

procedure algorythm_undjk(start, m_coast : longint);
var
 i, j : longint;
begin
 m := start;
 visited[start] := true;
 for i := 1 to n do
  if (roads[m ,i] > 0)
   then coast[i] := m_coast + roads[m, i];

 for i := 1 to n do
  if ((coast[i] >= max) and (visited[i] = false))
   then begin
         max := coast[i];
         m_max := i;
        end;
 //debug;
 if (m_max <> start)
  then begin
        s := start;
        memo := m_max;
        algorythm_undjk(m_max, roads[start, m_max]);
        if roads[s, memo] > 0
         then begin
               roads[s, memo] := 0;
               roads[memo, s] := 0;
              end;
       end;
end;

procedure algorythm_djk(start, m_coast : longint);
var
 i, j : longint;
begin
 //debug;
 m := start;
 visited[start] := true;
 for i := 1 to n do
  if ((coast[i] > roads[m, i]) and (roads[m, i] > 0))
   then coast[i] := roads[m, i];

 for i := 1 to n do
  if ((coast[i] < min) and (visited[i] = false))
   then begin
         min := coast[i];
         m_min := i;
        end;
 if (m_min <> start)
  then begin
        algorythm_djk(m_min, roads[start, m_min]);

       end;
end;

BEGIN
 assign(input, 'input.txt');
 assign(output, 'output.txt');
 reset(input);
 rewrite(output);

 readln(n);
 for i := 1 to n - 1 do
  begin
   readln(x, y, z);
   roads[x, y] := z;
   roads[y, x] := z;
  end;
 for i := 1 to n do
  begin
   coast[i] := 0;
   visited[i] := false;
  end;
 max := 0;
 started := false;
 for i := 1 to n do
  if started = false
   then begin
         for j := 1 to n do
          if roads[i, j] > 0
           then begin
                 started := true;
                 algorythm_undjk(i, 0);
                end;
        end;
 for i := 1 to n do
  begin
   coast[i] := maxlongint;
   visited[i] := false;
  end;
 min := maxlongint;
 started := false;
 for i := 1 to n do
  if started = false
   then begin
         for j := 1 to n do
          if roads[i, j] > 0
           then begin
                 started := true;
                 algorythm_djk(i, 0);
                end;
        end;

 //writeln('max = ', max, ' m = ', m_max);
 //writeln('min = ', min, ' m = ', m_min);
 writeln(min);
 close(input);
 close(output);
END.
