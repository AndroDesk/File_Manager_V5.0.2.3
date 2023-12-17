.class public Lcom/android/fileexplorer/model/StorageSize;
.super Ljava/lang/Object;
.source "StorageSize.java"


# instance fields
.field public aes:J

.field public ais:J

.field public tes:J

.field public tis:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStorageSize()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableInternalStorageSize()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->ais:J

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalInternalStorageSize()J

    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->tis:J

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableExternalStorageSize()J

    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->aes:J

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalExternalStorageSize()J

    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->tes:J

    .line 25
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/model/StorageSize;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/StorageSize;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageSize;-><init>()V

    .line 6
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageSize;->getStorageSize()V

    .line 9
    return-object v0
.end method
