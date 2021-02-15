#include <iostream>
#include <fstream>

#include <stdlib.h>
#include <memory.h>

#include <string>
#include <algorithm>
using namespace std;

ifstream InF("input.txt");
ofstream OutF("output.txt");

#define MAXN 1000010
#define MAXAL 40

int k;
int inpStr[MAXN];
int numCh[MAXAL];

int GetCode(char ch)
{
	if ('0' <= ch && ch <= '9')
		return ch - '0';
	else return ch - 'a' + 10;
}

bool modifyNumChar(int ch,int value)
{
	numCh[ch] += value;
	if (numCh[ch] <= k)
		return true;
	else return false;
}

int main()
{
	int len;
	InF >> len >> k;
	for (int i=0;i<len;i++)
	{
		char curCh;
		InF >> curCh;
		inpStr[i] = GetCode(curCh);
	}

	int curR = -1;
	memset(numCh, 0, sizeof(numCh));

	long long ans = 0;
	inpStr[len] = MAXAL-1;
	for (int curL=0;curL<len;curL++)
	{
		while (curR < len && modifyNumChar(inpStr[++curR], 1)) ;

		modifyNumChar(inpStr[curR], -1);
		curR--;
		modifyNumChar(inpStr[curL], -1);

		ans += (long long)(curR - curL + 1);
	}

	OutF << ans << endl;
	return 0;
}
