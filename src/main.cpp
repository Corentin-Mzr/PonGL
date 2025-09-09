#include "app.hpp"

int main()
{
    std::cout << "Hello World !\n";

    try
    {
        App app;
        app.run();
    }
    catch (std::exception &e)
    {
        std::cerr << "[ERROR] " << e.what() << "\n";
    }

    std::cout << "Goodbye world !\n";
    return 0;
}
