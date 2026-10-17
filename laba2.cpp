#include <iostream>
#include <vector>

const int N = 1500;

void multiplyMatrices(const std::vector<int>& A,
                      const std::vector<int>& B,
                      std::vector<int>& C) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            int sum = 0;
            for (int k = 0; k < N; ++k) {
                sum += A[i * N + k] * B[k * N + j];
            }
            C[i * N + j] = sum;
        }
    }
}

int main() {
    std::vector<int> A(N * N, 1);
    std::vector<int> B(N * N, 2);
    std::vector<int> C(N * N, 0);

    std::cout << "Start " << N << "x" << N << "...\n";
    multiplyMatrices(A, B, C);
    std::cout << "Result C[0]: " << C[0] << '\n';

    return 0;
}
