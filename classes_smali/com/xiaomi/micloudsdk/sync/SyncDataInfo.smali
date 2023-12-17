.class public Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;
.super Ljava/lang/Object;
.source "SyncDataInfo.java"


# static fields
.field public static final UNAVAILABLE_AUTHORITY_COUNT:I = -0x2


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mSyncedCount:I

.field private mUnSyncedDataCount:I

.field private mUnSyncedSecretDataCount:I

.field private mWifiOnlyUnsyncedDataCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mAuthority:Ljava/lang/String;

    .line 6
    const/4 v0, -0x2

    .line 7
    :try_start_6
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getSyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mSyncedCount:I
    :try_end_c
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_6 .. :try_end_c} :catch_d

    .line 13
    goto :goto_f

    .line 14
    :catch_d
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mSyncedCount:I

    .line 16
    :goto_f
    :try_start_f
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedDataCount:I
    :try_end_15
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_f .. :try_end_15} :catch_16

    .line 22
    goto :goto_18

    .line 23
    :catch_16
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedDataCount:I

    .line 25
    :goto_18
    :try_start_18
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getUnSyncedSecretDataCount(Landroid/content/Context;Ljava/lang/String;)I

    .line 28
    move-result v1

    .line 29
    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedSecretDataCount:I
    :try_end_1e
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_21

    .line 32
    :catch_1f
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedSecretDataCount:I

    .line 34
    :goto_21
    :try_start_21
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getWifiOnlyUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mWifiOnlyUnsyncedDataCount:I
    :try_end_27
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_21 .. :try_end_27} :catch_28

    .line 40
    goto :goto_2a

    .line 41
    :catch_28
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mWifiOnlyUnsyncedDataCount:I

    .line 43
    :goto_2a
    return-void
.end method

.method private appendSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 1
    const-string v0, "synced count:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getSyncedCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x2

    .line 11
    if-eq v0, v1, :cond_10

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    const-string v0, "null"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_15
    return-object p1
.end method

.method private appendUnSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 1
    const-string v0, "unsynced count:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedDataCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x2

    .line 11
    if-eq v0, v1, :cond_10

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    const-string v0, "null"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_15
    return-object p1
.end method

.method private appendUnSyncedSecretDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 1
    const-string v0, "unsynced secret count:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedSecretDataCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x2

    .line 11
    if-eq v0, v1, :cond_10

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    const-string v0, "null"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_15
    return-object p1
.end method

.method private appendWifiOnlyUnsyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 1
    const-string v0, "unsynced wifi only count:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getWifiOnlyUnsyncedDataCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x2

    .line 11
    if-eq v0, v1, :cond_10

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    const-string v0, "null"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_15
    return-object p1
.end method

.method public static generateCurrentSyncDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public getSyncedCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mSyncedCount:I

    .line 3
    return v0
.end method

.method public getUnSyncedDataCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedDataCount:I

    .line 3
    return v0
.end method

.method public getUnSyncedSecretDataCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedSecretDataCount:I

    .line 3
    return v0
.end method

.method public getWifiOnlyUnsyncedDataCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mWifiOnlyUnsyncedDataCount:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "SyncDataInfo["

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mAuthority:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "]  {"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v1

    .line 33
    const-string v2, ", "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendUnSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendUnSyncedSecretDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendWifiOnlyUnsyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v1

    .line 56
    const-string v2, "}"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
