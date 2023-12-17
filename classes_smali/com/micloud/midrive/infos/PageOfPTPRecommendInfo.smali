.class public Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;
.super Ljava/lang/Object;
.source "PageOfPTPRecommendInfo.java"


# instance fields
.field public final hasMore:Z

.field public final ptpRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/PTPRecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final syncToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/PTPRecommendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;->hasMore:Z

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;->syncToken:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;->ptpRecommendInfoList:Ljava/util/List;

    .line 10
    return-void
.end method
