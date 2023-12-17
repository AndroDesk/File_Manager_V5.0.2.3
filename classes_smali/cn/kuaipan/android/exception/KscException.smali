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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILcn/kuaipan/android/kss/TransferStep;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 9

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

    :cond_15
    invoke-static {v2, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    invoke-static {p3}, Lcn/kuaipan/android/exception/KscException;->getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    iput-object p2, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    iput-object p4, p0, Lcn/kuaipan/android/exception/KscException;->transferStep:Lcn/kuaipan/android/kss/TransferStep;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-void
.end method

.method public static getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v0, :cond_f

    new-instance v0, Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;

    check-cast p0, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;-><init>(Lorg/apache/http/conn/HttpHostConnectException;)V

    move-object p0, v0

    :cond_f
    return-object p0
.end method

.method public static newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;
    .registers 5

    invoke-static {p0}, La/b;->b0(Ljava/lang/Throwable;)Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p0, v0

    :cond_7
    nop

    instance-of v0, p0, Lcn/kuaipan/android/exception/KscException;

    if-eqz v0, :cond_f

    check-cast p0, Lcn/kuaipan/android/exception/KscException;

    return-object p0

    :cond_f
    invoke-static {p0}, La/b;->F(Ljava/lang/Throwable;)V

    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1f

    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b12f

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_1f
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_2c

    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b0c0

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_2c
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_39

    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b250

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_39
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_46

    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b12e

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_46
    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_53

    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b2b4

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_53
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_60

    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b2b5

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_60
    instance-of v0, p0, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_6d

    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x7a129

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_6d
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_7a

    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x62639

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_7a
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_87

    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x62638

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_87
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_94

    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x62a1f

    invoke-direct {v0, v1, p1, p0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    return-object v0

    :cond_94
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    return v0
.end method

.method public getSimpleMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(ErrCode: "

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_31

    const-string v1, ": "

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_31
    return-object v0
.end method

.method public getTransferStep()Lcn/kuaipan/android/kss/TransferStep;
    .registers 2

    iget-object v0, p0, Lcn/kuaipan/android/exception/KscException;->transferStep:Lcn/kuaipan/android/kss/TransferStep;

    return-object v0
.end method
