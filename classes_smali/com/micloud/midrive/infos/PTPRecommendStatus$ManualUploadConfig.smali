.class public Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;
.super Ljava/lang/Object;
.source "PTPRecommendStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/PTPRecommendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManualUploadConfig"
.end annotation


# instance fields
.field public final isOpen:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;->isOpen:Z

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;->url:Ljava/lang/String;

    .line 8
    return-void
.end method
