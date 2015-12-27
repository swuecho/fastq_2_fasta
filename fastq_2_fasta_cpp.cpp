#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char * argv[])
{
    std::ifstream file(argv[1]);
    std::string line;
    int line_num = 0;
    while (std::getline(file, line)) {
         if ( line_num % 4 == 0) {
            std::cout << line.replace(0,1,">") << std::endl;
         }
         if ( line_num % 4 == 1 ) {
            std::cout << line << std::endl;
         }
       line_num++;
    }
    return 0;
}
