.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;
.super Ljava/lang/Object;
.source "MiCloudConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYNC"
.end annotation


# static fields
.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String;

.field public static final SYNC_EXTRAS_IGNORE_BATTERY_LOW:Ljava/lang/String; = "micloud_ignore_battery_low"

.field public static final SYNC_EXTRAS_IGNORE_TEMPERATURE:Ljava/lang/String; = "micloud_ignore_temperature"

.field public static final SYNC_EXTRAS_IGNORE_WIFI_SETTINGS:Ljava/lang/String; = "micloud_ignore_wifi_settings"

.field public static final SYNC_EXTRAS_XIAOMI_REQUEST_TYPE:Ljava/lang/String; = "xiaomi_request"

.field public static final XIAOMI_REQUEST_TYPE_INTELLIGENT:Ljava/lang/String; = "intelligent"

.field public static final XIAOMI_REQUEST_TYPE_PUSH:Ljava/lang/String; = "push"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->get_SYNC_EXTRAS_MICLOUD_FORCE()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get_SYNC_EXTRAS_MICLOUD_FORCE()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "micloud_force"

    .line 3
    :try_start_2
    const-string v1, "android.content.MiSyncPolicyResolver"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "SYNC_EXTRAS_MICLOUD_FORCE"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_15} :catch_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_15} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_15} :catch_16

    .line 22
    return-object v1

    .line 23
    :catch_16
    return-object v0
.end method
