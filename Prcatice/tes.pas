var
s: string;
begin
s:='᪮� ����';
delete(s,pos(' ',s),pos(' ',s));
writeln(s);
end.
