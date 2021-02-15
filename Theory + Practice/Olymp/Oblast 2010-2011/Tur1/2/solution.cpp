#include <iostream>
#include <fstream>
#include <algorithm>
#include <vector>
#include <stdlib.h>
using namespace std;

int main() {
	ifstream FileInput("input.txt");
	ofstream FileOutput("output.txt");

	vector <int> cellColors;

	cellColors.clear();
	int cellNum;
	
	FileInput >> cellNum;
	for( int i = 0; i < cellNum; i++ ){
		int curColor;
		FileInput >> curColor;

		cellColors.push_back( curColor );
	}
	cellColors.push_back( -1 );//фиктивный -1 в конец вектора, чтобы корректно учесть блок с последним элементом

	int blockNum[2] = {0, 0};
	for( int i = 0; i < cellNum; i++ ){
		if( cellColors[i] != cellColors[i + 1] ) {
			blockNum[ cellColors[i] ]++;
		}
	}

	FileOutput << min( blockNum[0], blockNum[1] ) << endl;
	
	return 0;
}
