.class public Lcom/android/fileexplorer/model/StorageSize;
.super Ljava/lang/Object;
.source "StorageSize.java"


# instance fields
.field public aes:J

.field public ais:J

.field public tes:J

.field public tis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStorageSize()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableInternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->ais:J

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalInternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->tis:J

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableExternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->aes:J

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalExternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/model/StorageSize;->tes:J

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/model/StorageSize;
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/model/StorageSize;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageSize;-><init>()V

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageSize;->getStorageSize()V

    return-object v0
.end method
