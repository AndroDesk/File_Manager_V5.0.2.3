.class public Lcom/micloud/midrive/server/transport/AccountHttpClient$TransportClientException;
.super Lcom/micloud/midrive/server/transport/exception/RequestIOException;
.source "AccountHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/AccountHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportClientException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestIOException;-><init>(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method
