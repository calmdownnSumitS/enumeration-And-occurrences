//
//  ViewController.m
//  enumeration
//
//  Created by macserver on 7/3/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *string;
    NSUInteger numberOfMatches;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    string=self.textot.text;
  
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }


- (IBAction)buttonot:(id)sender {
    
    
    //////////////////////////////////search only alphabate :enamuration /////////////////////////////////////
    
    
//    NSString     *string     = @"wow";/////static
    
     string=self.textot.text;  //dynamic
    
    
//    NSCountedSet *countedSet = [NSCountedSet new];
//    
//    [string enumerateSubstringsInRange:NSMakeRange(0, [string length])
//                               options:NSStringEnumerationByComposedCharacterSequences | NSStringEnumerationLocalized
//                            usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop){
//                                
//                                // This block is called once for each word in the string.
//                                [countedSet addObject:substring];
//                                
//                                // If you want to ignore case, so that "this" and "This"
//                                // are counted the same, use this line instead to convert
//                                // each word to lowercase first:
//                                // [countedSet addObject:[substring lowercaseString]];
//                            }];
//    
//    NSLog(@"%@", countedSet);
//    NSLog(@"%@", [countedSet allObjects]);

   
    
    
    ////////////////////////searching a particular word or alphabate:occurance//////////////////
    
    
    
   
    string=self.textot.text;
    
   
    NSError *error = NULL;

    //    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"A" options:NSRegularExpressionCaseInsensitive error:&error];    //Static
    
     NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:self.finditot.text options:NSRegularExpressionCaseInsensitive error:&error];   //dynamic
  
    numberOfMatches = [regex numberOfMatchesInString:string options:0 range:NSMakeRange(0, [string length])];
    NSLog(@"Found %lu",(unsigned long)numberOfMatches);
    
    }
@end
