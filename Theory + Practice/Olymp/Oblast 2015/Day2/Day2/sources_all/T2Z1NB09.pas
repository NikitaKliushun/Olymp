{(C) Igor Baliuk}
program T2Z1NB09;

uses crt;

var
  current_length_of_first_string, current_length_of_second_string: Integer;
  first_string, second_string: String;
  count_of_rifmus_litters: Integer;
  input_file, output_file: Text;
begin
  Assign(input_file, 'input.txt');
  Assign(output_file, 'output.txt');

  Reset(input_file);
  Rewrite(output_file);

  Readln(input_file, first_string);
  Readln(input_file, second_string);

  count_of_rifmus_litters := 0;

  current_length_of_first_string := Length(first_string);
  current_length_of_second_string := Length(second_string);


  while ((current_length_of_first_string > 0) and (current_length_of_second_string > 0)) do
  begin
    if (first_string[current_length_of_first_string] = second_string[current_length_of_second_string]) then
    begin
      Dec(current_length_of_first_string);
      Dec(current_length_of_second_string);

      Inc(count_of_rifmus_litters);
    end
    else
      break;
  end;

  Write(output_file, count_of_rifmus_litters);

  Close(input_file);
  Close(output_file);
end.
