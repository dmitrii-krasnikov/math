#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>

// # define int long long

using namespace std;
using namespace __gnu_pbds;

using ll = long long;
using ld = long double;

int mod;

struct mint {
    int x = 0;
    mint(): x(0) {}
    mint(int x1) : x(x1) {}
    mint operator+= (mint other) {
        x += other.x;
        if (x >= mod) {
            x -= mod;
        }
        return x;
    }

    mint operator-= (mint other) {
        x -= other.x;
        if (x < 0) {
            x += mod;
        }
        return x;
    }

    mint operator*= (mint other) {
        x = (ll(x)*ll(other.x)) % mod;
        return x;
    }

    friend mint operator+ (mint a, mint b) {
        return a += b;
    }

    friend mint operator- (mint a, mint b) {
        return a -= b;
    }

    friend mint operator* (mint a, mint b) {
        return a *= b;
    }

    mint pow(int d) {
        mint ans = 1;
        mint cur = x;
        for (; d > 0; d /= 2, cur *= cur) {
            if (d % 2) {
                ans *= cur;
            }
        }

        return ans;
    }

    bool operator==(const mint &other) const {
        return x == other.x;
    }

    bool operator<(const mint &other) const {
        return x < other.x;
    }

    mint inv() {
        mint a = x;
        return a.pow(mod - 2);
    }

    friend mint operator/ (mint a, mint b) {
        return a *= b.inv();
    }
};

int inv1(int a, int b, int& x, int& y) {
    if (a == 0) {
        x = 0;
        y = 1;
        return b;
    }

    int x1, y1;
    int gcd = inv1(b % a, a, x1, y1);

    x = y1 - (b / a) * x1;
    y = x1;

    return gcd;
}

void solve() {
    
}

signed main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
#ifdef LOCAL
    freopen("input.txt", "r",  stdin);
    freopen("output.txt", "w", stdout);
#endif
    int t = 1;
//    cin >> t;
    while (t--) {
        solve();
    }
}
