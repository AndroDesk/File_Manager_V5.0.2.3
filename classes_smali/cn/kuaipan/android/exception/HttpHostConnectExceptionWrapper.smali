.class public Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;
.super Ljava/net/ConnectException;
.source "HttpHostConnectExceptionWrapper.java"


# static fields
.field private static final serialVersionUID:J = 0x519f4c57914066d8L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpHostConnectException;)V
    .registers 3

    invoke-virtual {p1}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/conn/HttpHostConnectException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_10
    return-void
.end method
