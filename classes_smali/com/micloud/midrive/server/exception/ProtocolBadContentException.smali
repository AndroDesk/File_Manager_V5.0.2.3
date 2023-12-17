.class public Lcom/micloud/midrive/server/exception/ProtocolBadContentException;
.super Lcom/micloud/midrive/server/exception/ProtocolException;
.source "ProtocolBadContentException.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/server/exception/ProtocolException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/exception/ProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/server/exception/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/exception/ProtocolException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
