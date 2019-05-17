#include <iostream>
using namespace std;

int input_valid(string inp)
{
    int counter = 0;

    for(int x; x < inp.length(); x++)
    {
        if(inp[x] == 'a')
        {
            counter++;
        }
        else if (x == inp.length() - 1 && inp[x] == 'h')
        {
            counter++;
            return counter;
        }
    }
    return -1;
}

int main()
{
    string patient = "test";
    string doctor = "test";
    int counter_p;
    int counter_d;

    cin >> patient;
    cin >> doctor;

    counter_p = input_valid(patient);
    counter_d = input_valid(doctor);

    if(counter_p != -1 && counter_d != -1)
    {
        if(counter_p >= counter_d)
        {
            cout << "go";
        }
        else
        {
            cout << "no";
        }
        
    }
    return 0;
}