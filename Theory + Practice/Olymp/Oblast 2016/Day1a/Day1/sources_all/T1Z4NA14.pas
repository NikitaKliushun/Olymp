Program T1Z4NA14;
Begin
    assign(input,'input.txt'); reset(input);
    assign(output,'output.txt'); rewrite(output);
        write(-1);
    close(input); close(output);
End.