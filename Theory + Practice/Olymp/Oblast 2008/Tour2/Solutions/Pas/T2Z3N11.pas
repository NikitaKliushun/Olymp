{Zhuk Dmitry Vladimirovich task3}
program tasknew;
const
        Infile  = 'input.txt';
        Outfile = 'output.txt';

var
        Visited    : array[1..100010] of boolean;
        Turn       : array[1..1000010]  of longint;
        List       : Array[1..1000010]  of longint;
        Next       : array[1..1000010]  of Longint;
        Head       : Array[1..1000010]  of Longint;
        Dist       : Array[1..100010] of Longint;
        LList,N,M,THead,Ttail    : Longint;
        Ans     : int64;


procedure Init;
var
        i       : Longint;
begin
        Fillchar(Head,Sizeof(Head),0);
        Fillchar(Next,Sizeof(Next),0);
        Fillchar(Visited,Sizeof(Visited),FAlse);
        Thead:=1; Ttail:=1;
end;
procedure Clear;
begin
        Thead:=1; Ttail:=1;
end;
function Empty  : Boolean;
begin
        if Thead=Ttail then Empty:=true
                       else Empty:=false;
end;
procedure Goin(V        : Longint);
begin
        Turn[tTail]:=V; inc(tTail);
end;
procedure Leave;
begin
        inc(THead);
end;

function HeadTurn       : longint;
begin
        HeadTurn:=Turn[Thead];
end;
procedure AddV(V1,V2        : Longint);
begin
        inc(LList);
        List[Llist]:=V2;
        Next[LList]:=Head[V1];
        Head[V1]:=LList;
end;
procedure inputdata;
var
        i,V2,V1       : Longint;
begin
        assign(input,Infile); reset(input);

         readln(N,M);

          for i:=1  to m do begin
            read(V1,V2);
            AddV(V1,V2);
            AddV(V2,V1);
                            end;

          close(input);
end;
procedure BFS(V : longint);
var
        cur     : Longint;
begin
        Fillchar(Dist,Sizeof(Dist),0);
        Fillchar(Visited,Sizeof(Visited),FAlse);
        Clear;

        Visited[v]:=True;  goin(V);
        Dist[v]:=-1;
        while not Empty do begin;
         Cur:=Head[HeadTurn];
         while Cur<>0 do begin
         if Visited[List[Cur]]=false then begin
         Visited[List[Cur]]:=true;
          Dist[List[Cur]]:=Dist[HeadTurn]+1;
          Goin(List[Cur]);
                                    end;
          Cur:=Next[Cur];
                         end;
          Leave;
                           end;
end;
procedure outputdata;
begin
        assign(output,Outfile); rewrite(output);

         writeln(Ans);

        close(output);
end;
procedure Solveproblem;
var
        i,J       : Longint;
begin
        INit;
        inputdata; Ans:=0;


        for i:= 1 to N do begin

         BFS(I);

         for j:= 1 to N do
           if J<>i then
             inc(Ans,Dist[j]);

                          end;
        outputdata;

end;

begin
        Solveproblem;
end.

