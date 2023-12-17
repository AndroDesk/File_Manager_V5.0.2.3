.class public Lorg/swiftp/ProxyDataSocketInfo;
.super Ljava/net/Socket;
.source "ProxyDataSocketInfo.java"


# instance fields
.field private remotePublicPort:I

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;I)V
    .registers 3

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    iput p2, p0, Lorg/swiftp/ProxyDataSocketInfo;->remotePublicPort:I

    iput-object p1, p0, Lorg/swiftp/ProxyDataSocketInfo;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public getRemotePublicPort()I
    .registers 2

    iget v0, p0, Lorg/swiftp/ProxyDataSocketInfo;->remotePublicPort:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketInfo;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public setRemotePublicPort(I)V
    .registers 2

    iput p1, p0, Lorg/swiftp/ProxyDataSocketInfo;->remotePublicPort:I

    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .registers 2

    iput-object p1, p0, Lorg/swiftp/ProxyDataSocketInfo;->socket:Ljava/net/Socket;

    return-void
.end method
