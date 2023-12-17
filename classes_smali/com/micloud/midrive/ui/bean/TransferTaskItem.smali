.class public Lcom/micloud/midrive/ui/bean/TransferTaskItem;
.super Ljava/lang/Object;
.source "TransferTaskItem.java"

# interfaces
.implements Lcom/micloud/midrive/infos/DoneBaseInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;,
        Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
    }
.end annotation


# instance fields
.field public final coverUrl:Ljava/lang/String;

.field public final errInfo:Lcom/micloud/midrive/infos/ErrInfo;

.field public final fileId:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final filePath:Ljava/lang/String;

.field public final fileType:Lcom/micloud/midrive/ui/bean/DriveFileType;

.field public final key:Ljava/lang/String;

.field public mTime:J

.field public final progress:J

.field public final size:J

.field public final status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public final transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/ui/bean/DriveFileType;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->fileType:Lcom/micloud/midrive/ui/bean/DriveFileType;

    .line 4
    iput-object p3, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 5
    iput-object p4, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->fileName:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->mTime:J

    .line 7
    iput-object p7, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->filePath:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->fileId:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->key:Ljava/lang/String;

    .line 10
    iput-wide p10, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    .line 11
    iput-wide p12, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 12
    iput-object p14, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->coverUrl:Ljava/lang/String;

    .line 13
    iput-object p15, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->key:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->mTime:J

    .line 3
    return-wide v0
.end method

.method public setTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->mTime:J

    .line 3
    return-void
.end method
