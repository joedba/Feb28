//
//  View.m
//  Feb28
//
//  Created by Joe Gabela on 2/24/13.
//  Copyright (c) 2013 Joe Gabela. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    /*
    // Drawing code
  // Drawing code
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	CGContextRef c = UIGraphicsGetCurrentContext();
    */
     
    //Keep the size of the view the same,
    //but let the center of the view be the origin.
    CGSize size = self.bounds.size;

    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    self.bounds = CGRectMake(-w / 2, -h / 2, w, h);


     CGContextRef c = UIGraphicsGetCurrentContext();
    

    
	//Bar Chart
	CGContextBeginPath(c);
    
	CGContextTranslateCTM(c, size.width / 7, size.height / 2); //origin at center of view
	CGContextScaleCTM(c, 1, -1);                               //make Y axis point up
 
  
    
    CGContextAddRect(c, CGRectMake( 0 * w / 13, 95, w / 13, 55));
 
	CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);
	CGContextFillPath(c);
    
    
    
    CGContextBeginPath(c);
	CGContextAddRect(c, CGRectMake( 1 * w / 13, 95, w / 13, 95));
    
	CGContextSetRGBFillColor(c, 0.0, 0.0, 1.0, 1.0);
	CGContextFillPath(c);
 

    
    
    CGContextBeginPath(c);
	CGContextAddRect(c, CGRectMake( 2 * w / 13, 95, w / 13, 75));
    
	CGContextSetRGBFillColor(c, 0.0, 1.0, 1.0, 1.0);
	CGContextFillPath(c);
    

    
    
    CGContextBeginPath(c);
	CGContextAddRect(c, CGRectMake( 3 * w / 13, 95, w / 13, 45));
    
	CGContextSetRGBFillColor(c, 0.0, 1.0, 0.0, 1.0);
	CGContextFillPath(c);
    
    


  }


@end
