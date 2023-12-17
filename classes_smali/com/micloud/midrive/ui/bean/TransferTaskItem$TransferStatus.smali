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

    new-instance v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    new-instance v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-string v3, "WAITING_NETWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING_NETWORK:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    new-instance v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-string v5, "RUNNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->RUNNING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    new-instance v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-string v7, "PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->PAUSE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    new-instance v7, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-string v9, "FAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    new-instance v9, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-string v11, "DONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->DONE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
    .registers 2

    const-class v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    invoke-virtual {v0}, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object v0
.end method
