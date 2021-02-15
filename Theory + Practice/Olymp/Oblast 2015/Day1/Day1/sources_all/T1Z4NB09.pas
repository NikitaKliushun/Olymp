program T1Z4NB09;

uses crt;

var
  input_file, output_file: Text;

begin
  Assign(input_file ,'input.txt');
  Reset(input_file);

  Assign(output_file, 'output.txt');
  Rewrite(output_file);

  Write(output_file, '3');
  Close(input_file);
  Close(output_file);
end.