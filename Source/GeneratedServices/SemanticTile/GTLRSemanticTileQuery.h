// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Semantic Tile API (vectortile/v1)
// Description:
//   Serves vector tiles containing geospatial data.
// Documentation:
//   https://developers.google.com/maps/contact-sales/

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the query classes' properties below.

// ----------------------------------------------------------------------------
// clientInfoPlatform

/**
 *  Android
 *
 *  Value: "ANDROID"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformAndroid;
/**
 *  Development environment.
 *
 *  Value: "EDITOR"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformEditor;
/**
 *  iOS
 *
 *  Value: "IOS"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformIos;
/**
 *  Linux
 *
 *  Value: "LINUX"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformLinux;
/**
 *  macOS.
 *
 *  Value: "MAC_OS"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformMacOs;
/**
 *  Unspecified or unknown OS.
 *
 *  Value: "PLATFORM_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformPlatformUnspecified;
/**
 *  WebGL.
 *
 *  Value: "WEB_GL"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformWebGl;
/**
 *  Windows.
 *
 *  Value: "WINDOWS"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileClientInfoPlatformWindows;

// ----------------------------------------------------------------------------
// terrainFormats

/**
 *  Terrain elevation data encoded as a FirstDerivativeElevationGrid. .
 *
 *  Value: "FIRST_DERIVATIVE"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileTerrainFormatsFirstDerivative;
/**
 *  Terrain elevation data encoded as a SecondDerivativeElevationGrid.
 *
 *  Value: "SECOND_DERIVATIVE"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileTerrainFormatsSecondDerivative;
/**
 *  An unknown or unspecified terrain format.
 *
 *  Value: "TERRAIN_FORMAT_UNKNOWN"
 */
FOUNDATION_EXTERN NSString * const kGTLRSemanticTileTerrainFormatsTerrainFormatUnknown;

// ----------------------------------------------------------------------------
// Query Classes
//

/**
 *  Parent class for other Semantic Tile query classes.
 */
@interface GTLRSemanticTileQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets a feature tile by its tile resource name.
 *
 *  Method: vectortile.featuretiles.get
 */
@interface GTLRSemanticTileQuery_FeaturetilesGet : GTLRSemanticTileQuery
// Previous library name was
//   +[GTLQuerySemanticTile queryForFeaturetilesGetWithname:]

/**
 *  Flag indicating whether the returned tile will always contain 2.5D
 *  footprints for structures. If enabled_modeled_volumes is set, this will mean
 *  that structures will have both their 3D models and 2.5D footprints returned.
 */
@property(nonatomic, assign) BOOL alwaysIncludeBuildingFootprints;

/**
 *  API client name and version. For example, the SDK calling the API. The exact
 *  format is up to the client.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoApiClient;

/**
 *  Application ID, such as the package name on Android and the bundle
 *  identifier on iOS platforms.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoApplicationId;

/**
 *  Application version number, such as "1.2.3". The exact format is
 *  application-dependent.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoApplicationVersion;

/**
 *  Device model as reported by the device. The exact format is
 *  platform-dependent.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoDeviceModel;

/**
 *  Operating system name and version as reported by the OS. For example, "Mac
 *  OS X 10.10.4". The exact format is platform-dependent.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoOperatingSystem;

/**
 *  Platform where the application is running.
 *
 *  Likely values:
 *    @arg @c kGTLRSemanticTileClientInfoPlatformPlatformUnspecified Unspecified
 *        or unknown OS. (Value: "PLATFORM_UNSPECIFIED")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformEditor Development environment.
 *        (Value: "EDITOR")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformMacOs macOS. (Value: "MAC_OS")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformWindows Windows. (Value:
 *        "WINDOWS")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformLinux Linux (Value: "LINUX")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformAndroid Android (Value:
 *        "ANDROID")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformIos iOS (Value: "IOS")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformWebGl WebGL. (Value: "WEB_GL")
 */
@property(nonatomic, copy, nullable) NSString *clientInfoPlatform;

/**
 *  Required. A client-generated user ID. The ID should be generated and
 *  persisted during the first user session or whenever a pre-existing ID is not
 *  found. The exact format is up to the client. This must be non-empty in a
 *  GetFeatureTileRequest (whether via the header or
 *  GetFeatureTileRequest.client_info).
 */
