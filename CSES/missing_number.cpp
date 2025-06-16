#include <bits/stdc++.h>
using namespace std;

#define ll long long
#define vi vector<int>
#define vll vector<long long>
#define pb push_back
#define all(x) x.begin(), x.end()
#define sz(x) (int)x.size()

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    
    ll t;
    cin >> t;

    ll full_sum = t * (t+1) / 2;
    ll sum = 0;

    t -= 1; 
    while (t--) {
      ll n;
      cin >> n;
      sum += n;
    }

    cout << full_sum - sum << "\n";
    
    return 0;
}
