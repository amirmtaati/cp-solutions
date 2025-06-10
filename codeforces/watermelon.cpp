#include <bits/stdc++.h>

using namespace std;

bool isEven(int n) {
  return (n&1) ? false : true;
}

int main() {
  int n;
  cin >> n;

  string result = (isEven(n) && n > 2) ? "YES\n" : "NO\n";
  cout << result;

  return 0;
}
