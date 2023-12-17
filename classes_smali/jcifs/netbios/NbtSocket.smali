.class public Ljcifs/netbios/NbtSocket;
.super Ljava/net/Socket;
.source "NbtSocket.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final SSN_SRVC_PORT:I = 0x8b

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private address:Ljcifs/netbios/NbtAddress;

.field private calledName:Ljcifs/netbios/Name;

.field private soTimeout:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Ljcifs/netbios/NbtSocket;-><init>(Ljcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Ljcifs/netbios/NbtSocket;-><init>(Ljcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 7

    .line 4
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez p3, :cond_8

    const/16 p3, 0x8b

    .line 5
    :cond_8
    invoke-direct {p0, v0, p3, p4, p5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 6
    iput-object p1, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    if-nez p2, :cond_14

    .line 7
    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput-object p1, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    goto :goto_1e

    .line 8
    :cond_14
    new-instance p1, Ljcifs/netbios/Name;

    const/16 p3, 0x20

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    :goto_1e
    const/16 p1, 0x1388

    const-string p2, "jcifs.netbios.soTimeout"

    .line 9
    invoke-static {p2, p1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NbtSocket;->soTimeout:I

    .line 10
    invoke-direct {p0}, Ljcifs/netbios/NbtSocket;->connect()V

    return-void
.end method

.method private connect()V
    .registers 7

    .line 1
    const/16 v0, 0x200

    .line 3
    new-array v0, v0, [B

    .line 5
    :try_start_4
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 8
    move-result-object v1

    .line 9
    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljcifs/netbios/SessionRequestPacket;

    .line 15
    iget-object v4, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    .line 17
    sget-object v5, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    .line 19
    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 21
    invoke-direct {v3, v4, v5}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v3, v0, v4}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    iget v2, p0, Ljcifs/netbios/NbtSocket;->soTimeout:I

    .line 34
    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 37
    invoke-static {v1, v0, v4}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    .line 40
    move-result v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_6c

    .line 41
    const/4 v2, -0x1

    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq v0, v2, :cond_66

    .line 45
    const/16 v2, 0x82

    .line 47
    if-eq v0, v2, :cond_4c

    .line 49
    const/16 v2, 0x83

    .line 51
    if-eq v0, v2, :cond_3d

    .line 53
    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    .line 56
    new-instance v0, Ljcifs/netbios/NbtException;

    .line 58
    invoke-direct {v0, v3, v4}, Ljcifs/netbios/NbtException;-><init>(II)V

    .line 61
    throw v0

    .line 62
    :cond_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 65
    move-result v0

    .line 66
    and-int/lit16 v0, v0, 0xff

    .line 68
    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    .line 71
    new-instance v1, Ljcifs/netbios/NbtException;

    .line 73
    invoke-direct {v1, v3, v0}, Ljcifs/netbios/NbtException;-><init>(II)V

    .line 76
    throw v1

    .line 77
    :cond_4c
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 79
    if-le v0, v3, :cond_65

    .line 81
    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "session established ok with "

    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    :cond_65
    return-void

    .line 103
    :cond_66
    new-instance v0, Ljcifs/netbios/NbtException;

    .line 105
    invoke-direct {v0, v3, v2}, Ljcifs/netbios/NbtException;-><init>(II)V

    .line 108
    throw v0

    .line 109
    :catch_6c
    move-exception v0

    .line 110
    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    .line 113
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-le v0, v1, :cond_18

    .line 6
    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "close: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    :cond_18
    invoke-super {p0}, Ljava/net/Socket;->close()V

    .line 28
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance v0, Ljcifs/netbios/SocketInputStream;

    .line 3
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljcifs/netbios/SocketInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getNbtAddress()Ljcifs/netbios/NbtAddress;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    .line 3
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 1
    new-instance v0, Ljcifs/netbios/SocketOutputStream;

    .line 3
    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljcifs/netbios/SocketOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "NbtSocket[addr="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",port="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ",localport="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    .line 33
    move-result v1

    .line 34
    const-string v2, "]"

    .line 36
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
