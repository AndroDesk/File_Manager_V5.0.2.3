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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/infos/PageOfCacheFileInfo;->items:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/micloud/midrive/infos/PageOfCacheFileInfo;->hasMore:Z

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p2, p0, Lcom/micloud/midrive/infos/PageOfCacheFileInfo;->hasMore:Z

    return-void
.end method
