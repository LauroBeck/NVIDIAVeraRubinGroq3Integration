#include <iostream>
#include <vector>

int main() {
    const int N = 512;
    std::vector<float> data(N * N, 0.98f); 
    std::vector<float> weights(N * N, 1.03f); 
    std::vector<float> result(N * N, 0.0f);

    std::cout << "[C++ Core] Running Parallel Matrix Op (OpenMP Optimized)..." << std::endl;
    
    #pragma omp parallel for collapse(2)
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            float sum = 0;
            for (int k = 0; k < N; ++k) {
                sum += data[i * N + k] * weights[k * N + j];
            }
            result[i * N + j] = sum;
        }
    }

    std::cout << "[C++ Core] Calculation Complete. Result[0]: " << result[0] << std::endl;
    return 0;
}
