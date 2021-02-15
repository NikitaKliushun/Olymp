//Лапотко Алексей Андреевич, г. Солигорск, 11Б класс, задача 1
#include <iostream>
#include <stdio.h>

using namespace std;

int n, k;
int a[1100], p[1100];

int main(){
    FILE* fin = fopen("input.txt", "r");
    FILE* fout = fopen("output.txt", "w");

    fscanf(fin, "%d%d", &n, &k);
    for (int i = 0; i < n; i++) fscanf(fin, "%d%d", &a[i], &p[i]);

    int sum = 0;
    for (int i = 0; i < n; i++) sum += a[i];

    if (sum > k){
        sum -= k;
        fprintf(fout, "%d\n", sum);
        for (int i = 0; i < n && sum > 0; i++)
            while (a[i] > 0 && sum > 0) {
                sum--; a[i]--;
                fprintf(fout, "%d\n", -(i + 1));
            }
    } else {
        sum = k - sum;
        fprintf(fout, "%d\n", sum);
        for (int i = 0; i < n && sum > 0; i++)
            while (a[i] < p[i] && sum > 0){
                sum--; a[i]++;
                fprintf(fout, "%d\n", i + 1);
            }
    }
}
