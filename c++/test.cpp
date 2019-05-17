#include <iostream>
using namespace std;

string* reverse(string* array, string* out, int length)
{
    for(int x = 0; x < length; x++)
    {
        cout << array[x];
        cout << "\n";
        out[x] = array[length - (x + 1)];
    }
    return out;
}

int main()
{
    string test [3]= {"a", "b", "c"};
    string output [3];

    string* out = reverse(test, output, 3);

    for(int x = 0; x < 3; x++)
    {
        cout << out[x];
        cout << "\n";
    }

    return 0;
}