.class public Lcom/micloud/midrive/infos/PageOfTransferFileBaseInfo;
.super Ljava/lang/Object;
.source "PageOfTransferFileBaseInfo.java"


# instance fields
.field public hasMore:Z

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
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
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/infos/PageOfTransferFileBaseInfo;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/micloud/midrive/infos/PageOfTransferFileBaseInfo;->hasMore:Z

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p2, p0, Lcom/micloud/midrive/infos/PageOfTransferFileBaseInfo;->hasMore:Z

    return-void
.end method
