// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Database Migration API (datamigration/v1beta1)
// Description:
//   Manage Cloud Database Migration Service resources on Google Cloud Platform.
// Documentation:
//   https://cloud.google.com/datamigration/

#import "GTLRCloudDatabaseMigrationServiceQuery.h"

#import "GTLRCloudDatabaseMigrationServiceObjects.h"

@implementation GTLRCloudDatabaseMigrationServiceQuery

@dynamic fields;

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesCreate

@dynamic connectionProfileId, parent, requestId;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_ConnectionProfile *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/connectionProfiles";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.create";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesDelete

@dynamic force, name, requestId;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.delete";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_ConnectionProfile class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.get";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:getIamPolicy";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Policy class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.getIamPolicy";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesList

@dynamic filter, orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/connectionProfiles";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_ListConnectionProfilesResponse class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.list";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesPatch

@dynamic name, requestId, updateMask;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_ConnectionProfile *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.patch";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:setIamPolicy";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Policy class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.setIamPolicy";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:testIamPermissions";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsConnectionProfilesTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_TestIamPermissionsResponse class];
  query.loggingName = @"datamigration.projects.locations.connectionProfiles.testIamPermissions";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Location class];
  query.loggingName = @"datamigration.projects.locations.get";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}/locations";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_ListLocationsResponse class];
  query.loggingName = @"datamigration.projects.locations.list";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsCreate

@dynamic migrationJobId, parent, requestId;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_MigrationJob *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/migrationJobs";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.create";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsDelete

@dynamic force, name, requestId;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.delete";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsGenerateSshScript

@dynamic migrationJob;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_GenerateSshScriptRequest *)object
                   migrationJob:(NSString *)migrationJob {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"migrationJob" ];
  NSString *pathURITemplate = @"v1beta1/{+migrationJob}:generateSshScript";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsGenerateSshScript *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.migrationJob = migrationJob;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_SshScript class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.generateSshScript";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_MigrationJob class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.get";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:getIamPolicy";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Policy class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.getIamPolicy";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsList

@dynamic filter, orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/migrationJobs";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_ListMigrationJobsResponse class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.list";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsPatch

@dynamic name, requestId, updateMask;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_MigrationJob *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.patch";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsPromote

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_PromoteMigrationJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:promote";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsPromote *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.promote";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsRestart

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_RestartMigrationJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:restart";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsRestart *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.restart";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsResume

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_ResumeMigrationJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:resume";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsResume *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.resume";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:setIamPolicy";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Policy class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.setIamPolicy";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsStart

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_StartMigrationJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:start";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsStart *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.start";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsStop

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_StopMigrationJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:stop";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsStop *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.stop";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:testIamPermissions";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_TestIamPermissionsResponse class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.testIamPermissions";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsVerify

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_VerifyMigrationJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:verify";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsMigrationJobsVerify *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.migrationJobs.verify";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsCancel

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudDatabaseMigrationService_CancelOperationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:cancel";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Empty class];
  query.loggingName = @"datamigration.projects.locations.operations.cancel";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Empty class];
  query.loggingName = @"datamigration.projects.locations.operations.delete";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_Operation class];
  query.loggingName = @"datamigration.projects.locations.operations.get";
  return query;
}

@end

@implementation GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}/operations";
  GTLRCloudDatabaseMigrationServiceQuery_ProjectsLocationsOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudDatabaseMigrationService_ListOperationsResponse class];
  query.loggingName = @"datamigration.projects.locations.operations.list";
  return query;
}

@end