#include<iostream>
using namespace std;
 
int main(){
    int n;
    cout<<"Input quantity tops: ";
    cin>>n;
    int i,j,a[n][n];
    cout<<"\nInput adjacency matrix ("<<n<<"x"<<n<<")\n";
    for(i=0;i<n;i++){
        for(j=0;j<n;j++){
            cin>>a[i][j];
        }
    }
    
    cout<<"\nAdjacency matrix";
    for(i=0;i<n;i++){
        cout<<endl;
        for(j=0;j<n;j++){
            cout<<a[i][j]<<" ";
        }
    }
    cout<<endl;
    
    int b[n][n],l,k=-1;
    for(i=0;i<n;i++){
        int t=-1;
        for(j=i;j<n;j++){
            if(a[i][j]==1){
                t=j;
                k++;
                for(l=0;l<n;l++){
                    if(l==t){
                        b[l][k]=1;
                    }else{
                        b[l][k]=0;
                    }
                    if(l==i)
                        b[l][k]=1;
                }
                t=-1;
            }
        }
    }
    
    cout<<"\nMatrix of incidence";
    for(i=0;i<n;i++){
        cout<<endl;
        for(j=0;j<k+1;j++){//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            cout<<b[i][j]<<" ";
        }
    }
    cout<<endl;
}
   