.class public final enum Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/ServiceQualityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

.field public static final enum SUCCESS:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

.field public static final enum TIMEOUT:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 3
    const-string v1, "SUCCESS"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ok"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->SUCCESS:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 13
    new-instance v1, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 15
    const-string v3, "FAILED"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "failed"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->FAILED:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 25
    new-instance v3, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 27
    const-string v5, "TIMEOUT"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "timeout"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->TIMEOUT:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v5, v5, [Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 40
    aput-object v0, v5, v2

    .line 42
    aput-object v1, v5, v4

    .line 44
    aput-object v3, v5, v6

    .line 46
    sput-object v5, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->b:[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 48
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
    iput-object p3, p0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;
    .registers 2

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->b:[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getResultType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method
