{(C) Igor Baliuk}
program T2Z2NB09;

uses crt;

var
  digits: array [1..1000] of Integer;
  end_of_progress: Integer;
  count_of_progress: Integer;
  input_file, output_file: Text;

procedure pods (digital: Integer);
var
  jj_counter: integer;
begin
  count_of_progress := 0;
  digital := Sqr(digital) * digital;

  for jj_counter := 1 to 1000 do
  begin
    if (digital = digits[jj_counter]) then
    begin
      count_of_progress := jj_counter;
      break;
    end;
  end;
end;

function do_progress (number: Integer) : Integer;
var
  ii_counter: Integer;
begin
  do_progress := 0;

  for ii_counter := 1 to number do
    Inc(do_progress, digits[1]);
end;

var
  ii_counter: integer;
begin
  Assign(input_file, 'input.txt');
  Assign(output_file, 'output.txt');

  Reset(input_file);
  Rewrite(output_file);

  Readln(input_file, digits[1]);


  for ii_counter := 2 to 1000 do
  begin
    digits[ii_counter] := do_progress(ii_counter);
  end;

  for ii_counter := 1 to 22 do
  begin
    pods(ii_counter);

    if (count_of_progress > 0) then
      break;
  end;

  if ((count_of_progress mod digits[1]) =





  0) then
    Write(output_file, count_of_progress div digits[1])
  else
    Write(output_file, count_of_progress);

  Close(input_file);
  Close(output_file);
end.
