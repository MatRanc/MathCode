//
//  main.m
//  rightbisector
//
//  Created by Mathieu Rancourt on 2019-08-09.
//  Copyright © 2019 Forward Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Accelerate/Accelerate.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //grab all the coordinates
        float x1input;
        printf("X1 Coordinate: ");
        scanf("%f",&x1input);
        
        float y1input;
        printf("Y1 Coordinate: ");
        scanf("%f",&y1input);
        
        float x2input;
        printf("X2 Coordinate: ");
        scanf("%f",&x2input);
        
        float y2input;
        printf("Y2 Coordinate: ");
        scanf("%f",&y2input);
        
        
        //point 1 cords
        double x1 = x1input;
        double y1 = y1input;
        
        //point 2 cords
        double x2 = x2input;
        double y2 = y2input;
        
        
        //slope x and y
        double slopeY = (y2-y1);
        double slopeX = (x2-x1);
        //slope
        double slopeAll = slopeY/slopeX;
        //neg reciprocal
        double slopeReciprocal = (slopeX/slopeY) * -1;
        
        //midpoint
        double midpointX = (x1 + x2)/2;
        double midpointY = (y1 + y2)/2;
        
        //parts for y = mx + b
        double mx = slopeReciprocal * midpointX;
        double y = midpointY;
        double b = y - mx;
        
        //parts for original slope
        double origMX = slopeAll * midpointX;
        double origY = midpointY;
        double origB = origY - origMX;
        
        
        
                //Errors if slope = 0
                if(slopeAll == 0){
                    printf("ERROR: Slope = 0\n");
                    exit(1);
                };
        
                if(slopeReciprocal == -0){
                    printf("ERROR: Slope = 0\n");
                    exit(2);
                };
        
                if(x1==x2==y1==y2){
                    printf("ERROR: Slope = 0\n");
                    exit(3);
                };
        
                if(  (x1+y1)==(x2+y2)  ){
                    printf("ERROR: Slope = 0\n");
                    exit(4);
                };
        
        
        
        //print stuff
        printf("Midpoint X = %0.2f, Midpoint Y = %0.2f\n", midpointX, midpointY);
        printf("The slope of the line is %0.2f\n", slopeAll);
        printf("The negative reciprocal of the line is %0.2f\n\n", slopeReciprocal);
        
        
        
        //Prints final answer also if its negative dont include an addition sign
        if (b < 0) {
            printf("The slope of the right bisector is y = %0.2fx %0.2f\n", slopeReciprocal, b);
        }
        else {
            printf("The slope of the right bisector is y = %0.2fx + %0.2f\n", slopeReciprocal, b);
        }
        
        
                //Code for asking if original slope is wanted to be shown
                //values for asking if orig slope is wanted
                char origSlopeYN;
                //Ask if orig slope is wanted
                printf("Show original slope? (Y/N): ");
                scanf("%s",&origSlopeYN);
                //Make all NSStrings
                NSString* yes = @"Y";
                NSString* origSlopeYNNString = [NSString stringWithFormat:@"%c" , origSlopeYN];
        
                if([origSlopeYNNString isEqualToString:yes]){
                    //Prints original slope also if its negative dont include an addition sign
                    if (b < 0) {
                        
                        printf("The original slope is y = %0.2fx %0.2f\n", slopeAll, origB);
                    }
                    else {
                        printf("The original slope is y = %0.2fx + %0.2f\n", slopeAll, origB);
                    }
                }
                //exits with code 5
                else {
                    exit(5);
                }
        
        
        
    }
    return 0;
}


/* old readline code
 //grab all the coordinates
 printf("X1 Coordinate:\n");
 const char *x1input = readline(NULL);
 printf("Y1 Coordinate:\n");
 const char *y1input = readline(NULL);
 printf("X2 Coordinate:\n");
 const char *x2input = readline(NULL);
 printf("Y2 Coordinate:\n");
 const char *y2input = readline(NULL);
 */
