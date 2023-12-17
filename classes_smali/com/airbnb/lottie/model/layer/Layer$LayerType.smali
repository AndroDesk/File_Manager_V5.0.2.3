.class public final enum Lcom/airbnb/lottie/model/layer/Layer$LayerType;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/layer/Layer$LayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum NULL:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum SHAPE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum SOLID:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum TEXT:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 3
    const-string v1, "PRE_COMP"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 11
    new-instance v1, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 13
    const-string v3, "SOLID"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->SOLID:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 21
    new-instance v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 23
    const-string v5, "IMAGE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 31
    new-instance v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 33
    const-string v7, "NULL"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->NULL:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 41
    new-instance v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 43
    const-string v9, "SHAPE"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->SHAPE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 51
    new-instance v9, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 53
    const-string v11, "TEXT"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->TEXT:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 61
    new-instance v11, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 63
    const-string v13, "UNKNOWN"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 74
    aput-object v0, v13, v2

    .line 76
    aput-object v1, v13, v4

    .line 78
    aput-object v3, v13, v6

    .line 80
    aput-object v5, v13, v8

    .line 82
    aput-object v7, v13, v10

    .line 84
    aput-object v9, v13, v12

    .line 86
    aput-object v11, v13, v14

    .line 88
    sput-object v13, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->$VALUES:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 90
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .registers 2

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .registers 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->$VALUES:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 9
    return-object v0
.end method
