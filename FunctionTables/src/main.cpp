#include "pch.h"

#define TABLE(x, min, max, increment) \
	std::cout << "Table of Results for " << #x << ": " << std::endl; \
	std::cout << "Value\tResult" << std::endl;\
	for(double i = (min); i < (max); i += (increment)) \
	{ \
		auto res = x(i); \
		std::cout << i << "\t" << fmt::format("{0:.4%}", res) << "\n"; \
	} \
	std::cout << "\n\n" << std::endl

double Test1(double arg)
{
	return 1 / (1 + arg);
}

double Test2(double arg)
{
	return pow(1 / (1 + arg), 1.0 / 3.0);
}

double Test3(double arg)
{
	return pow(1 / (1 + arg), 1.0 / 3.0 * 1.5);
}

double Test4(double arg)
{
	return pow(1 / (1 + arg), arg / 273);
}

int main(int argc, char** args)
{
	TABLE(Test1, 0, 273, 10);
	TABLE(Test2, 0, 273, 10);
	TABLE(Test3, 0, 273, 10);
	TABLE(Test4, 0, 273, 10);
	return 0;
}
