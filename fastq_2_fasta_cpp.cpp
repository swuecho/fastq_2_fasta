#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char * argv[])
{
       std::ifstream file(argv[1]);
       std::string line;
         while (std::getline(file, line)) {
           std::cout << line << std::endl;
       }
       return 0;
}
