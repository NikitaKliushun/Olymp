var a : array [1..123] of longint;
    s : ansistring;
    i, j, x : longint;
    s1 : ansistring;
    k, n, l, m, kol : longint;

begin
  assign(input, 'input.txt');
  assign(output, 'output.txt');
  reset(input);
  rewrite(output);

    read(n); readln(k);
    readln(s);
    kol := n;
    for i := 2 to n do
      begin
        for j := 1 to n-i+1 do
          begin
            FillChar(a, SizeOf(a), 0);
            s1 := s;
            Delete(s1, 1, j-1);
            Delete(s1, i+1, (n-j));
            for x := 1 to length(s1) do
              begin
                inc(a[ord(s1[x])]);
                if a[ord(s1[x])] > k
                  then begin
                         kol := kol - 1;
                         break;
                       end;
              end;

            inc(kol);
          end;
      end;

    writeln(kol);

  close(input);
  close(output);
end.