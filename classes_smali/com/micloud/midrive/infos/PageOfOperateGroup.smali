.class public Lcom/micloud/midrive/infos/PageOfOperateGroup;
.super Ljava/lang/Object;
.source "PageOfOperateGroup.java"


# instance fields
.field public final hasMore:Z

.field public final operateGroupInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/OperateGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/OperateGroupInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/micloud/midrive/infos/PageOfOperateGroup;->hasMore:Z

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/PageOfOperateGroup;->operateGroupInfos:Ljava/util/List;

    .line 8
    return-void
.end method
