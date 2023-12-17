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

    new-instance v0, Lcom/android/cloud/bean/TransferState$Status;

    const-string v1, "Download_Waiting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v1, Lcom/android/cloud/bean/TransferState$Status;

    const-string v3, "Upload_waiting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_waiting:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v3, Lcom/android/cloud/bean/TransferState$Status;

    const-string v5, "Pause"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v5, Lcom/android/cloud/bean/TransferState$Status;

    const-string v7, "Wait_network"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v7, Lcom/android/cloud/bean/TransferState$Status;

    const-string v9, "Download_Loading"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v9, Lcom/android/cloud/bean/TransferState$Status;

    const-string v11, "Upload_Loading"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v11, Lcom/android/cloud/bean/TransferState$Status;

    const-string v13, "Download_error"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v13, Lcom/android/cloud/bean/TransferState$Status;

    const-string v15, "Upload_error"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v15, Lcom/android/cloud/bean/TransferState$Status;

    const-string v14, "Download_Finish"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    new-instance v14, Lcom/android/cloud/bean/TransferState$Status;

    const-string v12, "Upload_Finish"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/cloud/bean/TransferState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/android/cloud/bean/TransferState$Status;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/android/cloud/bean/TransferState$Status;->$VALUES:[Lcom/android/cloud/bean/TransferState$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState$Status;
    .registers 2

    const-class v0, Lcom/android/cloud/bean/TransferState$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cloud/bean/TransferState$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/cloud/bean/TransferState$Status;
    .registers 1

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->$VALUES:[Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0}, [Lcom/android/cloud/bean/TransferState$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cloud/bean/TransferState$Status;

    return-object v0
.end method
