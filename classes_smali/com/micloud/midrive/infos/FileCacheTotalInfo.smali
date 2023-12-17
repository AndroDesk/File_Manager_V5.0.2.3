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
.method public constructor <init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;IJJZ)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 5
    iput p2, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 6
    iput-wide p3, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    .line 7
    iput-wide p5, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->lastSyncTime:J

    .line 8
    iput-boolean p7, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->isInCache:Z

    return-void
.end method


# virtual methods
.method public setValue(Lcom/micloud/midrive/infos/FileCacheTotalInfo;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_12

    .line 3
    iget-object v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 5
    iput-object v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 7
    iget v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 9
    iput v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 11
    iget-wide v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    .line 13
    iput-wide v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    .line 15
    iget-boolean p1, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->isInCache:Z

    .line 17
    iput-boolean p1, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->isInCache:Z

    .line 19
    :cond_12
    return-void
.end method

.method public updateChange(Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 3
    iget v1, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->countChange:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 8
    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    .line 10
    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->sizeChange:J

    .line 12
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    .line 15
    return-void
.end method
