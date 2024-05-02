#import <Foundation/Foundation.h>

#import <CrashReporter/PLCrashNamespace.h>
#import <CrashReporter/PLCrashReport.h>

// Dictionary keys for array elements returned by arrayOfAppUUIDsForCrashReport:
#ifndef kBITBinaryImageKeyUUID
#define kBITBinaryImageKeyUUID @"uuid"
#define kBITBinaryImageKeyArch @"arch"
#define kBITBinaryImageKeyType @"type"
#endif


@interface BITCrashReportTextFormatter : NSObject {
}

+ (NSString *)stringValueForCrashReport:(PLCrashReport *)report crashReporterKey:(NSString *)crashReporterKey;
+ (NSArray *)arrayOfAppUUIDsForCrashReport:(PLCrashReport *)report;

@end
