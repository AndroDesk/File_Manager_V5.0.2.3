.class final enum Lcom/micloud/midrive/stat/FileOperationResultStat$Result;
.super Ljava/lang/Enum;
.source "FileOperationResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/FileOperationResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/stat/FileOperationResultStat$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

.field public static final enum FAIL:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

.field public static final enum SUCCESS:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 3
    const-string v1, "SUCCESS"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 11
    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 13
    const-string v3, "FAIL"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 24
    aput-object v0, v3, v2

    .line 26
    aput-object v1, v3, v4

    .line 28
    sput-object v3, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->$VALUES:[Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 30
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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/stat/FileOperationResultStat$Result;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/stat/FileOperationResultStat$Result;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->$VALUES:[Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 9
    return-object v0
.end method
