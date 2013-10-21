//
//  BNRViewController.m
//  Quiz
//
//  Created by Michael Ward on 5/9/12.
//  Copyright (c) 2012 Big Nerd Ranch, Inc. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Create two arrays and make the pointers point to them
        questions = [NSMutableArray array];
        answers = [NSMutableArray array];
        
        // Add questions and answers to the arrays
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"What is the Capital of Georgia?"];
        [answers addObject:@"Atlanta"];
    }
    return self;
}

    -(IBAction)showQuestion:(id)sender
    {
        // Step to the next question
        currentQuestionIndex++;
        
        // Am I past the last question?
        if (currentQuestionIndex == [questions count])  {
        
            // Go back to the first question
            currentQuestionIndex = 0;
        }
        
        // Get the string at the index in the questions array
        NSString *question = [questions objectAtIndex:currentQuestionIndex];
        
        // Log the string to the console
        NSLog(@"displaying question: %@", question);
        
        // Display the string in the question field
        [questionField setText:question];
        
        // Clear the answer field
        [answerField setText:@"???"];
    }
    
    - (IBAction)showAnswer:(id)sender
    {
        // What is the answer to the current question?
        NSString *answer = [answers objectAtIndex:currentQuestionIndex];
        
        // Display it in the answer field
        [answerField setText:answer];
    }
    
@end