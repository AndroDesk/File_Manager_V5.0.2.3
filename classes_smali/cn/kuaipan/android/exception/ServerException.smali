.class public Lcn/kuaipan/android/exception/ServerException;
.super Lcn/kuaipan/android/exception/KscException;
.source "ServerException.java"


# static fields
.field private static final serialVersionUID:J = 0x58731af61b7dd7faL


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 6

    .line 1
    const/16 v0, 0x64

    .line 3
    if-lt p1, v0, :cond_a

    .line 5
    const/16 v0, 0x257

    .line 7
    if-gt p1, v0, :cond_a

    .line 9
    move v0, p1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    const v1, 0x7acd8

    .line 15
    add-int/2addr v0, v1

    .line 16
    invoke-direct {p0, v0, p2, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 19
    iput p1, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    .line 21
    return-void
.end method


# virtual methods
.method public getSimpleMessage()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "(ErrCode: "

    .line 11
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcn/kuaipan/android/exception/KscException;->getErrorCode()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "): StatusCode: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 38
    if-eqz v1, :cond_3e

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x64

    .line 46
    if-ge v1, v2, :cond_3e

    .line 48
    const-string v1, ", "

    .line 50
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    :cond_3e
    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    .line 3
    return v0
.end method
