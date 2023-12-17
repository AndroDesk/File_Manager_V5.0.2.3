.class public Lcom/micloud/midrive/infos/DoneFileInfoCollection;
.super Ljava/lang/Object;
.source "DoneFileInfoCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/micloud/midrive/infos/DoneBaseInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private hasMore:Z

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

.field private mItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTimeLine:J

.field private mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    new-instance v0, Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;-><init>(Lcom/micloud/midrive/infos/DoneFileInfoCollection;Lcom/micloud/midrive/infos/DoneFileInfoCollection$1;)V

    iput-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mComparator:Ljava/util/Comparator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    new-instance v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/infos/FileCacheTotalInfo;-><init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;)V

    iput-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    return-void
.end method


# virtual methods
.method public addFirst(Lcom/micloud/midrive/infos/DoneBaseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->removeItem(Ljava/lang/String;)Lcom/micloud/midrive/infos/DoneBaseInfo;

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v0

    goto :goto_1d

    :cond_1b
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    :goto_1d
    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    return-void
.end method

.method public addLast(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->updateTimeWaterLine(Ljava/util/List;)V

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public getCacheFileType()Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object v0
.end method

.method public getFileCacheTotalInfo()Lcom/micloud/midrive/infos/FileCacheTotalInfo;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Lcom/micloud/midrive/infos/DoneBaseInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/DoneBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->sortList()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getTimeLine()J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    return-wide v0
.end method

.method public getTotalCount()I
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    iget v0, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    return v0
.end method

.method public hasMore()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->hasMore:Z

    return v0
.end method

.method public removeItem(Ljava/lang/String;)Lcom/micloud/midrive/infos/DoneBaseInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/DoneBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return-object v1
.end method

.method public setFileCacheTotalInfoValue(Lcom/micloud/midrive/infos/FileCacheTotalInfo;)V
    .registers 4

    iget-object v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->setValue(Lcom/micloud/midrive/infos/FileCacheTotalInfo;)V

    :cond_b
    return-void
.end method

.method public setHasMore(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->hasMore:Z

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->addLast(Ljava/util/List;)V

    return-void
.end method

.method public setTotalCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    iput p1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public sortList()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/infos/DoneBaseInfo;

    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v0

    goto :goto_1e

    :cond_1c
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    :goto_1e
    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    return-void
.end method

.method public updateFileCacheTotalInfo(Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;)V
    .registers 7

    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->type:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    iget v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    iget v2, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->countChange:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    iget-wide v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    iget-wide v3, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->sizeChange:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    :cond_18
    return-void
.end method

.method public updateTimeWaterLine(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/infos/DoneBaseInfo;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1f

    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v0

    goto :goto_21

    :cond_1f
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    :goto_21
    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    goto :goto_4

    :cond_24
    return-void
.end method
