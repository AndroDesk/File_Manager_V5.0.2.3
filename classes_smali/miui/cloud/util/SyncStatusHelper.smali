.class public Lmiui/cloud/util/SyncStatusHelper;
.super Ljava/lang/Object;
.source "SyncStatusHelper.java"


# static fields
.field public static final STATUS_ABNORMAL:I

.field public static final STATUS_FULL:I

.field public static final STATUS_LOW:I

.field public static final STATUS_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/util/SyncStatusHelper;->STATUS_ABNORMAL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/util/SyncStatusHelper;->STATUS_FULL:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/util/SyncStatusHelper;->STATUS_LOW:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncStatus(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x2

    return p0

    :cond_17
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceLowPercent()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
