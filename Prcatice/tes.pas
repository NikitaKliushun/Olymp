var
s: string;
begin
s:='скоро зима';
delete(s,pos(' ',s),pos(' ',s));
writeln(s);
end.
