.class public Lcom/android/cloud/bean/TransferState;
.super Ljava/lang/Object;
.source "TransferState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/bean/TransferState$Status;
    }
.end annotation


# instance fields
.field private currentSize:J

.field private errInfo:Lcom/micloud/midrive/infos/ErrInfo;

.field private filepath:Ljava/lang/String;

.field private mStatus:Lcom/android/cloud/bean/TransferState$Status;

.field private progress:I


# direct methods
.method public constructor <init>(Lcom/android/cloud/bean/TransferState$Status;I)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/android/cloud/bean/TransferState;->currentSize:J

    .line 8
    iput-object p1, p0, Lcom/android/cloud/bean/TransferState;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 9
    iput p2, p0, Lcom/android/cloud/bean/TransferState;->progress:I

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/bean/TransferState$Status;IJ)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/cloud/bean/TransferState;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 12
    iput p2, p0, Lcom/android/cloud/bean/TransferState;->progress:I

    .line 13
    iput-wide p3, p0, Lcom/android/cloud/bean/TransferState;->currentSize:J

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/bean/TransferState$Status;IJLcom/micloud/midrive/infos/ErrInfo;)V
    .registers 6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/cloud/bean/TransferState;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 16
    iput p2, p0, Lcom/android/cloud/bean/TransferState;->progress:I

    .line 17
    iput-wide p3, p0, Lcom/android/cloud/bean/TransferState;->currentSize:J

    .line 18
    iput-object p5, p0, Lcom/android/cloud/bean/TransferState;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/bean/TransferState$Status;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/cloud/bean/TransferState;->progress:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/android/cloud/bean/TransferState;->currentSize:J

    .line 4
    iput-object p1, p0, Lcom/android/cloud/bean/TransferState;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 5
    iput-object p2, p0, Lcom/android/cloud/bean/TransferState;->filepath:Ljava/lang/String;

    return-void
.end method

.method public static getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    if-ne v0, v1, :cond_26

    .line 7
    sget-object v0, Lcom/android/cloud/bean/TransferState$1;->$SwitchMap$com$micloud$midrive$ui$bean$TransferTaskItem$TransferStatus:[I

    .line 9
    iget-object p0, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result p0

    .line 15
    aget p0, v0, p0

    .line 17
    packed-switch p0, :pswitch_data_54

    .line 20
    goto :goto_4a

    .line 21
    :pswitch_14  #0x6
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    .line 23
    return-object p0

    .line 24
    :pswitch_17  #0x5
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 26
    return-object p0

    .line 27
    :pswitch_1a  #0x4
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 29
    return-object p0

    .line 30
    :pswitch_1d  #0x3
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

    .line 32
    return-object p0

    .line 33
    :pswitch_20  #0x2
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 35
    return-object p0

    .line 36
    :pswitch_23  #0x1
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 38
    return-object p0

    .line 39
    :cond_26
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 41
    if-ne v0, v1, :cond_4a

    .line 43
    sget-object v0, Lcom/android/cloud/bean/TransferState$1;->$SwitchMap$com$micloud$midrive$ui$bean$TransferTaskItem$TransferStatus:[I

    .line 45
    iget-object p0, p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result p0

    .line 51
    aget p0, v0, p0

    .line 53
    packed-switch p0, :pswitch_data_64

    .line 56
    goto :goto_4a

    .line 57
    :pswitch_38  #0x6
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    .line 59
    return-object p0

    .line 60
    :pswitch_3b  #0x5
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 62
    return-object p0

    .line 63
    :pswitch_3e  #0x4
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 65
    return-object p0

    .line 66
    :pswitch_41  #0x3
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Upload_waiting:Lcom/android/cloud/bean/TransferState$Status;

    .line 68
    return-object p0

    .line 69
    :pswitch_44  #0x2
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 71
    return-object p0

    .line 72
    :pswitch_47  #0x1
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 74
    return-object p0

    .line 75
    :cond_4a
    :goto_4a
    const-string p0, "MiDrive_LOG"

    .line 77
    const-string v0, "error status"

    .line 79
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object p0, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 84
    return-object p0

    .line 85
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
        :pswitch_17  #00000005
        :pswitch_14  #00000006
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_44  #00000002
        :pswitch_41  #00000003
        :pswitch_3e  #00000004
        :pswitch_3b  #00000005
        :pswitch_38  #00000006
    .end packed-switch
.end method


# virtual methods
.method public getCurrentSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/cloud/bean/TransferState;->currentSize:J

    .line 3
    return-wide v0
.end method

.method public getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/TransferState;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 3
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/TransferState;->filepath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/cloud/bean/TransferState;->progress:I

    .line 3
    return v0
.end method

.method public getStatus()Lcom/android/cloud/bean/TransferState$Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/TransferState;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 3
    return-object v0
.end method
