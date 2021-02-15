// Задача "Герой гитары"
// 7-я личная Интернет-олимпиада сезона 2008-2009
// Автор задачи:  Антон Ахи, akhi@rain.ifmo.ru
// Автор решения: Владимир Ульянцев, ulyantsev@rain.ifmo.ru

// Решение за О(n * k)

uses
	math, sysutils;
type
	int = longint;
const 
	maxn = 10000;
	maxk = 1000;
	maxx = 1000000000;
var
	n, k : int;
	c : array [1..maxn + 1] of int;

	price, new_price : array [0..maxk] of int64;
	i, j : int;

// Функция для проверки корректности входных данных
procedure assertions();
var
	i : int;
begin
	assert((1 <= n) and (n <= maxn));
	assert((1 <= k) and (k <= maxk));
	for i := 1 to n do
		assert((-maxx <= c[i]) and (c[i] <= maxx));
end;

begin
	reset(input, 'guitar.in');
	rewrite(output, 'guitar.out');

	read(n, k);
	for i := 1 to n do begin
		read(c[i]);
	end;
	assertions();
	
	fillchar(price, sizeof(price), 0);
	for i := 1 to n + 1 do begin
		for j := 0 to k do
			new_price[0] := max(new_price[0], price[j]); 
		for j := 1 to k do
			new_price[j] := price[j - 1] + c[i];
		price := new_price;
	end;

	writeln(price[0]);
end.
