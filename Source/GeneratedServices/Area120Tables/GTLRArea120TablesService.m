// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Area120 Tables API (area120tables/v1alpha1)
// Documentation:
//   https://support.google.com/area120-tables/answer/10011390

#import "GTLRArea120Tables.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeArea120TablesDrive              = @"https://www.googleapis.com/auth/drive";
NSString * const kGTLRAuthScopeArea120TablesDriveFile          = @"https://www.googleapis.com/auth/drive.file";
NSString * const kGTLRAuthScopeArea120TablesDriveReadonly      = @"https://www.googleapis.com/auth/drive.readonly";
NSString * const kGTLRAuthScopeArea120TablesSpreadsheets       = @"https://www.googleapis.com/auth/spreadsheets";
NSString * const kGTLRAuthScopeArea120TablesSpreadsheetsReadonly = @"https://www.googleapis.com/auth/spreadsheets.readonly";
NSString * const kGTLRAuthScopeArea120TablesTables             = @"https://www.googleapis.com/auth/tables";

// ----------------------------------------------------------------------------
//   GTLRArea120TablesService
//

@implementation GTLRArea120TablesService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://area120tables.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
