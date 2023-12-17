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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/micloud/midrive/infos/OperatesInGroup;->records:Ljava/util/List;

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/OperatesInGroup;->hasMore:Z

    return-void
.end method
