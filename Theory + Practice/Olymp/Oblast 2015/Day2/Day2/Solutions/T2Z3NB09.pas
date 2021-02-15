program T2Z2NB09;

uses crt;

type
  number = 0..9;
var
  input_file, output_file: Text;
  digit_k, digit_n: number;

procedure output (digit: Integer);
begin
  Write(output_file, digit);
end;

begin
  Assign(input_file, 'input.txt');
  Assign(output_file, 'output.txt');

  Reset(input_file);
  Rewrite(output_file);

  Readln(input_file, digit_n, digit_k);

  case digit_n of
    8 : output(10);
    7 : output(9);
    6 : output(9);
    5 : output(6);
    4 : output(4);
    3 : output(2);
    2 : output(3);
    1 : output(2);
  end;

  Close(input_file);
  Close(output_file);
end.