.class public final enum Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
.super Ljava/lang/Enum;
.source "TransferTaskItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/ui/bean/TransferTaskItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public static final enum DONE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public static final enum FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public static final enum PAUSE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public static final enum RUNNING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public static final enum WAITING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

.field public static final enum WAITING_NETWORK:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 3
    const-string v1, "WAITING"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 11
    new-instance v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 13
    const-string v3, "WAITING_NETWORK"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING_NETWORK:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 21
    new-instance v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 23
    const-string v5, "RUNNING"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->RUNNING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 31
    new-instance v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 33
    const-string v7, "PAUSE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->PAUSE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 41
    new-instance v7, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 43
    const-string v9, "FAIL"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 51
    new-instance v9, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 53
    const-string v11, "DONE"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->DONE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 64
    aput-object v0, v11, v2

    .line 66
    aput-object v1, v11, v4

    .line 68
    aput-object v3, v11, v6

    .line 70
    aput-object v5, v11, v8

    .line 72
    aput-object v7, v11, v10

    .line 74
    aput-object v9, v11, v12

    .line 76
    sput-object v11, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 78
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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 9
    return-object v0
.end method
