.class public Lcom/micloud/midrive/infos/PTPRecommendStatus;
.super Ljava/lang/Object;
.source "PTPRecommendStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;,
        Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;
    }
.end annotation


# instance fields
.field public final manualUploadConfig:Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;

.field public final maxRecommendCount:I

.field public final recommendStatus:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/PTPRecommendStatus;->recommendStatus:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/PTPRecommendStatus;->manualUploadConfig:Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;

    .line 8
    iput p3, p0, Lcom/micloud/midrive/infos/PTPRecommendStatus;->maxRecommendCount:I

    .line 10
    return-void
.end method
