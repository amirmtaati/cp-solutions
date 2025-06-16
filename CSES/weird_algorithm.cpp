#include <bits/stdc++.h>
using namespace std;

#define vi vector<int>
#define vll vector<long long>
#define ll long long int
#define pb push_back
#define all(x) x.begin(), x.end()
#define sz(x) (int)x.size()


int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    
    int t = 1;
    // cin >> t;
    
    while (t--) {
      ll n;
      cin >> n;

      cout << n << " ";
      while (n != 1) {
        n = (n%2 == 0) ? n / 2 : n*3 + 1;
        cout << n << " ";
      }
      cout << "\n";
    }
    return 0;
}
