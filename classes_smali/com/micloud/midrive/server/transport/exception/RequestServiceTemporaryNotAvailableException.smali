.class public Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;
.super Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException;
.source "RequestServiceTemporaryNotAvailableException.java"


# instance fields
.field public final retryDelayHintMillis:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 3
    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 4
    iput-wide p2, p0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;J)V
    .registers 5

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput-wide p3, p0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;J)V
    .registers 4

    .line 7
    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iput-wide p2, p0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    return-void
.end method
