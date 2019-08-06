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

#import "DWBalancePayReceiveButtonsView.h"

#import "DevicesCompatibility.h"
#import "UIColor+DWStyle.h"
#import "UIFont+DWFont.h"

NS_ASSUME_NONNULL_BEGIN

static CGFloat const BalanceButtonMinHeight(void) {
    if (IS_IPHONE_5_OR_LESS) {
        return 80.0;
    }
    else {
        return 120.0;
    }
}

@interface DWBalancePayReceiveButtonsView ()

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *dashBalanceLabel;
@property (strong, nonatomic) IBOutlet UILabel *fiatBalanceLabel;
@property (strong, nonatomic) IBOutlet UIButton *payButton;
@property (strong, nonatomic) IBOutlet UIButton *receiveButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *balanceViewHeightContraint;

@end

@implementation DWBalancePayReceiveButtonsView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    [self addSubview:self.contentView];
    self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.contentView.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.contentView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.contentView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
        [self.contentView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [self.contentView.widthAnchor constraintEqualToAnchor:self.widthAnchor],
    ]];

    self.backgroundColor = [UIColor dw_backgroundColor];

    self.titleLabel.text = NSLocalizedString(@"Available balance", nil);
    self.titleLabel.font = [UIFont dw_fontForTextStyle:UIFontTextStyleBody];

    self.dashBalanceLabel.font = [UIFont dw_fontForTextStyle:UIFontTextStyleTitle1];
    self.fiatBalanceLabel.font = [UIFont dw_fontForTextStyle:UIFontTextStyleBody];

    [self.payButton setTitle:NSLocalizedString(@"Pay", nil) forState:UIControlStateNormal];
    self.payButton.titleLabel.font = [UIFont dw_fontForTextStyle:UIFontTextStyleCaption1];

    [self.receiveButton setTitle:NSLocalizedString(@"Receive", nil) forState:UIControlStateNormal];
    self.receiveButton.titleLabel.font = [UIFont dw_fontForTextStyle:UIFontTextStyleCaption1];

    self.balanceViewHeightContraint.constant = BalanceButtonMinHeight();
}

#pragma mark - Actions

- (IBAction)payButtonAction:(id)sender {
}

- (IBAction)receiveButtonAction:(id)sender {
}

@end

NS_ASSUME_NONNULL_END