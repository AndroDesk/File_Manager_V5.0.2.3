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
.method public constructor <init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 13
    new-instance v0, Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/infos/DoneFileInfoCollection$ValueComparator;-><init>(Lcom/micloud/midrive/infos/DoneFileInfoCollection;Lcom/micloud/midrive/infos/DoneFileInfoCollection$1;)V

    .line 19
    iput-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mComparator:Ljava/util/Comparator;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 27
    new-instance v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    .line 29
    invoke-direct {v0, p1}, Lcom/micloud/midrive/infos/FileCacheTotalInfo;-><init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;)V

    .line 32
    iput-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    .line 34
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

    .line 1
    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->removeItem(Ljava/lang/String;)Lcom/micloud/midrive/infos/DoneBaseInfo;

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 15
    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    .line 18
    move-result-wide v2

    .line 19
    cmp-long v0, v0, v2

    .line 21
    if-lez v0, :cond_1b

    .line 23
    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    .line 26
    move-result-wide v0

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 30
    :goto_1d
    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 32
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->updateTimeWaterLine(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 9
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 6
    return-void
.end method

.method public getCacheFileType()Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 3
    return-object v0
.end method

.method public getFileCacheTotalInfo()Lcom/micloud/midrive/infos/FileCacheTotalInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1d

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/micloud/midrive/infos/DoneBaseInfo;

    .line 19
    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_6

    .line 29
    return-object v1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
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

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->sortList()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTimeLine()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 3
    return-wide v0
.end method

.method public getTotalCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    .line 3
    iget v0, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 5
    return v0
.end method

.method public hasMore()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->hasMore:Z

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_22

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/micloud/midrive/infos/DoneBaseInfo;

    .line 19
    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_6

    .line 29
    iget-object p1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    :goto_23
    return-object v1
.end method

.method public setFileCacheTotalInfoValue(Lcom/micloud/midrive/infos/FileCacheTotalInfo;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->cacheType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 5
    if-ne v0, v1, :cond_b

    .line 7
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    .line 9
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->setValue(Lcom/micloud/midrive/infos/FileCacheTotalInfo;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setHasMore(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->hasMore:Z

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->addLast(Ljava/util/List;)V

    .line 9
    return-void
.end method

.method public setTotalCount(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    .line 3
    iput p1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 5
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public sortList()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mComparator:Ljava/util/Comparator;

    .line 5
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1c

    .line 16
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mItems:Ljava/util/LinkedList;

    .line 18
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/micloud/midrive/infos/DoneBaseInfo;

    .line 24
    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    .line 27
    move-result-wide v0

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 31
    :goto_1e
    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 33
    return-void
.end method

.method public updateFileCacheTotalInfo(Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;)V
    .registers 7

    .line 1
    if-eqz p1, :cond_18

    .line 3
    iget-object v0, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->type:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mType:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 7
    if-ne v0, v1, :cond_18

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mFileCacheTotalInfo:Lcom/micloud/midrive/infos/FileCacheTotalInfo;

    .line 11
    iget v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 13
    iget v2, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->countChange:I

    .line 15
    add-int/2addr v1, v2

    .line 16
    iput v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->count:I

    .line 18
    iget-wide v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    .line 20
    iget-wide v3, p1, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->sizeChange:J

    .line 22
    add-long/2addr v1, v3

    .line 23
    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileCacheTotalInfo;->fileTotalSize:J

    .line 25
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_24

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/infos/DoneBaseInfo;

    .line 17
    iget-wide v1, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 19
    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    .line 22
    move-result-wide v3

    .line 23
    cmp-long v1, v1, v3

    .line 25
    if-lez v1, :cond_1f

    .line 27
    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    .line 30
    move-result-wide v0

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    iget-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 34
    :goto_21
    iput-wide v0, p0, Lcom/micloud/midrive/infos/DoneFileInfoCollection;->mTimeLine:J

    .line 36
    goto :goto_4

    .line 37
    :cond_24
    return-void
.end method
