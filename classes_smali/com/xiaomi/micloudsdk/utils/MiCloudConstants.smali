.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.super Ljava/lang/Object;
.source "MiCloudConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$REQUEST;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$RICHMEDIA;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$ANALYTICS;
    }
.end annotation


# static fields
.field public static final HTTP_URL_LENGTH_LIMIT:I = 0x400

.field public static final MICLOUD_TAG:Ljava/lang/String; = "Micloud"

.field public static final SYNC_WITHOUT_ACTIVATE_SIM_INDEX:I = -0x1

.field public static final USE_MEMBER_DAILY:Z

.field public static final USE_PREVIEW:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "/data/system/xiaomi_account_preview"

    .line 3
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    .line 9
    const-string v0, "/data/system/micloud_member_daily"

    .line 11
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_MEMBER_DAILY:Z

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
