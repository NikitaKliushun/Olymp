Const
 Get : Array ['0'..'9','0'..'9'] of Longint = ((0,-4,-3,-5,-4,-2,-3,-4,0,-3),
                                              (-1,0,-2,-2,0,-2,-1,-2,-1,-2),
                                              (-2,-3,0,-2,3,-2,-3,-3,-1,-1),
                                              (-3,-3,-2,0,-2,-2,-2,-2,-2,-1),
                                              (-2,-1,-3,-2,0,-2,-1,-3,-1,-2),
                                              (-2,-4,-3,-3,-3,0,-2,-4,-1,-2),
                                              (-1,-3,-4,-3,-2,-2,0,-3,-1,-4),
                                              (-1,-2,-1,-1,-2,-2,-1,0,-1,-2),
                                              (-1,-5,-4,-4,-4,-2,-3,-5,0,-3),
                                              (-1,-4,-3,-3,-3,-2,-4,-4,-1,0));
 Put : Array ['0'..'9','0'..'9'] of Longint = ((0,1,1,3,2,1,2,1,1,2),
                                              (4,0,3,3,1,4,3,2,5,4),
                                              (3,2,0,2,3,3,4,2,4,2),
                                              (5,2,2,0,2,3,3,1,5,2),
                                              (4,0,3,2,0,3,2,2,4,3),
                                              (2,2,1,2,2,0,2,2,2,2),
                                              (3,1,3,2,1,2,0,1,3,4),
                                              (4,2,3,2,3,4,3,0,3,4),
                                              (0,1,1,2,1,0,1,1,0,1),
                                              (3,2,1,1,2,2,4,2,3,0));

Var
 N,S,i,j,Ans : Longint;
 k,k1 : Char;
 Num : Array [1..100] of Char;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,S);
  For i:=1 to N do
   Read(Num[i]);
 Close(Input);
 Ans:=0;
 If N = 1 then begin
                   For i:=1 to N do
                          FOR k:='0' TO '9' do
                              If ((i =1) and (K <> '0')) or (I>1) then
         If (Get[Num[i],k] + Put[Num[i],k] = 0) then Ans:=(Ans + 1) mod 1000000007;
               end
          else
 begin
  For i:=1 to N do
   For j:=i to N do
    FOR k:='0' TO '9' do
     For k1:='0' to '9' do
      If (((i=1) and (k <> '0')) or (i>1)) and (((j=1) and (k <> '0')) or (j>1))  then
         If ((Get[Num[i],k] + Put[Num[i],k] = Get[Num[j],k1] + Put[Num[j],k1])
            and (Get[Num[i],k]+Put[Num[i],k] in [0..S] ))
        then Ans:=(Ans + 1) mod 1000000007;
 end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Ans);
 Close(Output);
End.


