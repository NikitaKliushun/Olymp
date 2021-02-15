Program z1;
  
var
  a, b, c  : int64;
  f1,f2 : text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,a,b,c);
  if a+b=c
     then write(f2,a,'+',b,'=',c)
     else if a+c=b
             then write(f2,a,'+',c,'=',b)
             else if b+c=a
                     then write(f2,b,'+',c,'=',a)
                     else if a div b=c
                             then write(f2,a,'/',b,'=',c)
                             else if a div c=b
                                     then write(f2,a,'/',c,'=',b)
                                     else if b div c=a
                                             then write(f2,b,'/',c,'=',a)
                                             else if b div a=c
                                                     then write(f2,b,'/',a,'=',c)
                                                     else if c div a=b
                                                            then write(f2,c,'/',a,'=',b)
                                                            else if c div b=a
                                                                    then write(f2,c,'/',b,'=',a)
                                                                    else write(f2,'NO'); 
  
  close(f1);
  close(f2);
end.