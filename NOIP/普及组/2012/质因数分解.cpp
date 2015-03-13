#include <iostream>
#include <stdlib.h>

using namespace std;

int main()
{
	int n;
	cin >> n;
	int i;
	for (i = 2; i * i <= n; i++)
		if (n % i == 0)
			break;
	cout << n / i << endl;
	return 0;
}
