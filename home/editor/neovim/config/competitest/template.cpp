// Problem: $(PROBLEM)
// Contest: $(CONTEST)
// Judge: $(JUDGE)
// URL: $(URL)
// Memory Limit: $(MEMLIM)
// Time Limit: $(TIMELIM)
// Start: $(DATE)

#include <bits/stdc++.h>
using namespace std;
 
#ifndef ONLINE_JUDGE
#define DEBUG fprintf(stderr, "====TESTING====\n")
#define VALUE(x) cerr << #x << ": " << x << endl
#define VEC_VALUE(x)                                                           \
  cerr << #x << "(vector): ";                                                  \
  for (auto temp_debug_value : x)                                              \
    cerr << temp_debug_value << " ";                                           \
  cerr << endl;
#define debug(...) fprintf(stderr, __VA_ARGS__)
#else
#define DEBUG
#define VALUE(x)
#define debug(...)
#define VEC_VALUE(x)
#endif
 
#define MOD 1000000007
 
#define FOR(a, b, c) for (int a = b; a < c; ++a)
#define FORD(a, b, c) for (int a = b; a >= c; --a)
#define REP(i, n) FOR(i, 0, n)
 
#define MAX(a, b) a = max(a, b)
#define MIN(a, b) a = min(a, b)
 
#define ALL(a) a.begin(), a.end()
#define SORT(a) sort(ALL(a))
 
#define ITER(a, x) for (auto x : a)
 
#define READ(a, t)                                                             \
  t a;                                                                         \
  cin >> a;
 
#define READ_VEC(a, t, n)                                                      \
  vector<t> a(n);                                                              \
  REP(i, n) cin >> a[i];
 
typedef long long LL;
typedef pair<int, int> pii;
typedef pair<LL, LL> pll;
typedef pair<string, string> pss;
typedef vector<int> vi;
typedef vector<vi> vvi;
typedef vector<pii> vii;
typedef vector<LL> vl;
typedef vector<vl> vvl;
 
double EPS = 1e-9;
int INF = 1000000005;
long long INFF = 1000000000000000005LL;
double PI = acos(-1);
int dirx[8] = {-1, 0, 0, 1, -1, -1, 1, 1};
int diry[8] = {0, 1, -1, 0, -1, 1, -1, 1};
 
vi dp(100001, 0);
 
void solve() {
  // Solution
}
 
int main() {
  cin.tie(0);
  ios_base::sync_with_stdio(0);
  READ(t, int);
  while (t--) {
    solve();
  }
  return 0;
}
