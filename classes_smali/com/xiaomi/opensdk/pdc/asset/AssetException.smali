.class public Lcom/xiaomi/opensdk/pdc/asset/AssetException;
.super Ljava/lang/Exception;
.source "AssetException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public description:Ljava/lang/String;

.field public errorCode:I

.field public errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public retriable:Z

.field public retrytime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->description:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 6
    iput p3, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->errorCode:I

    .line 7
    iput-boolean p4, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->retriable:Z

    .line 8
    iput-wide p5, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->retrytime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_40

    .line 15
    const-string v2, "["

    .line 17
    invoke-static {v0, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_3a

    .line 42
    const-string v2, ":"

    .line 44
    invoke-static {v0, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    :cond_3a
    const-string v1, "]"

    .line 61
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    :cond_40
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->description:Ljava/lang/String;

    .line 67
    if-eqz v1, :cond_53

    .line 69
    const-string v1, ",  "

    .line 71
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->description:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    :cond_53
    return-object v0
.end method
