.class public Lcom/micloud/midrive/ui/bean/TransferFileInfo;
.super Ljava/lang/Object;
.source "TransferFileInfo.java"


# instance fields
.field public final errInfo:Lcom/micloud/midrive/infos/ErrInfo;

.field public final fileId:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final progress:J

.field public final size:J

.field public final status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public final transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->size:J

    iput-wide p5, p0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->progress:J

    iput-object p7, p0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    iput-object p8, p0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    iput-object p9, p0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-void
.end method
