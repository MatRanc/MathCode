//
//  main.m
//  quadraticEquation
//
//  Created by Mathieu Rancourt on 2019-09-09.
//  Copyright © 2019 Forward Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "math.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Input values
        double in_a = 5;     //5
        double in_b = -4;     //-4
        double in_c = -12;     //-212
        
        //Get negative of B
        double neg_b = in_b * (-1);
        //Square B
        double b_sqrd = pow(in_b, 2);   //pow = "to the power of" | pow(3,2) = three to the power of two
        //Defining parts of the equation
        //ac
        double ac = (in_a)*(in_c);
        //4ac
        double fourac = 4*ac;
        //b^2-4ac
        double bsquaredminusfourac = b_sqrd - fourac;
        //Square root of 4ac
        double sqrtbsquaredminusfourac = sqrt(bsquaredminusfourac);
        //Preparing equation
        double tophalfplus = (neg_b) + sqrtbsquaredminusfourac;
        double tophalfminus = neg_b - sqrtbsquaredminusfourac;
        double bottomhalf = 2*(in_a);
        //All together
        double wholeplus = tophalfplus / bottomhalf;
        double wholeminus = tophalfminus / bottomhalf;

        //Errors
        if(bsquaredminusfourac < 0){
            printf("ERROR 1: Complex roots not supported as of now.\n");
            exit(1);
        }

        //Print results
        printf("The x intercepts of the equation are %0.2f, %0.2f\n", wholeplus, wholeminus);
        
    }
    return 0;
}

/*
 //Test each value
 printf("%f\n", neg_b);
 printf("%f\n", b_sqrd);
 printf("%f\n", ac);
 printf("%f\n", fourac);
 printf("%f\n", bsquaredminusfourac);
 printf("%f\n", sqrtbsquaredminusfourac);
 printf("%f\n", tophalfplus);
 printf("%f\n", tophalfminus);
 printf("%f\n", bottomhalf);
 */
