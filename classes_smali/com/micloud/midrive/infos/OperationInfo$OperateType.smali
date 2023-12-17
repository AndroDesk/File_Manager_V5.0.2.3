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

    .line 1
    new-instance v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 3
    const-string v1, "COPY"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "copy"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->COPY:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 13
    new-instance v1, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 15
    const-string v3, "NONE"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "none"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->NONE:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 28
    aput-object v0, v3, v2

    .line 30
    aput-object v1, v3, v4

    .line 32
    sput-object v3, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->$VALUES:[Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 34
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->type:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static getOperateType(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo$OperateType;
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->values()[Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_16

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget-object v4, v3, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->type:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 19
    return-object v3

    .line 20
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    sget-object p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->NONE:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 25
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo$OperateType;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/OperationInfo$OperateType;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->$VALUES:[Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/OperationInfo$OperateType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->type:Ljava/lang/String;

    .line 3
    return-object v0
.end method
