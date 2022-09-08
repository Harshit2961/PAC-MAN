#include<iostream>
using namespace std;

void convert_to_wave(int a[], int n)
{
    int temp;
    for(int i = 0; i<n-1; i+=2)
    {
        temp  = a[i];
        a[i]  = a[i+1];
        a[i+1]= temp;
    }
}
int main()
{
    int n, a[20];
    cout<<"Enter the size";
    cin>>n;
    cout<<"\nEnter elements in ascending or descending order\n";
    for (int i = 0; i < n; i++)
    {
        cin>>a[i];
    }
    convert_to_wave(a,n);

    for (int i = 0; i < n; i++)
    {
        cout<<a[i]<<'\t';
    }
    

    return 0;
}