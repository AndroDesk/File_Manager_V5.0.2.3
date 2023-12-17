.class abstract Lorg/swiftp/DataSocketFactory;
.super Ljava/lang/Object;
.source "DataSocketFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPasv()I
.end method

.method public abstract onPort(Ljava/net/InetAddress;I)Z
.end method

.method public abstract onTransfer()Ljava/net/Socket;
.end method

.method public abstract reportTraffic(J)V
.end method