@property(nonatomic, copy, nullable) NSString *clientInfoUserId;

/**
 *  Optional version id identifying the tile that is already in the client's
 *  cache. This field should be populated with the most recent version_id value
 *  returned by the API for the requested tile. If the version id is empty the
 *  server always returns a newly rendered tile. If it is provided the server
 *  checks if the tile contents would be identical to one that's already on the
 *  client, and if so, returns a stripped-down response tile with
 *  STATUS_OK_DATA_UNCHANGED instead.
 */
@property(nonatomic, copy, nullable) NSString *clientTileVersionId;

/**
 *  Flag indicating whether detailed highway types should be returned. If this
 *  is set, the CONTROLLED_ACCESS_HIGHWAY type may be returned. If not, then
 *  these highways will have the generic HIGHWAY type. This exists for backwards
 *  compatibility reasons.
 */
@property(nonatomic, assign) BOOL enableDetailedHighwayTypes;

/**
 *  Flag indicating whether human-readable names should be returned for
 *  features. If this is set, the display_name field on the feature will be
 *  filled out.
 */
@property(nonatomic, assign) BOOL enableFeatureNames;

/**
 *  Flag indicating whether 3D building models should be enabled. If this is set
 *  structures will be returned as 3D modeled volumes rather than 2.5D extruded
 *  areas where possible.
 */
@property(nonatomic, assign) BOOL enableModeledVolumes;

/** Flag indicating whether political features should be returned. */
@property(nonatomic, assign) BOOL enablePoliticalFeatures;

/**
 *  Flag indicating whether the returned tile will contain road features that
 *  are marked private. Private roads are indicated by the
 *  Feature.segment_info.road_info.is_private field.
 */
@property(nonatomic, assign) BOOL enablePrivateRoads;

/**
 *  Flag indicating whether unclipped buildings should be returned. If this is
 *  set, building render ops will extend beyond the tile boundary. Buildings
 *  will only be returned on the tile that contains their centroid.
 */
@property(nonatomic, assign) BOOL enableUnclippedBuildings;

/**
 *  Required. The BCP-47 language code corresponding to the language in which
 *  the name was requested, such as "en-US" or "sr-Latn". For more information,
 *  see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
 */
@property(nonatomic, copy, nullable) NSString *languageCode;

/**
 *  Required. Resource name of the tile. The tile resource name is prefixed by
 *  its collection ID `tiles/` followed by the resource ID, which encodes the
 *  tile's global x and y coordinates and zoom level as `\@,,z`. For example,
 *  `tiles/\@1,2,3z`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Required. The Unicode country/region code (CLDR) of the location from which
 *  the request is coming from, such as "US" and "419". For more information,
 *  see http://www.unicode.org/reports/tr35/#unicode_region_subtag.
 */
@property(nonatomic, copy, nullable) NSString *regionCode;

/**
 *  Fetches a @c GTLRSemanticTile_FeatureTile.
 *
 *  Gets a feature tile by its tile resource name.
 *
 *  @param name Required. Resource name of the tile. The tile resource name is
 *    prefixed by its collection ID `tiles/` followed by the resource ID, which
 *    encodes the tile's global x and y coordinates and zoom level as `\@,,z`.
 *    For example, `tiles/\@1,2,3z`.
 *
 *  @return GTLRSemanticTileQuery_FeaturetilesGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets a terrain tile by its tile resource name.
 *
 *  Method: vectortile.terraintiles.get
 */
@interface GTLRSemanticTileQuery_TerraintilesGet : GTLRSemanticTileQuery
// Previous library name was
//   +[GTLQuerySemanticTile queryForTerraintilesGetWithname:]

/**
 *  The precision of terrain altitudes in centimeters. Possible values: between
 *  1 (cm level precision) and 1,000,000 (10-kilometer level precision).
 */
@property(nonatomic, assign) NSInteger altitudePrecisionCentimeters;

/**
 *  API client name and version. For example, the SDK calling the API. The exact
 *  format is up to the client.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoApiClient;

/**
 *  Application ID, such as the package name on Android and the bundle
 *  identifier on iOS platforms.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoApplicationId;

/**
 *  Application version number, such as "1.2.3". The exact format is
 *  application-dependent.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoApplicationVersion;

/**
 *  Device model as reported by the device. The exact format is
 *  platform-dependent.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoDeviceModel;

/**
 *  Operating system name and version as reported by the OS. For example, "Mac
 *  OS X 10.10.4". The exact format is platform-dependent.
 */
