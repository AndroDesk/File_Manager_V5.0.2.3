.class public final enum Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
.super Ljava/lang/Enum;
.source "OperationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/operation/OperationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileOperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public static final enum COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public static final enum DELETE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public static final enum MOVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public static final enum NEW_COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public static final enum OVERWRITE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public static final enum PPT_TO_PDF_CREATE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public static final enum PPT_TO_PDF_SAVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;


# instance fields
.field public label:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    new-instance v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const-string v1, "MOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->MOVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    new-instance v1, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const-string v3, "COPY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    new-instance v3, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->DELETE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    new-instance v5, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const-string v7, "OVERWRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->OVERWRITE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    new-instance v7, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const-string v9, "NEW_COPY"

    const/4 v10, 0x4

    const-string v11, "NEWCOPY"

    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->NEW_COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    new-instance v9, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const-string v11, "PPT_TO_PDF_CREATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->PPT_TO_PDF_CREATE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    new-instance v11, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const-string v13, "PPT_TO_PDF_SAVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->PPT_TO_PDF_SAVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->$VALUES:[Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

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

    iput-object p3, p0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    .registers 2

    const-class v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->$VALUES:[Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    invoke-virtual {v0}, [Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    return-object v0
.end method
