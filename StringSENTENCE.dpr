program StringSENTENCE;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  s,tmp,k,kata, ans, u : string;
  c, p : integer;

begin
readln(p);
while p >0 do
begin
  readln(s);
  c := 1;

  while length(s) > 0 do
  begin
  k:='';
  kata:='';
      repeat
      k:= copy (s,c,1);
      c:= c+1;
      kata := kata + k;
      until (k = ' ') or ( c = length(s)+1);


  if  c = length(s)+1 then
  begin
  kata:=lowercase(kata);
  kata[1]:= upcase(kata[1]);
  ans := ans+kata;
  end
  else
  begin
  kata[1]:= upcase(kata[1]);
  tmp := copy(kata,1,1);
  tmp := tmp+'. ';
  ans := ans+tmp;
  end;

  s:=copy(s,c,length(s));

  c:= 1
  end;
  writeln(ans);
  readln;
  end;
end.
