#include <iostream>
#include <string>
using namespace std;

int *order(int *number)
{
    string num_str;
    int max;
    int num;
    int index;
    int temp;

    for (int x = 0; x < 3; x++)
    {
        index = x;
        max = number[x];
        for (int y = x + 1; y < 3; y++)
        {
            num = number[y];
            if (max < num)
            {
                max = num;
                index = y;
            }
        }
        temp = number[x];
        number[x] = max;
        number[index] = temp;
    }

    return number;
}

void printer(int* number, string letter)
{
    for (int x = 0; x < 3; x++)
    {
        if (letter[x] == 'A')
        {
            cout << number[2];
        }
        else if (letter[x] == 'B')
        {
            cout << number[1];
        }
        else
        {
            cout << number[0];
        }
        if (x != 2)
        {
            cout << " ";
        }
    }
}

int main()
{
    int number[3];
    string letter;

    for (int x = 0; x < 3; x++)
    {
        cin >> number[x];
    }

    cin >> letter;

    int *ordered = order(number);

    printer(ordered, letter);

    return 0;
}