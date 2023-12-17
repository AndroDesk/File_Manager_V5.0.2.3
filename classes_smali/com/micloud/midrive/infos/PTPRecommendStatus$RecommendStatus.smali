.class public final enum Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;
.super Ljava/lang/Enum;
.source "PTPRecommendStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/PTPRecommendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecommendStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

.field public static final enum NOT_READY:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

.field public static final enum OFF:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

.field public static final enum ON:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

.field public static final enum READY:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->ON:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    new-instance v1, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    const-string v3, "OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->OFF:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    new-instance v3, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    const-string v5, "NOT_READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->NOT_READY:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    new-instance v5, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    const-string v7, "READY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->READY:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->$VALUES:[Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

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

    iput-object p3, p0, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;
    .registers 2

    const-class v0, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->$VALUES:[Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    return-object v0
.end method
