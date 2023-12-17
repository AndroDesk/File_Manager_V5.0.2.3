.class public Lcom/micloud/midrive/infos/PTPRecommendInfo;
.super Ljava/lang/Object;
.source "PTPRecommendInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;
    }
.end annotation


# instance fields
.field public final faceImageUrl:Ljava/lang/String;

.field public final recommendId:Ljava/lang/String;

.field public final recommendName:Ljava/lang/String;

.field public final source:Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->recommendId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->recommendName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->source:Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->faceImageUrl:Ljava/lang/String;

    .line 12
    return-void
.end method
