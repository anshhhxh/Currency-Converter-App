#include<iostream>
using namespace std;
int Rbinary(int low,int high,int key,int A[]){
    if(low==high){
        if(A[low]==key){
            return low;
        }
        else    return -1;
    }
    int mid=(low+high)/2;
    if(key==A[mid]){
        return mid;
    }
    else if(key<A[mid]){
        return Rbinary(low,mid-1,key,A);
    }
    else{
        return Rbinary(mid+1,high,key,A);
    }
    return -1;
}
int binary(int key,int A[],int n){
    int low=0;
    int high=n-1;
    while(low<=high){
        int mid=(low+high)/2;
        if(A[mid]==key) return mid;
        if(A[mid]<key)  low=mid+1;
        else    high=mid-1;
    }
    return -1;
}
int main(){
    int n=10;
    int A[n]={1,5,9,12,56,78,79,80,81,82};
    int ans=binary(5,A,n);
    int Rans=Rbinary(0,9,5,A);
    cout<<ans<<"    "<<Rans;
    return 0;
}