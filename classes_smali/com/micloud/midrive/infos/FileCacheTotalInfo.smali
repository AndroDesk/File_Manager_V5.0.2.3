.class public Lcom/micloud/midrive/infos/FileCacheTotalInfo;
.super Ljava/lang/Object;
.source "FileCacheTotalInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;
    }
.end annotation


# instance fields
.field public cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

.field public count:I

.field public fileTotalSize:J

.field public isInCache:Z

.field public lastSyncTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;IJJZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    iput p2, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    iput-wide p3, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    iput-wide p5, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->lastSyncTime:J

    iput-boolean p7, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->isInCache:Z

    return-void
.end method


# virtual methods
.method public setValue(Lcom/micloud/midrive/infos/FileCacheTotalInfo;)V
    .registers 4

    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    iput-object v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    iget v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    iput v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    iget-wide v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    iput-wide v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    iget-boolean p1, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->isInCache:Z

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->isInCache:Z

    :cond_12
    return-void
.end method

.method public updateChange(Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;)V
    .registers 6

    iget v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    iget v1, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->countChange:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->sizeChange:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    return-void
.end method
