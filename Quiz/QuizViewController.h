//
//  QuizViewController.h
//  Quiz
//
//  Created by DAVID STROUD on 9/12/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //  The view objects - don't worry about IBOutlet
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
