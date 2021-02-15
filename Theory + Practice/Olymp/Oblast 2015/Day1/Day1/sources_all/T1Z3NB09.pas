program T1Z3NB09;

uses crt, Math;

var
  wdigit_A, wdigit_B, current_length, digit_A_length, digit_B_length: Integer;
  digit_A, digit_B: array [1..100000] of Byte;
  tmp: Byte;

function square (digit, step: Integer) : Integer;
var
  ii_counter: Integer;
begin
  square := digit;

  for ii_counter := 1 to (step - 1) do
  begin
    square := square * digit;
  end;
end;

function convert_to_10 (len: Integer; digit: array of byte) : Integer;
var
  ii_counter: Integer;
begin

  convert_to_10 := 0;

  for ii_counter := (Len - 1) downto 0 do
  begin
    Inc(convert_to_10, square(2, ii_counter) * digit[Len - ii_counter]);
  end;
end;

procedure convert_to_2 (var list: array of Byte; count: Integer);
var
  ii_counter: Integer;
  tmp_for_type: Byte;
begin
  if ((count mod 2) = 0) then
    tmp_for_type := 1
  else
    tmp_for_type := 0;

  for ii_counter := 1 to count do
  begin
    Inc(current_length);

    list[current_length] := tmp_for_type;
  end;
end;

procedure exchange (var list: array of Byte; elements: Integer);
var
  ii_counter: Integer;
  tmp_array: array [1..100000] of Byte;
begin
  for ii_counter := elements downto 1 do
  begin
    tmp_array[ii_counter] := list[(elements + 1) - ii_counter];
  end;

  for ii_counter := 1 to elements do
  begin
    list[elements + 1 - ii_counter] := tmp_array[ii_counter];
  end;
end;

var
  ii_counter: Integer;
begin
  digit_A_length := 0;
  digit_b_length := 0;

  Readln(wdigit_A, wdigit_B);

  current_length := 0;

  for ii_counter := 1 to wdigit_A do
  begin
    Read(tmp);

    convert_to_2(digit_A, tmp);

    Inc(digit_A_length, tmp);
  end;

  current_length := 0;

  for ii_counter := 1 to wdigit_B do
  begin
    Read(tmp);

    convert_to_2(digit_B, tmp);

    Inc(digit_B_length, tmp);
  end;

   exchange(digit_A, digit_A_length);
   exchange(digit_B, digit_B_length);



  Writel
  Readln(ii_counter);
end.
