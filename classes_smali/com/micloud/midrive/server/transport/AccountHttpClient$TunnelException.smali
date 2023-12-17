.class public Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;
.super Lcom/micloud/midrive/server/transport/exception/RequestIOException;
.source "AccountHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/AccountHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TunnelException"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestIOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
