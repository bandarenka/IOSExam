//
//  ViewController.m
//  Exam
//
//  Created by Admin on 29.10.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _jokes = @[@"joke1", @"joke2", @"joke3", @"joke4"];
    _currentPosition = 0;
    _jokeLabel.text = _jokes[_currentPosition];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextJoke:(id)sender {
    _currentPosition++;
    if(_currentPosition < _jokes.count)
    {
        _jokeLabel.text = _jokes[_currentPosition];
    }
    else
    {
        _currentPosition = _jokes.count - 1;
    }
}

- (IBAction)previousJoke:(id)sender {
    _currentPosition--;
    if(_currentPosition >= 0)
    {
        _jokeLabel.text = _jokes[_currentPosition];
    }
    else
    {
        _currentPosition = 0;
    }
}



@end
