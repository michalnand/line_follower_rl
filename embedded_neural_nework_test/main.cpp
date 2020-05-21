#include <LineNetwork.h>
#include <iostream>

int main()
{
	LineNetwork model;

	srand(time(NULL));

	unsigned int ptr;

	ptr = 0;
	for (unsigned int y = 0; y < 96; y++)
		for (unsigned int x = 0; x < 96; x++)
			model.input_buffer()[ptr++] = rand()%127;

	model.forward();

	ptr = 0;
	for (unsigned int y = 0; y < 6; y++)
	{
		for (unsigned int x = 0; x < 6; x++)
		{
			int8_t v = model.output_buffer()[ptr++];
			std::cout << (int)v << " ";
		}
		std::cout << "\n";
	}
	std::cout << "\n";

	return 0;
}