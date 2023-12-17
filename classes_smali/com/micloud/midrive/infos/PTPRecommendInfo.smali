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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->recommendId:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->recommendName:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->source:Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;

    iput-object p4, p0, Lcom/micloud/midrive/infos/PTPRecommendInfo;->faceImageUrl:Ljava/lang/String;

    return-void
.end method
