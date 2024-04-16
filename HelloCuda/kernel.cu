#include <cstdio>
#include <cuda.h>
#include <cuda_runtime.h>
#include <cuda_runtime_api.h>
#include <device_launch_parameters.h>

__global__ void hello(void) {
	printf("hello CUDA %d!\n", threadIdx.x);
}

int main(void) {
	hello <<< 8, 2 >>> ();
	fflush(stdout);
	return 0;
}