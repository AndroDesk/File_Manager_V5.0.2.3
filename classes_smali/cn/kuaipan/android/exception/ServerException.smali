.class public Lcn/kuaipan/android/exception/ServerException;
.super Lcn/kuaipan/android/exception/KscException;
.source "ServerException.java"


# static fields
.field private static final serialVersionUID:J = 0x58731af61b7dd7faL


# instance fields
.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 6

    const/16 v0, 0x64

    if-lt p1, v0, :cond_a

    const/16 v0, 0x257

    if-gt p1, v0, :cond_a

    move v0, p1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const v1, 0x7acd8

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p2, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    iput p1, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    return-void
.end method


# virtual methods
.method public getSimpleMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(ErrCode: "

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/kuaipan/android/exception/KscException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): StatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3e

    const-string v1, ", "

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3e
    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    return v0
.end method
