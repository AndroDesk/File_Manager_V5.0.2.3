.class public Lmiui/cloud/util/SyncStatusHelper;
.super Ljava/lang/Object;
.source "SyncStatusHelper.java"


# static fields
.field public static final STATUS_ABNORMAL:I = -0x1

.field public static final STATUS_FULL:I = 0x2

.field public static final STATUS_LOW:I = 0x1

.field public static final STATUS_NORMAL:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncStatus(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-nez p0, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_17

    .line 22
    const/4 p0, 0x2

    .line 23
    return p0

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceLowPercent()Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1f

    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    return p0
.end method
