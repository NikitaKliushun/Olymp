Program T2Z1N106;
var a,m,n,k,i,b:integer;
    input,output:text;

begin
     assign(input,'input.txt');
     reset(input);
     read(input,n,k);
    readln(input,a);
     close(input);

       if k>a then m:=k-a else m:=a-k;
       if k>a then b:=1 else b:=-1;

     assign(output,'output.txt');
     rewrite(output);
     writeln(output,m);
        for i:=1 to m  do writeln(output,b);
     close(output);

end.
