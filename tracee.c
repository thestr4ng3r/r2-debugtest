
#include <stdio.h>
#include <unistd.h>

void century() {
	printf("21st century\n");
}

void schizoid() {
	printf("schizoid man\n");
}

int main() {
	usleep(100000);
	century();
	usleep(1000000);
	schizoid();
	// for(int i=0;; i++) {
	// 	printf("tracee: %d\n", i);
	// 	usleep(1000000);
	// }
	return 0;
}
