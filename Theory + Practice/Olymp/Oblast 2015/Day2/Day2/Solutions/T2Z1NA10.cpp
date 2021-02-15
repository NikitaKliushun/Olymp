//Скоморощенко Александр Игоревич, Борисов, 11, 1
#include<stdio.h>
#include<string.h>
FILE *in=fopen("input.txt","rt");
FILE *out=fopen("output.txt","wt");

char a[100010],b[100010];
int al,bl,ans;

int main()
{
	fscanf(in,"%s %s",a,b);
	al=strlen(a);
	bl=strlen(b);
	
	for(int i=al-1,j=bl-1;i>=0&&j>=0&&a[i]==b[j];i--,j--) ans++;
	fprintf(out,"%i",ans);
	
	fclose(in);
	fclose(out);
	return 0;
}
