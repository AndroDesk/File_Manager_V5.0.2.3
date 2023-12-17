.class public Lcom/xiaomi/opensdk/exception/ServerException;
.super Ljava/lang/Exception;
.source "ServerException.java"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 5
    invoke-direct {p0, p2}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 6
    iput p1, p0, Lcom/xiaomi/opensdk/exception/ServerException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isOpenServerException(I)Z
    .registers 2

    .line 1
    const/16 v0, 0x190

    .line 3
    if-eq p0, v0, :cond_18

    .line 5
    const/16 v0, 0x191

    .line 7
    if-eq p0, v0, :cond_18

    .line 9
    const/16 v0, 0x193

    .line 11
    if-eq p0, v0, :cond_18

    .line 13
    const/16 v0, 0x196

    .line 15
    if-eq p0, v0, :cond_18

    .line 17
    div-int/lit8 p0, p0, 0x64

    .line 19
    const/4 v0, 0x5

    .line 20
    if-ne p0, v0, :cond_16

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    :goto_18
    const/4 p0, 0x1

    .line 26
    :goto_19
    return p0
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/opensdk/exception/ServerException;->statusCode:I

    .line 3
    return v0
.end method
