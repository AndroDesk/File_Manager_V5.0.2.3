.class public Lcom/micloud/midrive/infos/PTPDetailInfo;
.super Ljava/lang/Object;
.source "PTPDetailInfo.java"


# instance fields
.field public final info:Ljava/lang/String;

.field public final recommendId:Ljava/lang/String;

.field public final recommendName:Ljava/lang/String;

.field public final recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/PTPAIRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/PTPAIRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/PTPDetailInfo;->recommendId:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/PTPDetailInfo;->recommendName:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/PTPDetailInfo;->info:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/infos/PTPDetailInfo;->recordList:Ljava/util/List;

    return-void
.end method
