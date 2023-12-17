.class public Lcom/micloud/midrive/infos/PageOfOperationInfo;
.super Ljava/lang/Object;
.source "PageOfOperationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/PageOfOperationInfo$Factory;
    }
.end annotation


# instance fields
.field public hasMore:Z

.field public operationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/OperationInfo;",
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
            "Lcom/micloud/midrive/infos/OperationInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/PageOfOperationInfo;->hasMore:Z

    iput-object p2, p0, Lcom/micloud/midrive/infos/PageOfOperationInfo;->operationInfos:Ljava/util/List;

    return-void
.end method
