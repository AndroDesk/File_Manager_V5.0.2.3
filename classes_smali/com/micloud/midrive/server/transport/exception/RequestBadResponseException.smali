.class public Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;
.super Lcom/micloud/midrive/server/transport/exception/RequestException;
.source "RequestBadResponseException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/exception/RequestException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/server/transport/exception/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
