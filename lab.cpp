#include <iostream>
#include <iomanip>

constexpr int N = 2048;
constexpr int repetitions = 3000000;

static float a[N], b[N], c[N];

[[gnu::noinline]] void init() {
    for (int i = 0; i < N; ++i) {
        a[i] = (i % 100) * 0.01f;
        b[i] = 1.0f;
    }
}

[[gnu::noinline]] void scale_add(float k) {
    for (int i = 0; i < N; ++i)
        c[i] = k * a[i] + b[i];
}

[[gnu::noinline]] float dot() {
    float s = 0.0f;
    for (int i = 0; i < N; ++i)
        s += a[i] * c[i];
    return s;
}

[[gnu::noinline]] float step(int r) {
    scale_add(1.0f + (r & 7));
    return dot();
}

int main() {
    init();
    double total = 0.0;
    for (int r = 0; r < repetitions; ++r)
        total += step(r);
    std::cout << std::fixed << std::setprecision(2) << "total = " << total << '\n';
}
