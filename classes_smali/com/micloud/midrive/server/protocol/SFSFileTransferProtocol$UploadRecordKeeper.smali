.class Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;
.super Ljava/lang/Object;
.source "SFSFileTransferProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadRecordKeeper"
.end annotation


# instance fields
.field private recordId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->recordId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->recordId:Ljava/lang/String;

    return-object p1
.end method
