.class public Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;
.super Ljava/lang/Object;
.source "MiCloudStatConstantsV2.java"


# static fields
.field public static final DEFAULT_ERROR:Ljava/lang/String; = "default_error"

.field public static final NO_ERROR:Ljava/lang/String; = "no_error"

.field public static final OPEN_SYNC_PHONE_STATE:Landroid/net/Uri;

.field public static final OPEN_SYNC_RESULT_URI:Landroid/net/Uri;

.field public static final OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri;

.field public static final PATH_OPEN_SYNC_PHONE_STATE:Ljava/lang/String; = "open_sync_phone_state"

.field public static final PATH_OPEN_SYNC_RESULT:Ljava/lang/String; = "open_sync_result"

.field public static final PATH_OPEN_SYNC_TIME_CONSUME:Ljava/lang/String; = "open_sync_time_consume"

.field public static final STAT_KEY_SYNC_AUTHORITY:Ljava/lang/String; = "stat_key_sync_authority"

.field public static final STAT_KEY_SYNC_IS_SUCCESSFUL:Ljava/lang/String; = "stat_key_sync_successful"

.field public static final STAT_KEY_SYNC_REASON:Ljava/lang/String; = "stat_key_sync_reason"

.field public static final STAT_KEY_SYNC_RETRY:Ljava/lang/String; = "stat_key_sync_retry"

.field public static final STAT_KEY_SYNC_START:Ljava/lang/String; = "stat_key_sync_start"

.field public static final STAT_KEY_SYNC_TIME_CONSUME:Ljava/lang/String; = "stat_key_sync_time_consume"

.field public static final STAT_KEY_SYNC_TIME_END_IN_MILLIS:Ljava/lang/String; = "stat_key_sync_time_end_in_millis"

.field public static final STAT_KEY_SYNC_TIME_START_IN_MILLIS:Ljava/lang/String; = "stat_key_sync_time_start_in_millis"

.field public static final STAT_KEY_UNSYNCED_COUNT_AFTER_SYNC:Ljava/lang/String; = "stat_key_unsynced_count_after_sync"

.field public static final STAT_KEY_UNSYNCED_COUNT_BEFORE_SYNC:Ljava/lang/String; = "stat_key_unsynced_count_before_sync"

.field public static final STAT_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.miui.cloudservice.StatProvider"

.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String; = "micloud_force"

.field public static final SYNC_EXTRAS_IGNORE_BATTERY_LOW:Ljava/lang/String; = "micloud_ignore_battery_low"

.field public static final SYNC_EXTRAS_IGNORE_TEMPERATURE:Ljava/lang/String; = "micloud_ignore_temperature"

.field public static final SYNC_EXTRAS_IGNORE_WIFI_SETTINGS:Ljava/lang/String; = "micloud_ignore_wifi_settings"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "content://com.miui.cloudservice.StatProvider/open_sync_result"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_RESULT_URI:Landroid/net/Uri;

    .line 9
    const-string v0, "content://com.miui.cloudservice.StatProvider/open_sync_phone_state"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_PHONE_STATE:Landroid/net/Uri;

    .line 17
    const-string v0, "content://com.miui.cloudservice.StatProvider/open_sync_time_consume"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
