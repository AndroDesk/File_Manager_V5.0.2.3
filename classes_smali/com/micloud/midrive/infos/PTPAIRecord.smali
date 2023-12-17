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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->id:Ljava/lang/String;

    iput p2, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->seqNo:I

    iput p3, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->errCode:I

    iput-object p4, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->url:Ljava/lang/String;

    iput p5, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->width:I

    iput p6, p0, Lcom/micloud/midrive/infos/PTPAIRecord;->height:I

    return-void
.end method
