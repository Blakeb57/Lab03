/*
* Author: Blake Boehringer
* Date: 9/11/2020
* Description:
*/

#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <fstream>
#include "numlist.h"
using namespace std;

//function prototypes
int main() 
{
    NumList MyNum;
    ifstream MyIfs;
    string filename;

    cout << "-Please input the name of your file." << endl;
    cin >> filename;

    MyIfs.open(filename.c_str());

    if(MyIfs.fail())
    {
        cout << "-File error." << endl;

        return 1;
    }


    return 0;
}
