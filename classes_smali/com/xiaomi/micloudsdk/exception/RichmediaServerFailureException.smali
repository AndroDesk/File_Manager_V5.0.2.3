.class public Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;
.super Ljava/lang/Exception;
.source "RichmediaServerFailureException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 5
    iput p2, p0, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;->errorCode:I

    .line 3
    return v0
.end method
