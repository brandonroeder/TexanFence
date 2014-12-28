//
//  MyForm.m
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/23/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import "MyForm.h"
#import "FXForms.h"

@implementation MyForm

- (NSDictionary *)phoneField
{
    return @{FXFormFieldType: FXFormFieldTypeNumber, FXFormFieldTitle: @"Phone:"};

}
- (NSDictionary *)zipField
{
    return @{FXFormFieldType: FXFormFieldTypeNumber, FXFormFieldTitle: @"Zip Code:"};
    
}

- (NSDictionary *)descriptionField
{
    return @{FXFormFieldType: FXFormFieldTypeLongText, FXFormFieldTitle: @"Job Description:"};
    
}

- (NSDictionary *)nameField
{
    return @{FXFormFieldTitle: @"Name:"};
    
}

- (NSDictionary *)cityField
{
    return @{FXFormFieldTitle: @"City:"};
    
}

@end
