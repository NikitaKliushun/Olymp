program z3;
 var   n,k:longint; m:string; input,output:text;
 begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
   writeln(output,0);


  close(input);
  close(output);
 end.
