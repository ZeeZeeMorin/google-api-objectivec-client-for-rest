// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Gmail Postmaster Tools API (gmailpostmastertools/v1)
// Description:
//   The Postmaster Tools API is a RESTful API that provides programmatic access
//   to email traffic metrics (like spam reports, delivery errors etc) otherwise
//   available through the Gmail Postmaster Tools UI currently.
// Documentation:
//   https://developers.google.com/gmail/postmaster

#import "GTLRPostmasterToolsQuery.h"

#import "GTLRPostmasterToolsObjects.h"

@implementation GTLRPostmasterToolsQuery

@dynamic fields;

@end

@implementation GTLRPostmasterToolsQuery_DomainsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPostmasterToolsQuery_DomainsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRPostmasterTools_Domain class];
  query.loggingName = @"gmailpostmastertools.domains.get";
  return query;
}

@end

@implementation GTLRPostmasterToolsQuery_DomainsList

@dynamic pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/domains";
  GTLRPostmasterToolsQuery_DomainsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRPostmasterTools_ListDomainsResponse class];
  query.loggingName = @"gmailpostmastertools.domains.list";
  return query;
}

@end

@implementation GTLRPostmasterToolsQuery_DomainsTrafficStatsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPostmasterToolsQuery_DomainsTrafficStatsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRPostmasterTools_TrafficStats class];
  query.loggingName = @"gmailpostmastertools.domains.trafficStats.get";
  return query;
}

@end

@implementation GTLRPostmasterToolsQuery_DomainsTrafficStatsList

@dynamic endDateDay, endDateMonth, endDateYear, pageSize, pageToken, parent,
         startDateDay, startDateMonth, startDateYear;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"endDateDay" : @"endDate.day",
    @"endDateMonth" : @"endDate.month",
    @"endDateYear" : @"endDate.year",
    @"startDateDay" : @"startDate.day",
    @"startDateMonth" : @"startDate.month",
    @"startDateYear" : @"startDate.year"
  };
  return map;
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/trafficStats";
  GTLRPostmasterToolsQuery_DomainsTrafficStatsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRPostmasterTools_ListTrafficStatsResponse class];
  query.loggingName = @"gmailpostmastertools.domains.trafficStats.list";
  return query;
}

@end
