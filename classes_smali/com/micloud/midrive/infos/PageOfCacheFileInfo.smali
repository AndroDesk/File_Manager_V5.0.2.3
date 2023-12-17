.class public Lcom/micloud/midrive/infos/PageOfCacheFileInfo;
.super Ljava/lang/Object;
.source "PageOfCacheFileInfo.java"


# instance fields
.field public hasMore:Z

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/CachedFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/CachedFileInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/infos/PageOfCacheFileInfo;->items:Ljava/util/List;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/micloud/midrive/infos/PageOfCacheFileInfo;->hasMore:Z

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    iput-boolean p2, p0, Lcom/micloud/midrive/infos/PageOfCacheFileInfo;->hasMore:Z

    .line 19
    return-void
.end method
