#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"


MODULE = Acme::Helloworld		PACKAGE = Acme::Helloworld		

void
hello()
    CODE:
        printf("Hello, world!\n");

int
my_func(input1, input2)
    int input1
    char* input2
    CODE:
        RETVAL = input1 / 2;
        printf("%s\n", input2);
    OUTPUT:
        RETVAL
