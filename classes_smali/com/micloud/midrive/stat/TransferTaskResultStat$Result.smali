.class final enum Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;
.super Ljava/lang/Enum;
.source "TransferTaskResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/TransferTaskResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

.field public static final enum CANCEL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

.field public static final enum FAIL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

.field public static final enum SUCCESS:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    new-instance v1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    const-string v3, "FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    new-instance v3, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    const-string v5, "CANCEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->CANCEL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->$VALUES:[Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;
    .registers 2

    const-class v0, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->$VALUES:[Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    invoke-virtual {v0}, [Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    return-object v0
.end method
