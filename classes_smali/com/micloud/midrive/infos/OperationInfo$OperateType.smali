.class final enum Lcom/micloud/midrive/infos/OperationInfo$OperateType;
.super Ljava/lang/Enum;
.source "OperationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/OperationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/infos/OperationInfo$OperateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/infos/OperationInfo$OperateType;

.field public static final enum COPY:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

.field public static final enum NONE:Lcom/micloud/midrive/infos/OperationInfo$OperateType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    const-string v1, "COPY"

    const/4 v2, 0x0

    const-string v3, "copy"

    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->COPY:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    new-instance v1, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    const-string v3, "NONE"

    const/4 v4, 0x1

    const-string v5, "none"

    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->NONE:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->$VALUES:[Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getOperateType(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo$OperateType;
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->values()[Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->type:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    sget-object p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->NONE:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo$OperateType;
    .registers 2

    const-class v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/OperationInfo$OperateType;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->$VALUES:[Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/OperationInfo$OperateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->type:Ljava/lang/String;

    return-object v0
.end method
