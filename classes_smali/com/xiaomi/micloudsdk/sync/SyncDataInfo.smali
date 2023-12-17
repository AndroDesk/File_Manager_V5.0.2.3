.class public Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;
.super Ljava/lang/Object;
.source "SyncDataInfo.java"


# static fields
.field public static final UNAVAILABLE_AUTHORITY_COUNT:I


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mSyncedCount:I

.field private mUnSyncedDataCount:I

.field private mUnSyncedSecretDataCount:I

.field private mWifiOnlyUnsyncedDataCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->UNAVAILABLE_AUTHORITY_COUNT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mAuthority:Ljava/lang/String;

    const/4 v0, -0x2

    :try_start_6
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getSyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mSyncedCount:I
    :try_end_c
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mSyncedCount:I

    :goto_f
    :try_start_f
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedDataCount:I
    :try_end_15
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_18

    :catch_16
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedDataCount:I

    :goto_18
    :try_start_18
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getUnSyncedSecretDataCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedSecretDataCount:I
    :try_end_1e
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_21

    :catch_1f
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedSecretDataCount:I

    :goto_21
    :try_start_21
    invoke-static {p1, p2}, Lmiui/cloud/sync/SyncInfoHelper;->getWifiOnlyUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mWifiOnlyUnsyncedDataCount:I
    :try_end_27
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_2a

    :catch_28
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mWifiOnlyUnsyncedDataCount:I

    :goto_2a
    return-void
.end method

.method private appendSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "synced count:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getSyncedCount()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method

.method private appendUnSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "unsynced count:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedDataCount()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method

.method private appendUnSyncedSecretDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "unsynced secret count:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedSecretDataCount()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method

.method private appendWifiOnlyUnsyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "unsynced wifi only count:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getWifiOnlyUnsyncedDataCount()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method

.method public static generateCurrentSyncDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;
    .registers 3

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getSyncedCount()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mSyncedCount:I

    return v0
.end method

.method public getUnSyncedDataCount()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedDataCount:I

    return v0
.end method

.method public getUnSyncedSecretDataCount()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mUnSyncedSecretDataCount:I

    return v0
.end method

.method public getWifiOnlyUnsyncedDataCount()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mWifiOnlyUnsyncedDataCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncDataInfo["

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]  {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendUnSyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendUnSyncedSecretDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->appendWifiOnlyUnsyncedDataCount(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
