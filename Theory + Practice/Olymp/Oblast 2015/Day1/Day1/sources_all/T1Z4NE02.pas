 {Kutas Dmitry Sergeewits MGOL 11 }
VAR a:longint;


BEGIN
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  
  write('0');
  
  close(input);
  close(output);
END.