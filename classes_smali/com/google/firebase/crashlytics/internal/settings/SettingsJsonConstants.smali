.class Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonConstants;
.super Ljava/lang/Object;
.source "SettingsJsonConstants.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "app"

.field public static final APP_NATIVE_REPORT_UPLOAD_VARIANT_DEFAULT:I

.field public static final APP_NATIVE_REPORT_UPLOAD_VARIANT_KEY:Ljava/lang/String; = "native_report_upload_variant"

.field public static final APP_NDK_REPORTS_URL_KEY:Ljava/lang/String; = "ndk_reports_url"

.field public static final APP_REPORTS_URL_KEY:Ljava/lang/String; = "reports_url"

.field public static final APP_REPORT_UPLOAD_VARIANT_DEFAULT:I

.field public static final APP_REPORT_UPLOAD_VARIANT_KEY:Ljava/lang/String; = "report_upload_variant"

.field public static final APP_STATUS_KEY:Ljava/lang/String; = "status"

.field public static final APP_UPDATE_REQUIRED_DEFAULT:Z = false

.field public static final APP_UPDATE_REQUIRED_KEY:Ljava/lang/String; = "update_required"

.field public static final APP_URL_KEY:Ljava/lang/String; = "url"

.field public static final CACHE_DURATION_KEY:Ljava/lang/String; = "cache_duration"

.field public static final EXPIRES_AT_KEY:Ljava/lang/String; = "expires_at"

.field public static final FABRIC_BUNDLE_ID:Ljava/lang/String; = "bundle_id"

.field public static final FABRIC_KEY:Ljava/lang/String; = "fabric"

.field public static final FABRIC_ORGANIZATION_ID:Ljava/lang/String; = "org_id"

.field public static final FEATURES_COLLECT_REPORTS_DEFAULT:Z = true

.field public static final FEATURES_COLLECT_REPORTS_KEY:Ljava/lang/String; = "collect_reports"

.field public static final FEATURES_KEY:Ljava/lang/String; = "features"

.field public static final SESSION_KEY:Ljava/lang/String; = "session"

.field public static final SETTINGS_CACHE_DURATION_DEFAULT:I

.field public static final SETTINGS_MAX_COMPLETE_SESSIONS_COUNT_DEFAULT:I

.field public static final SETTINGS_MAX_COMPLETE_SESSIONS_COUNT_KEY:Ljava/lang/String; = "max_complete_sessions_count"

.field public static final SETTINGS_MAX_CUSTOM_EXCEPTION_EVENTS_DEFAULT:I

.field public static final SETTINGS_MAX_CUSTOM_EXCEPTION_EVENTS_KEY:Ljava/lang/String; = "max_custom_exception_events"

.field public static final SETTINGS_VERSION:Ljava/lang/String; = "settings_version"

.field public static final SETTINGS_VERSION_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonConstants;->APP_NATIVE_REPORT_UPLOAD_VARIANT_DEFAULT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonConstants;->APP_REPORT_UPLOAD_VARIANT_DEFAULT:I

    const v0, 0x92386

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonConstants;->SETTINGS_CACHE_DURATION_DEFAULT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonConstants;->SETTINGS_MAX_COMPLETE_SESSIONS_COUNT_DEFAULT:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonConstants;->SETTINGS_MAX_CUSTOM_EXCEPTION_EVENTS_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
