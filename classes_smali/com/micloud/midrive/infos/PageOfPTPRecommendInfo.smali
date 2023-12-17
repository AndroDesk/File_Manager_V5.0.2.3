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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;->hasMore:Z

    iput-object p2, p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;->syncToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;->ptpRecommendInfoList:Ljava/util/List;

    return-void
.end method
