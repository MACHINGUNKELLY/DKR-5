var a:array [1..100] of integer;
    x,i,j,n,f: integer;
begin
write ('размер масива => '); read (n);
for i:=1 to n do begin
write ('Введите член ',i,'-ого значения => '); read (a[i]); end;
  for i:=2 to n do begin
  x:=a[i];
  j:=i-1;
while (j>0) and (x<a[j]) do begin
  a[j+1]:=a[j];
  j:=j-1;
  end;
  a[j+1]:=x;
  end;
for i:=1 to n do
write ('a[',i,']=',a[i],'  ');
end.