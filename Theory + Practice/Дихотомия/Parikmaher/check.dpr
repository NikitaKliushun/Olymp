uses
  testlib, sysutils;

const
  eps = 1.1e-8;

var
  ja, a: extended;

begin
  ja := ans.ReadReal;
  a := ouf.ReadReal;

  if (abs(a - ja) > eps) then
    quit(_wa, format('expected: %f, found: %f', [ja, a]));

  quit(_ok, format('%f', [ja]));
end.
