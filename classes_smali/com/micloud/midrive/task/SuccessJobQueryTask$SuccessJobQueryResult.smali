.class public Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;
.super Ljava/lang/Object;
.source "SuccessJobQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/SuccessJobQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuccessJobQueryResult"
.end annotation


# instance fields
.field public final allCount:I

.field public final hasMore:Z

.field public final sessionJobInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;->sessionJobInfoList:Ljava/util/List;

    iput p2, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;->allCount:I

    iput-boolean p3, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;->hasMore:Z

    return-void
.end method
