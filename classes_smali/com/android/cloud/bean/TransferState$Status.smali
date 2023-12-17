.class public final enum Lcom/android/cloud/bean/TransferState$Status;
.super Ljava/lang/Enum;
.source "TransferState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/bean/TransferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cloud/bean/TransferState$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Download_error:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Pause:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Upload_error:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Upload_waiting:Lcom/android/cloud/bean/TransferState$Status;

.field public static final enum Wait_network:Lcom/android/cloud/bean/TransferState$Status;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/android/cloud/bean/TransferState$Status;

    .line 3
    const-string v1, "Download_Waiting"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

    .line 11
    new-instance v1, Lcom/android/cloud/bean/TransferState$Status;

    .line 13
    const-string v3, "Upload_waiting"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_waiting:Lcom/android/cloud/bean/TransferState$Status;

    .line 21
    new-instance v3, Lcom/android/cloud/bean/TransferState$Status;

    .line 23
    const-string v5, "Pause"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 31
    new-instance v5, Lcom/android/cloud/bean/TransferState$Status;

    .line 33
    const-string v7, "Wait_network"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    .line 41
    new-instance v7, Lcom/android/cloud/bean/TransferState$Status;

    .line 43
    const-string v9, "Download_Loading"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 51
    new-instance v9, Lcom/android/cloud/bean/TransferState$Status;

    .line 53
    const-string v11, "Upload_Loading"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 61
    new-instance v11, Lcom/android/cloud/bean/TransferState$Status;

    .line 63
    const-string v13, "Download_error"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 71
    new-instance v13, Lcom/android/cloud/bean/TransferState$Status;

    .line 73
    const-string v15, "Upload_error"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 81
    new-instance v15, Lcom/android/cloud/bean/TransferState$Status;

    .line 83
    const-string v14, "Download_Finish"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 92
    new-instance v14, Lcom/android/cloud/bean/TransferState$Status;

    .line 94
    const-string v12, "Upload_Finish"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 103
    const/16 v12, 0xa

    .line 105
    new-array v12, v12, [Lcom/android/cloud/bean/TransferState$Status;

    .line 107
    aput-object v0, v12, v2

    .line 109
    aput-object v1, v12, v4

    .line 111
    aput-object v3, v12, v6

    .line 113
    aput-object v5, v12, v8

    .line 115
    const/4 v0, 0x4

    .line 116
    aput-object v7, v12, v0

    .line 118
    const/4 v0, 0x5

    .line 119
    aput-object v9, v12, v0

    .line 121
    const/4 v0, 0x6

    .line 122
    aput-object v11, v12, v0

    .line 124
    const/4 v0, 0x7

    .line 125
    aput-object v13, v12, v0

    .line 127
    const/16 v0, 0x8

    .line 129
    aput-object v15, v12, v0

    .line 131
    aput-object v14, v12, v10

    .line 133
    sput-object v12, Lcom/android/cloud/bean/TransferState$Status;->$VALUES:[Lcom/android/cloud/bean/TransferState$Status;

    .line 135
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState$Status;
    .registers 2

    .line 1
    const-class v0, Lcom/android/cloud/bean/TransferState$Status;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/cloud/bean/TransferState$Status;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/cloud/bean/TransferState$Status;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->$VALUES:[Lcom/android/cloud/bean/TransferState$Status;

    .line 3
    invoke-virtual {v0}, [Lcom/android/cloud/bean/TransferState$Status;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/cloud/bean/TransferState$Status;

    .line 9
    return-object v0
.end method
