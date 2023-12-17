.class public Lcom/micloud/midrive/infos/OperatesInGroup;
.super Ljava/lang/Object;
.source "OperatesInGroup.java"


# instance fields
.field public final hasMore:Z

.field public final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/OperateRecord;",
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
            "Lcom/micloud/midrive/infos/OperateRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/micloud/midrive/infos/OperatesInGroup;->records:Ljava/util/List;

    .line 6
    iput-boolean p1, p0, Lcom/micloud/midrive/infos/OperatesInGroup;->hasMore:Z

    .line 8
    return-void
.end method
