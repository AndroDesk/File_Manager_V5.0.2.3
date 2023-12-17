.class public Lcom/android/cloud/util/MiCloudStorageHelper;
.super Ljava/lang/Object;
.source "MiCloudStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;
    }
.end annotation


# static fields
.field private static final STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

.field private static final TAG:Ljava/lang/String; = "MiCloudStorageHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->getInstance()Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    move-result-object v0

    sput-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 3

    sget-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$100(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureStatusInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$102(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    :cond_17
    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$100(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    return-object p0
.end method

.method private static ensureStatusInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 3

    sget-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$000(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-static {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$002(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;Lmiui/cloud/sync/MiCloudStatusInfo;)Lmiui/cloud/sync/MiCloudStatusInfo;

    :cond_f
    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$000(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getStoragePercent(Landroid/content/Context;)I
    .registers 5

    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/high16 v0, 0x42c80000  # 100.0f

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v2

    long-to-float p0, v2

    div-float/2addr v1, p0

    float-to-int p0, v1

    return p0
.end method

.method public static getStoragePercentInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x42c80000  # 100.0f

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v3

    long-to-float p0, v3

    div-float/2addr v2, p0

    float-to-int p0, v2

    const-string v1, "%"

    invoke-static {v0, p0, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSpaceFull(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result p0

    return p0
.end method

.method public static isSpaceLow(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceLowPercent()Z

    move-result p0

    return p0
.end method

.method public static refresh(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    invoke-virtual {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->clear()V

    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    return-void
.end method
