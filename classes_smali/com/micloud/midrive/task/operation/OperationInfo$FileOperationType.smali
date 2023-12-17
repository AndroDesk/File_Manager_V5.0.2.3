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

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 3
    const-string v1, "MOVE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    sput-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->MOVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 11
    new-instance v1, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 13
    const-string v3, "COPY"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v3}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    sput-object v1, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 21
    new-instance v3, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 23
    const-string v5, "DELETE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v5}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    sput-object v3, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->DELETE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 31
    new-instance v5, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 33
    const-string v7, "OVERWRITE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v7}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    sput-object v5, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->OVERWRITE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 41
    new-instance v7, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 43
    const-string v9, "NEW_COPY"

    .line 45
    const/4 v10, 0x4

    .line 46
    const-string v11, "NEWCOPY"

    .line 48
    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    sput-object v7, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->NEW_COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 53
    new-instance v9, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 55
    const-string v11, "PPT_TO_PDF_CREATE"

    .line 57
    const/4 v12, 0x5

    .line 58
    invoke-direct {v9, v11, v12, v11}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    sput-object v9, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->PPT_TO_PDF_CREATE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 63
    new-instance v11, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 65
    const-string v13, "PPT_TO_PDF_SAVE"

    .line 67
    const/4 v14, 0x6

    .line 68
    invoke-direct {v11, v13, v14, v13}, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v11, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->PPT_TO_PDF_SAVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 73
    const/4 v13, 0x7

    .line 74
    new-array v13, v13, [Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 76
    aput-object v0, v13, v2

    .line 78
    aput-object v1, v13, v4

    .line 80
    aput-object v3, v13, v6

    .line 82
    aput-object v5, v13, v8

    .line 84
    aput-object v7, v13, v10

    .line 86
    aput-object v9, v13, v12

    .line 88
    aput-object v11, v13, v14

    .line 90
    sput-object v13, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->$VALUES:[Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 92
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
    iput-object p3, p0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->label:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->$VALUES:[Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 9
    return-object v0
.end method
