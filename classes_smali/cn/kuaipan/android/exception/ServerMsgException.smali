.class public Lcn/kuaipan/android/exception/ServerMsgException;
.super Lcn/kuaipan/android/exception/KscException;
.source "ServerMsgException.java"


# static fields
.field private static final serialVersionUID:J = -0x973d5eb4de08ba7L


# instance fields
.field private final origMessage:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    .line 13
    invoke-direct {p0, p2, p3, p4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 14
    iput p1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->statusCode:I

    const-string p1, "Message not come from api server."

    .line 15
    iput-object p1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 9

    .line 2
    sget-object v0, Ll1/a;->a:Ls1/n;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_13

    .line 4
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_13
    sget-object v2, Ll1/a;->a:Ls1/n;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3, v0}, Ls1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/n$a;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 7
    iget-object v1, v0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 8
    :cond_21
    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_29

    const v0, 0x30d40

    goto :goto_2d

    .line 9
    :cond_29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    :goto_2d
    invoke-direct {p0, v0, p3, p4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 11
    iput p1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->statusCode:I

    .line 12
    iput-object p2, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\n"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public getOrigMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    .line 3
    return-object v0
.end method

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
    iget v1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->statusCode:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    .line 38
    if-eqz v1, :cond_36

    .line 40
    const-string v1, ", msg: "

    .line 42
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    :cond_36
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 57
    if-eqz v1, :cond_51

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 62
    move-result v1

    .line 63
    const/16 v2, 0x64

    .line 65
    if-ge v1, v2, :cond_51

    .line 67
    const-string v1, ", "

    .line 69
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    :cond_51
    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/kuaipan/android/exception/ServerMsgException;->statusCode:I

    .line 3
    return v0
.end method
