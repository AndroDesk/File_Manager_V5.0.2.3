.class public Lcn/kuaipan/android/exception/KscException;
.super Ljava/lang/Exception;
.source "KscException.java"

# interfaces
.implements Lcn/kuaipan/android/exception/IKscError;


# static fields
.field private static final serialVersionUID:J = 0x678bb89717b88b4eL


# instance fields
.field public final detailMessage:Ljava/lang/String;

.field private final errCode:I

.field private final transferStep:Lcn/kuaipan/android/kss/TransferStep;


# direct methods
.method public constructor <init>(ILcn/kuaipan/android/kss/TransferStep;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 9

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    const-string v2, "\n"

    if-nez p2, :cond_15

    move-object v3, v1

    goto :goto_19

    .line 5
    :cond_15
    invoke-static {v2, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    :goto_19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1f

    goto :goto_2e

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p3}, Lcn/kuaipan/android/exception/KscException;->getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p3

    .line 8
    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput p1, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    .line 10
    iput-object p2, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcn/kuaipan/android/exception/KscException;->transferStep:Lcn/kuaipan/android/kss/TransferStep;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 3
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-void
.end method

.method public static getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-object p0

    .line 4
    :cond_3
    instance-of v0, p0, Lorg/apache/http/conn/HttpHostConnectException;

    .line 6
    if-eqz v0, :cond_f

    .line 8
    new-instance v0, Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;

    .line 10
    check-cast p0, Lorg/apache/http/conn/HttpHostConnectException;

    .line 12
    invoke-direct {v0, p0}, Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;-><init>(Lorg/apache/http/conn/HttpHostConnectException;)V

    .line 15
    move-object p0, v0

    .line 16
    :cond_f
    return-object p0
.end method

.method public static newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;
    .registers 5

    .line 1
    invoke-static {p0}, La/b;->b0(Ljava/lang/Throwable;)Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    move-object p0, v0

    .line 8
    :cond_7
    nop

    .line 9
    instance-of v0, p0, Lcn/kuaipan/android/exception/KscException;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    check-cast p0, Lcn/kuaipan/android/exception/KscException;

    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-static {p0}, La/b;->F(Ljava/lang/Throwable;)V

    .line 19
    instance-of v0, p0, Ljava/net/ConnectException;

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    .line 25
    const v1, 0x7b12f

    .line 28
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 31
    return-object v0

    .line 32
    :cond_1f
    instance-of v0, p0, Ljava/net/SocketException;

    .line 34
    if-eqz v0, :cond_2c

    .line 36
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    .line 38
    const v1, 0x7b0c0

    .line 41
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 44
    return-object v0

    .line 45
    :cond_2c
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 47
    if-eqz v0, :cond_39

    .line 49
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    .line 51
    const v1, 0x7b250

    .line 54
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 57
    return-object v0

    .line 58
    :cond_39
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 60
    if-eqz v0, :cond_46

    .line 62
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    .line 64
    const v1, 0x7b12e

    .line 67
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 70
    return-object v0

    .line 71
    :cond_46
    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    .line 73
    if-eqz v0, :cond_53

    .line 75
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    .line 77
    const v1, 0x7b2b4

    .line 80
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 83
    return-object v0

    .line 84
    :cond_53
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 86
    if-eqz v0, :cond_60

    .line 88
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    .line 90
    const v1, 0x7b2b5

    .line 93
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 96
    return-object v0

    .line 97
    :cond_60
    instance-of v0, p0, Ljava/security/InvalidKeyException;

    .line 99
    if-eqz v0, :cond_6d

    .line 101
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    .line 103
    const v1, 0x7a129

    .line 106
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 109
    return-object v0

    .line 110
    :cond_6d
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    .line 112
    if-eqz v0, :cond_7a

    .line 114
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    .line 116
    const v1, 0x62639

    .line 119
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 122
    return-object v0

    .line 123
    :cond_7a
    instance-of v0, p0, Ljava/io/IOException;

    .line 125
    if-eqz v0, :cond_87

    .line 127
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    .line 129
    const v1, 0x62638

    .line 132
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 135
    return-object v0

    .line 136
    :cond_87
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 138
    if-nez v0, :cond_94

    .line 140
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    .line 142
    const v1, 0x62a1f

    .line 145
    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 148
    return-object v0

    .line 149
    :cond_94
    check-cast p0, Ljava/lang/RuntimeException;

    .line 151
    throw p0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    .line 3
    return v0
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
    iget v1, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    .line 17
    const-string v2, ")"

    .line 19
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 25
    if-eqz v1, :cond_31

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    move-result v1

    .line 31
    const/16 v2, 0x64

    .line 33
    if-ge v1, v2, :cond_31

    .line 35
    const-string v1, ": "

    .line 37
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    :cond_31
    return-object v0
.end method

.method public getTransferStep()Lcn/kuaipan/android/kss/TransferStep;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/exception/KscException;->transferStep:Lcn/kuaipan/android/kss/TransferStep;

    .line 3
    return-object v0
.end method
