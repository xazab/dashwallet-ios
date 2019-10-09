//
//  Created by Andrew Podkovyrin
//  Copyright © 2019 Dash Core Group. All rights reserved.
//
//  Licensed under the MIT License (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  https://opensource.org/licenses/MIT
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import <UIKit/UIKit.h>

#import "DWTitleDetailItem.h"

NS_ASSUME_NONNULL_BEGIN

/**
 Content padding
 
 - DWTitleDetailCellViewPadding_None: 0 pt
 - DWTitleDetailCellViewPadding_Small: 12 pt
 */
typedef NS_ENUM(NSUInteger, DWTitleDetailCellViewPadding) {
    DWTitleDetailCellViewPadding_None,
    DWTitleDetailCellViewPadding_Small,
};

typedef NS_ENUM(NSUInteger, DWTitleDetailCellViewSeparatorPosition) {
    DWTitleDetailCellViewSeparatorPosition_Bottom,
    DWTitleDetailCellViewSeparatorPosition_Top,
};

@interface DWTitleDetailCellView : UIView

@property (nonatomic, assign) DWTitleDetailCellViewPadding contentPadding;
@property (nonatomic, assign) DWTitleDetailCellViewSeparatorPosition separatorPosition;
@property (nullable, nonatomic, strong) id<DWTitleDetailItem> model;

@end

NS_ASSUME_NONNULL_END