@property(nonatomic, copy, nullable) NSString *clientInfoOperatingSystem;

/**
 *  Platform where the application is running.
 *
 *  Likely values:
 *    @arg @c kGTLRSemanticTileClientInfoPlatformPlatformUnspecified Unspecified
 *        or unknown OS. (Value: "PLATFORM_UNSPECIFIED")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformEditor Development environment.
 *        (Value: "EDITOR")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformMacOs macOS. (Value: "MAC_OS")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformWindows Windows. (Value:
 *        "WINDOWS")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformLinux Linux (Value: "LINUX")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformAndroid Android (Value:
 *        "ANDROID")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformIos iOS (Value: "IOS")
 *    @arg @c kGTLRSemanticTileClientInfoPlatformWebGl WebGL. (Value: "WEB_GL")
 */
@property(nonatomic, copy, nullable) NSString *clientInfoPlatform;

/**
 *  Required. A client-generated user ID. The ID should be generated and
 *  persisted during the first user session or whenever a pre-existing ID is not
 *  found. The exact format is up to the client. This must be non-empty in a
 *  GetFeatureTileRequest (whether via the header or
 *  GetFeatureTileRequest.client_info).
 */
@property(nonatomic, copy, nullable) NSString *clientInfoUserId;

/**
 *  The maximum allowed resolution for the returned elevation heightmap.
 *  Possible values: between 1 and 1024 (and not less than
 *  min_elevation_resolution_cells). Over-sized heightmaps will be non-uniformly
 *  down-sampled such that each edge is no longer than this value.
 *  Non-uniformity is chosen to maximise the amount of preserved data. For
 *  example: Original resolution: 100px (width) * 30px (height)
 *  max_elevation_resolution: 30 New resolution: 30px (width) * 30px (height)
 */
@property(nonatomic, assign) NSInteger maxElevationResolutionCells;

/**
 *  The minimum allowed resolution for the returned elevation heightmap.
 *  Possible values: between 0 and 1024 (and not more than
 *  max_elevation_resolution_cells). Zero is supported for backward
 *  compatibility. Under-sized heightmaps will be non-uniformly up-sampled such
 *  that each edge is no shorter than this value. Non-uniformity is chosen to
 *  maximise the amount of preserved data. For example: Original resolution:
 *  30px (width) * 10px (height) min_elevation_resolution: 30 New resolution:
 *  30px (width) * 30px (height)
 */
@property(nonatomic, assign) NSInteger minElevationResolutionCells;

/**
 *  Required. Resource name of the tile. The tile resource name is prefixed by
 *  its collection ID `terraintiles/` followed by the resource ID, which encodes
 *  the tile's global x and y coordinates and zoom level as `\@,,z`. For
 *  example, `terraintiles/\@1,2,3z`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Terrain formats that the client understands.
 *
 *  Likely values:
 *    @arg @c kGTLRSemanticTileTerrainFormatsTerrainFormatUnknown An unknown or
 *        unspecified terrain format. (Value: "TERRAIN_FORMAT_UNKNOWN")
 *    @arg @c kGTLRSemanticTileTerrainFormatsFirstDerivative Terrain elevation
 *        data encoded as a FirstDerivativeElevationGrid. . (Value:
 *        "FIRST_DERIVATIVE")
 *    @arg @c kGTLRSemanticTileTerrainFormatsSecondDerivative Terrain elevation
 *        data encoded as a SecondDerivativeElevationGrid. (Value:
 *        "SECOND_DERIVATIVE")
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *terrainFormats;

/**
 *  Fetches a @c GTLRSemanticTile_TerrainTile.
 *
 *  Gets a terrain tile by its tile resource name.
 *
 *  @param name Required. Resource name of the tile. The tile resource name is
 *    prefixed by its collection ID `terraintiles/` followed by the resource ID,
 *    which encodes the tile's global x and y coordinates and zoom level as
 *    `\@,,z`. For example, `terraintiles/\@1,2,3z`.
 *
 *  @return GTLRSemanticTileQuery_TerraintilesGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
