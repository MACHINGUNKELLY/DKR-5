const  N=255;
  type array_type=array [1..N] of integer; 
 
  procedure InsertSort(var x:array_type);
     var i, j, buf:integer;
     begin
         for i:=2 to N do
         begin
           buf:=x[i];
           j:=i-1;
           while (j>=1) and (x[j]>buf) do
             begin
               x[j+1]:=x[j];
               j:=j-1;
             end;
           x[j+1]:=buf;
         end;
     end;