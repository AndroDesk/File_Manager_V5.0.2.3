.class public Lcom/micloud/midrive/infos/PTPAIRecord;
.super Ljava/lang/Object;
.source "PTPAIRecord.java"


# instance fields
.field public final errCode:I

.field public height:I

.field public final id:Ljava/lang/String;

.field public final seqNo:I

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->id:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->seqNo:I

    .line 8
    iput p3, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->errCode:I

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->url:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->width:I

    .line 14
    iput p6, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->height:I

    .line 16
    return-void
.end method
