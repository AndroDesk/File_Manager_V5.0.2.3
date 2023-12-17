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

    .line 1
    invoke-static {}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->getInstance()Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 3
    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$100(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_17

    .line 9
    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureStatusInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_10

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_10
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {v0, p0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$102(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 24
    :cond_17
    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$100(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private static ensureStatusInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 3
    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$000(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_f

    .line 9
    invoke-static {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {v0, p0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$002(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;Lmiui/cloud/sync/MiCloudStatusInfo;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 16
    :cond_f
    invoke-static {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->access$000(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getStoragePercent(Landroid/content/Context;)I
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    const/high16 v0, 0x42c80000  # 100.0f

    .line 11
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    .line 14
    move-result-wide v1

    .line 15
    long-to-float v1, v1

    .line 16
    mul-float/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    .line 20
    move-result-wide v2

    .line 21
    long-to-float p0, v2

    .line 22
    div-float/2addr v1, p0

    .line 23
    float-to-int p0, v1

    .line 24
    return p0
.end method

.method public static getStoragePercentInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_9

    .line 7
    const-string p0, ""

    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const/high16 v1, 0x42c80000  # 100.0f

    .line 17
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    .line 20
    move-result-wide v2

    .line 21
    long-to-float v2, v2

    .line 22
    mul-float/2addr v2, v1

    .line 23
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    .line 26
    move-result-wide v3

    .line 27
    long-to-float p0, v3

    .line 28
    div-float/2addr v2, p0

    .line 29
    float-to-int p0, v2

    .line 30
    const-string v1, "%"

    .line 32
    invoke-static {v0, p0, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static isSpaceFull(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static isSpaceLow(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceLowPercent()Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static refresh(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/cloud/util/MiCloudStorageHelper;->STATUS_INFO:Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 3
    invoke-virtual {v0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->clear()V

    .line 6
    invoke-static {p0}, Lcom/android/cloud/util/MiCloudStorageHelper;->ensureQuotaInfo(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 9
    return-void
.end method
