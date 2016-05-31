//
//  SampleTableViewCell.m
//  diagnosis
//
//  Created by QUANTA on 16/5/29.
//  Copyright © 2016年 sysmex. All rights reserved.
//

#import "SampleTableViewCell.h"

@implementation SampleTableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //
        [self initViews];
    }
    return self; 
}

-(void)initViews{

    _barcodeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, screen_width, 24)];
    _barcodeLabel.font = [UIFont boldSystemFontOfSize:16];
    _barcodeLabel.textColor = DEFAULT_FONT_COLOR;
    // _barcodeLabel.backgroundColor = DEFAULT_BACKGROUND_COLOR;
    [self.contentView addSubview:_barcodeLabel];
    
    _companyLabel = [[UILabel alloc] initWithFrame:CGRectMake(M_MARGIN, 25, screen_width, 24)];
    _companyLabel.font = [UIFont boldSystemFontOfSize:10];
    _companyLabel.textColor = DEFAULT_FONT_LIGHT_COLOR;
    [self.contentView addSubview:_companyLabel];
    
    _createtdateLabel = [[UILabel alloc] initWithFrame:CGRectMake(M_MARGIN, 50, screen_width, 24)];
    _createtdateLabel.font = [UIFont boldSystemFontOfSize:8];
    _createtdateLabel.textColor = DEFAULT_FONT_LIGHT_COLOR;
    [self.contentView addSubview:_createtdateLabel];
    
    _enddateLabel = [[UILabel alloc] initWithFrame:CGRectMake(M_MARGIN+screen_width/2, 50, screen_width, 24)];
    _enddateLabel.font = [UIFont boldSystemFontOfSize:8];
    _enddateLabel.textColor = DEFAULT_FONT_LIGHT_COLOR;
    [self.contentView addSubview:_enddateLabel];
    
    _statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(screen_width-50-M_MARGIN, 8, 50, 20)];
    _statusLabel.font = [UIFont boldSystemFontOfSize:12];
    _statusLabel.textColor = DEFAULT_WHITE_COLOR;
    _statusLabel.backgroundColor = DEFAULT_STATUS;
    _statusLabel.textAlignment = UITextAlignmentCenter;
    [self.contentView addSubview:_statusLabel];
    
}

-(void)setSampleData:(SampleModel *)sampleData{
    
    _sampleData = sampleData;
    _barcodeLabel.text = _sampleData.barcode;
    
    
    if (IsNilOrNull(_sampleData.enddate)) {
        _sampleData.enddate= @"";
    }
    if (IsNilOrNull(_sampleData.uploadCompany)) {
        _sampleData.uploadCompany= @"";
    }
    if (IsNilOrNull(_sampleData.createtimeStr)) {
        _sampleData.createtimeStr= @"";
    }
    
    _companyLabel.text = StrCat(@"上传单位: ",_sampleData.uploadCompany);
    _createtdateLabel.text = StrCat(@"上传日期: ",_sampleData.createtimeStr);
    _enddateLabel.text = StrCat(@"截止日期: ",_sampleData.enddate);
    _statusLabel.text = _sampleData.diagnosestatusStr;

}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
