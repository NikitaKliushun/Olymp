program T1Z1NB09;

uses crt;                           {Can you read my code?}

type
  TSweet_type = record
                  sweet_type: Integer;
                  type_length: Integer;
                end;

var
  count_of_sweets, happybirthday_childrens, count_of_types: Integer;
  tmp_for_type_of_sweet: Byte;
  sweets, result_array: array [1..100000] of Integer;
  sweet_types: array [1..10000] of TSweet_type;
  sweets_in_kit, arraylength: Integer;
  input_file, output_file: Text;

procedure qsort (down, up: Integer);
var
  tmp_for_exchange, center: Integer;
  ii_counter, jj_counter: Integer;
begin
  ii_counter := down;
  jj_counter := up;

  center := sweets[(ii_counter + jj_counter) div 2];

  repeat
    while (sweets[ii_counter] < center) do
      Inc(ii_counter);

    while (sweets[jj_counter] > center) do
      Dec(jj_counter);

    if (ii_counter <= jj_counter) then
    begin
      tmp_for_exchange := sweets[ii_counter];
      sweets[ii_counter] := sweets[jj_counter];
      sweets[jj_counter] := tmp_for_exchange;

      Inc(ii_counter);
      Dec(jj_counter);
    end;
  until (ii_counter > jj_counter);

  if (down < jj_counter) then
    qsort(down, jj_counter);

  if (ii_counter < up) then
        qsort(ii_counter, up);
end;

procedure null;
var
  ii_counter: Integer;
begin
  for ii_counter := 1 to 100 do
  begin
    sweet_types[ii_counter].sweet_type := -100;
    sweet_types[ii_counter].type_length := 0;
  end;
end;

procedure output_sweets_for_happybirthday_childrens (number: Integer);
var
  ii_counter: Integer;
  count_for_kit: Integer;
begin
  count_for_kit := sweet_types[number].type_length div happybirthday_childrens;

  if (count_for_kit > 0) then
    for ii_counter := 1 to count_for_kit do
    begin
      Inc(arraylength);
      result_array[arraylength] := sweet_types[number].sweet_type;
    end;
end;

var
  ii_counter: Integer;
begin
  Assign(input_file, 'input.txt');
  Reset(input_file);

  Assign(output_file, 'output.txt');
  ReWrite(output_file);

  Readln(input_file, count_of_sweets, happybirthday_childrens);

  for ii_counter := 1 to count_of_sweets do
  begin
    Read(input_file, sweets[ii_counter]);
  end;

  qsort(1, count_of_sweets);

  count_of_types := 1;

  Inc(sweet_types[1].type_length);
  sweet_types[1].sweet_type := sweets[1];

  for ii_counter := 2 to count_of_sweets do
  begin
    if (sweets[ii_counter] <> sweets[ii_counter - 1]) then
    begin
      Inc(count_of_types);
    end;

    Inc(sweet_types[count_of_types].type_length);
    sweet_types[count_of_types].sweet_type := sweets[ii_counter];
  end;

  sweets_in_kit := 0;

  for ii_counter := 1 to count_of_types do
  begin
    Inc(sweets_in_kit, (sweet_types[ii_counter].type_length div happybirthday_childrens));
  end;

  Writeln(output_file, sweets_in_kit);

  arraylength := 0;

  if (sweets_in_kit <> 0) then
  begin
    for ii_counter := 1 to count_of_types do
    begin
      output_sweets_for_happybirthday_childrens(ii_counter);
    end;

    Write(output_file, result_array[1]);

    for ii_counter := 2 to arraylength do
      Write(output_file, ' ', result_array[ii_counter]);
  end;

  Close(input_file);
  Close(output_file);
end.
