.class public Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;
.super Ljava/net/ConnectException;
.source "HttpHostConnectExceptionWrapper.java"


# static fields
.field private static final serialVersionUID:J = 0x519f4c57914066d8L


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/HttpHostConnectException;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lorg/apache/http/conn/HttpHostConnectException;->getCause()Ljava/lang/Throwable;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_10

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    :cond_10
    return-void
.end method
