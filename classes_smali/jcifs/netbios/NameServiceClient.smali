.class Ljcifs/netbios/NameServiceClient;
.super Ljava/lang/Object;
.source "NameServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_RCV_BUF_SIZE:I = 0x240

.field public static final DEFAULT_RETRY_COUNT:I = 0x2

.field public static final DEFAULT_RETRY_TIMEOUT:I = 0xbb8

.field public static final DEFAULT_SND_BUF_SIZE:I = 0x240

.field public static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final LADDR:Ljava/net/InetAddress;

.field private static final LPORT:I

.field public static final NAME_SERVICE_UDP_PORT:I = 0x89

.field private static final RCV_BUF_SIZE:I

.field public static final RESOLVER_BCAST:I = 0x2

.field public static final RESOLVER_LMHOSTS:I = 0x1

.field public static final RESOLVER_WINS:I = 0x3

.field private static final RETRY_COUNT:I

.field private static final RETRY_TIMEOUT:I

.field private static final RO:Ljava/lang/String;

.field private static final SND_BUF_SIZE:I

.field private static final SO_TIMEOUT:I

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field public baddr:Ljava/net/InetAddress;

.field private closeTimeout:I

.field private in:Ljava/net/DatagramPacket;

.field public laddr:Ljava/net/InetAddress;

.field private lport:I

.field private nextNameTrnId:I

.field private out:Ljava/net/DatagramPacket;

.field private rcv_buf:[B

.field private resolveOrder:[I

.field private responseTable:Ljava/util/HashMap;

.field private snd_buf:[B

.field private socket:Ljava/net/DatagramSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.netbios.snd_buf_size"

    .line 3
    const/16 v1, 0x240

    .line 5
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    sput v0, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    .line 11
    const-string v0, "jcifs.netbios.rcv_buf_size"

    .line 13
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    sput v0, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    .line 19
    const-string v0, "jcifs.netbios.soTimeout"

    .line 21
    const/16 v1, 0x1388

    .line 23
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 26
    move-result v0

    .line 27
    sput v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    .line 29
    const-string v0, "jcifs.netbios.retryCount"

    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 36
    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 38
    const-string v0, "jcifs.netbios.retryTimeout"

    .line 40
    const/16 v1, 0xbb8

    .line 42
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 45
    move-result v0

    .line 46
    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    .line 48
    const-string v0, "jcifs.netbios.lport"

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 54
    move-result v0

    .line 55
    sput v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    .line 57
    const-string v0, "jcifs.netbios.laddr"

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    .line 66
    const-string v0, "jcifs.resolveOrder"

    .line 68
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    .line 74
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    sget v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    sget-object v1, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Ljcifs/netbios/NameServiceClient;-><init>(ILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 12

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 6
    iput p1, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    .line 7
    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    :try_start_18
    const-string p1, "jcifs.netbios.baddr"

    const-string p2, "255.255.255.255"

    .line 8
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;
    :try_end_26
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_26} :catch_26

    .line 10
    :catch_26
    sget p1, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    new-array p2, p1, [B

    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    .line 11
    sget p2, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    new-array v1, p2, [B

    iput-object v1, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    .line 12
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    const/16 v4, 0x89

    invoke-direct {v1, v2, p1, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 13
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    invoke-direct {p1, v1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    .line 14
    sget-object p1, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    const/4 p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_57

    goto/16 :goto_d3

    :cond_57
    new-array v3, p2, [I

    .line 15
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 16
    :cond_61
    :goto_61
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_70

    .line 17
    new-array p2, p1, [I

    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 18
    invoke-static {v3, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_ec

    .line 19
    :cond_70
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LMHOSTS"

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    add-int/lit8 v5, p1, 0x1

    .line 21
    aput v2, v3, p1

    :goto_84
    move p1, v5

    goto :goto_61

    :cond_86
    const-string v6, "WINS"

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 23
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_a0

    .line 24
    sget v5, Ljcifs/util/LogStream;->level:I

    if-le v5, v2, :cond_61

    .line 25
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v6, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_61

    :cond_a0
    add-int/lit8 v5, p1, 0x1

    .line 26
    aput p2, v3, p1

    goto :goto_84

    :cond_a5
    const-string v6, "BCAST"

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b2

    add-int/lit8 v5, p1, 0x1

    .line 28
    aput v1, v3, p1

    goto :goto_84

    :cond_b2
    const-string v6, "DNS"

    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bb

    goto :goto_61

    .line 30
    :cond_bb
    sget v6, Ljcifs/util/LogStream;->level:I

    if-le v6, v2, :cond_61

    .line 31
    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unknown resolver method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_61

    .line 32
    :cond_d3
    :goto_d3
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-nez p1, :cond_e2

    new-array p1, v1, [I

    .line 33
    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v2, p1, v0

    aput v1, p1, v2

    goto :goto_ec

    :cond_e2
    new-array p1, p2, [I

    .line 34
    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v2, p1, v0

    aput p2, p1, v2

    aput v1, p1, v1

    :goto_ec
    return-void
.end method


# virtual methods
.method public ensureOpen(I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 4
    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 14
    :cond_d
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 16
    if-nez p1, :cond_2e

    .line 18
    new-instance p1, Ljava/net/DatagramSocket;

    .line 20
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    .line 22
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    .line 24
    invoke-direct {p1, v0, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 27
    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 29
    new-instance p1, Ljava/lang/Thread;

    .line 31
    const-string v0, "JCIFS-NameServiceClient"

    .line 33
    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 47
    :cond_2e
    return-void
.end method

.method public getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 7

    .line 1
    new-instance v0, Ljcifs/netbios/NameQueryRequest;

    .line 3
    invoke-direct {v0, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 6
    new-instance v1, Ljcifs/netbios/NameQueryResponse;

    .line 8
    invoke-direct {v1}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    .line 11
    if-eqz p2, :cond_d

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    .line 17
    move-result-object p2

    .line 18
    :goto_11
    iput-object p2, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez p2, :cond_19

    .line 24
    move p2, v3

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move p2, v2

    .line 27
    :goto_1a
    iput-boolean p2, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 29
    if-eqz p2, :cond_25

    .line 31
    iget-object p2, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    .line 33
    iput-object p2, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 35
    sget p2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 37
    goto :goto_28

    .line 38
    :cond_25
    iput-boolean v2, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 40
    move p2, v3

    .line 41
    :goto_28
    :try_start_28
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    .line 43
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_49

    .line 46
    iget-boolean v2, v1, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 48
    if-eqz v2, :cond_38

    .line 50
    iget v2, v1, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 52
    if-nez v2, :cond_38

    .line 54
    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 56
    return-object p1

    .line 57
    :cond_38
    add-int/lit8 p2, p2, -0x1

    .line 59
    if-lez p2, :cond_41

    .line 61
    iget-boolean v2, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 63
    if-eqz v2, :cond_41

    .line 65
    goto :goto_28

    .line 66
    :cond_41
    new-instance p2, Ljava/net/UnknownHostException;

    .line 68
    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 70
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p2

    .line 74
    :catch_49
    move-exception p2

    .line 75
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 77
    if-le v0, v3, :cond_53

    .line 79
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 84
    :cond_53
    new-instance p2, Ljava/net/UnknownHostException;

    .line 86
    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 88
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p2
.end method

.method public getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 10

    .line 1
    new-instance v0, Ljcifs/netbios/NameQueryRequest;

    .line 3
    invoke-direct {v0, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 6
    new-instance v1, Ljcifs/netbios/NameQueryResponse;

    .line 8
    invoke-direct {v1}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz p2, :cond_61

    .line 16
    iput-object p2, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 18
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    .line 21
    move-result-object v5

    .line 22
    aget-byte v2, v5, v2

    .line 24
    const/4 v5, -0x1

    .line 25
    if-ne v2, v5, :cond_1b

    .line 27
    move v3, v4

    .line 28
    :cond_1b
    iput-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 30
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 32
    :goto_1f
    :try_start_1f
    sget v3, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    .line 34
    invoke-virtual {p0, v0, v1, v3}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_4f

    .line 37
    iget-boolean v3, v1, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 39
    if-eqz v3, :cond_3f

    .line 41
    iget v3, v1, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 43
    if-nez v3, :cond_3f

    .line 45
    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 47
    array-length v0, p1

    .line 48
    sub-int/2addr v0, v4

    .line 49
    aget-object p1, p1, v0

    .line 51
    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 53
    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    .line 56
    move-result p2

    .line 57
    iput p2, p1, Ljcifs/netbios/Name;->srcHashCode:I

    .line 59
    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 61
    aget-object p1, p1, v0

    .line 63
    return-object p1

    .line 64
    :cond_3f
    add-int/2addr v2, v5

    .line 65
    if-lez v2, :cond_47

    .line 67
    iget-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 69
    if-eqz v3, :cond_47

    .line 71
    goto :goto_1f

    .line 72
    :cond_47
    new-instance p2, Ljava/net/UnknownHostException;

    .line 74
    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 76
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p2

    .line 80
    :catch_4f
    move-exception p2

    .line 81
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 83
    if-le v0, v4, :cond_59

    .line 85
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 90
    :cond_59
    new-instance p2, Ljava/net/UnknownHostException;

    .line 92
    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 94
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p2

    .line 98
    :cond_61
    move p2, v3

    .line 99
    :goto_62
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 101
    array-length v6, v5

    .line 102
    if-ge p2, v6, :cond_df

    .line 104
    :try_start_67
    aget v5, v5, p2

    .line 106
    if-eq v5, v4, :cond_d1

    .line 108
    const/4 v6, 0x2

    .line 109
    if-eq v5, v6, :cond_72

    .line 111
    if-eq v5, v2, :cond_72

    .line 113
    goto/16 :goto_dc

    .line 115
    :cond_72
    if-ne v5, v2, :cond_89

    .line 117
    iget-object v5, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 119
    const-string v6, "\u0001\u0002__MSBROWSE__\u0002"

    .line 121
    if-eq v5, v6, :cond_89

    .line 123
    iget v5, p1, Ljcifs/netbios/Name;->hexCode:I

    .line 125
    const/16 v6, 0x1d

    .line 127
    if-eq v5, v6, :cond_89

    .line 129
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    .line 132
    move-result-object v5

    .line 133
    iput-object v5, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 135
    iput-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 137
    goto :goto_8f

    .line 138
    :cond_89
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    .line 140
    iput-object v5, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 142
    iput-boolean v4, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 144
    :goto_8f
    sget v5, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_91} :catch_dc

    .line 146
    :goto_91
    add-int/lit8 v6, v5, -0x1

    .line 148
    if-gtz v5, :cond_96

    .line 150
    goto :goto_dc

    .line 151
    :cond_96
    :try_start_96
    sget v5, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    .line 153
    invoke-virtual {p0, v0, v1, v5}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9b} :catch_bf

    .line 156
    :try_start_9b
    iget-boolean v5, v1, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 158
    if-eqz v5, :cond_b6

    .line 160
    iget v5, v1, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 162
    if-nez v5, :cond_b6

    .line 164
    iget-object v5, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 166
    aget-object v5, v5, v3

    .line 168
    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 170
    iget-object v6, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 172
    invoke-virtual {v6}, Ljava/net/InetAddress;->hashCode()I

    .line 175
    move-result v6

    .line 176
    iput v6, v5, Ljcifs/netbios/Name;->srcHashCode:I

    .line 178
    iget-object v5, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 180
    aget-object p1, v5, v3

    .line 182
    return-object p1

    .line 183
    :cond_b6
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 185
    aget v5, v5, p2

    .line 187
    if-ne v5, v2, :cond_bd

    .line 189
    goto :goto_dc

    .line 190
    :cond_bd
    move v5, v6

    .line 191
    goto :goto_91

    .line 192
    :catch_bf
    move-exception v5

    .line 193
    sget v6, Ljcifs/util/LogStream;->level:I

    .line 195
    if-le v6, v4, :cond_c9

    .line 197
    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 202
    :cond_c9
    new-instance v5, Ljava/net/UnknownHostException;

    .line 204
    iget-object v6, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 206
    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 209
    throw v5

    .line 210
    :cond_d1
    invoke-static {p1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    .line 213
    move-result-object v5

    .line 214
    if-eqz v5, :cond_dc

    .line 216
    iget-object v6, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 218
    iput v3, v6, Ljcifs/netbios/Name;->srcHashCode:I
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_db} :catch_dc

    .line 220
    return-object v5

    .line 221
    :catch_dc
    :cond_dc
    :goto_dc
    add-int/lit8 p2, p2, 0x1

    .line 223
    goto :goto_62

    .line 224
    :cond_df
    new-instance p2, Ljava/net/UnknownHostException;

    .line 226
    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 228
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 231
    throw p2
.end method

.method public getNextNameTrnId()I
    .registers 4

    .line 1
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 7
    const v2, 0xffff

    .line 10
    and-int/2addr v0, v2

    .line 11
    if-nez v0, :cond_e

    .line 13
    iput v1, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 15
    :cond_e
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 17
    return v0
.end method

.method public getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 8

    .line 1
    new-instance v0, Ljcifs/netbios/NodeStatusResponse;

    .line 3
    invoke-direct {v0, p1}, Ljcifs/netbios/NodeStatusResponse;-><init>(Ljcifs/netbios/NbtAddress;)V

    .line 6
    new-instance v1, Ljcifs/netbios/NodeStatusRequest;

    .line 8
    new-instance v2, Ljcifs/netbios/Name;

    .line 10
    const-string v3, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-direct {v2, v3, v4, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    invoke-direct {v1, v2}, Ljcifs/netbios/NodeStatusRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 20
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 26
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 28
    :goto_1b
    add-int/lit8 v3, v2, -0x1

    .line 30
    if-lez v2, :cond_58

    .line 32
    :try_start_1f
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    .line 34
    invoke-virtual {p0, v1, v0, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_43

    .line 37
    iget-boolean v2, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 39
    if-eqz v2, :cond_41

    .line 41
    iget v2, v0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 43
    if-nez v2, :cond_41

    .line 45
    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 47
    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    .line 50
    move-result v2

    .line 51
    :goto_32
    iget-object p1, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    .line 53
    array-length v1, p1

    .line 54
    if-lt v4, v1, :cond_38

    .line 56
    return-object p1

    .line 57
    :cond_38
    aget-object p1, p1, v4

    .line 59
    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 61
    iput v2, p1, Ljcifs/netbios/Name;->srcHashCode:I

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_32

    .line 66
    :cond_41
    move v2, v3

    .line 67
    goto :goto_1b

    .line 68
    :catch_43
    move-exception v0

    .line 69
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 71
    const/4 v2, 0x1

    .line 72
    if-le v1, v2, :cond_4e

    .line 74
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 79
    :cond_4e
    new-instance v0, Ljava/net/UnknownHostException;

    .line 81
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0

    .line 89
    :cond_58
    new-instance v0, Ljava/net/UnknownHostException;

    .line 91
    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 93
    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 95
    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v0
.end method

.method public run()V
    .registers 6

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_a

    .line 9
    goto/16 :goto_7f

    .line 11
    :cond_a
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    .line 13
    sget v1, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 18
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 20
    iget v1, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 22
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 25
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 27
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    .line 29
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 32
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 34
    const/4 v1, 0x3

    .line 35
    if-le v0, v1, :cond_2b

    .line 37
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 39
    const-string v2, "NetBIOS: new data read from socket"

    .line 41
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    :cond_2b
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {v0, v2}, Ljcifs/netbios/NameServicePacket;->readNameTrnId([BI)I

    .line 50
    move-result v0

    .line 51
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 53
    new-instance v4, Ljava/lang/Integer;

    .line 55
    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 58
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljcifs/netbios/NameServicePacket;

    .line 64
    if-eqz v0, :cond_0

    .line 66
    iget-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 68
    if-eqz v3, :cond_46

    .line 70
    goto :goto_0

    .line 71
    :cond_46
    monitor-enter v0
    :try_end_47
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_47} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_6f
    .catchall {:try_start_0 .. :try_end_47} :catchall_6d

    .line 72
    :try_start_47
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    .line 74
    invoke-virtual {v0, v3, v2}, Ljcifs/netbios/NameServicePacket;->readWireFormat([BI)I

    .line 77
    const/4 v3, 0x1

    .line 78
    iput-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 80
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 82
    if-le v3, v1, :cond_65

    .line 84
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 86
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 89
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 91
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    .line 93
    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    .line 95
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    .line 98
    move-result v4

    .line 99
    invoke-static {v1, v3, v2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 102
    :cond_65
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 105
    monitor-exit v0

    .line 106
    goto :goto_0

    .line 107
    :catchall_6a
    move-exception v1

    .line 108
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_47 .. :try_end_6c} :catchall_6a

    .line 109
    :try_start_6c
    throw v1
    :try_end_6d
    .catch Ljava/net/SocketTimeoutException; {:try_start_6c .. :try_end_6d} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_6f
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 110
    :catchall_6d
    move-exception v0

    .line 111
    goto :goto_7b

    .line 112
    :catch_6f
    move-exception v0

    .line 113
    :try_start_70
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 115
    const/4 v2, 0x2

    .line 116
    if-le v1, v2, :cond_7f

    .line 118
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_6d

    .line 123
    goto :goto_7f

    .line 124
    :goto_7b
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    .line 127
    throw v0

    .line 128
    :catch_7f
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    .line 131
    return-void
.end method

.method public send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    .registers 14

    .line 1
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_6

    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_6
    monitor-enter p2

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    add-int/lit8 v2, v0, -0x1

    .line 11
    if-gtz v0, :cond_d

    .line 13
    goto :goto_70

    .line 14
    :cond_d
    :try_start_d
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    .line 16
    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_ba
    .catchall {:try_start_d .. :try_end_10} :catchall_b8

    .line 17
    :try_start_10
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->getNextNameTrnId()I

    .line 20
    move-result v3

    .line 21
    iput v3, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 23
    new-instance v4, Ljava/lang/Integer;

    .line 25
    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_b5

    .line 28
    :try_start_1b
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 30
    iget-object v3, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 32
    invoke-virtual {v1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 35
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 37
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p1, v3, v5}, Ljcifs/netbios/NameServicePacket;->writeWireFormat([BI)I

    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 47
    iput-boolean v5, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 49
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 51
    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit16 v1, p3, 0x3e8

    .line 56
    invoke-virtual {p0, v1}, Ljcifs/netbios/NameServiceClient;->ensureOpen(I)V

    .line 59
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 61
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 63
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 66
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 68
    const/4 v3, 0x3

    .line 69
    if-le v1, v3, :cond_58

    .line 71
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 73
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 76
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    .line 78
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    .line 80
    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 82
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    .line 85
    move-result v6

    .line 86
    invoke-static {v1, v3, v5, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 89
    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1b .. :try_end_59} :catchall_b2

    .line 90
    :try_start_59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide v0
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5d} :catch_af
    .catchall {:try_start_59 .. :try_end_5d} :catchall_ac

    .line 94
    :goto_5d
    if-gtz p3, :cond_8d

    .line 96
    :try_start_5f
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 98
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    .line 103
    monitor-enter v0
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_72

    .line 104
    :try_start_67
    iget-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 106
    invoke-static {v1}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_74

    .line 112
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_8a

    .line 113
    :goto_70
    :try_start_70
    monitor-exit p2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    .line 114
    return-void

    .line 115
    :catchall_72
    move-exception p1

    .line 116
    goto :goto_cb

    .line 117
    :cond_74
    :try_start_74
    iget-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 119
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    .line 122
    move-result-object v3

    .line 123
    if-ne v1, v3, :cond_7f

    .line 125
    invoke-static {}, Ljcifs/netbios/NbtAddress;->switchWINS()Ljava/net/InetAddress;

    .line 128
    :cond_7f
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    .line 131
    move-result-object v1

    .line 132
    iput-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 134
    monitor-exit v0

    .line 135
    move v0, v2

    .line 136
    move-object v1, v4

    .line 137
    goto/16 :goto_8

    .line 139
    :catchall_8a
    move-exception p1

    .line 140
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8a

    .line 141
    :try_start_8c
    throw p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_72

    .line 142
    :cond_8d
    int-to-long v6, p3

    .line 143
    :try_start_8e
    invoke-virtual {p2, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 146
    iget-boolean p3, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 148
    if-eqz p3, :cond_a2

    .line 150
    iget p3, p1, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 152
    iget v3, p2, Ljcifs/netbios/NameServicePacket;->recordType:I
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_99} :catch_af
    .catchall {:try_start_8e .. :try_end_99} :catchall_ac

    .line 154
    if-ne p3, v3, :cond_a2

    .line 156
    :try_start_9b
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 158
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit p2
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_72

    .line 162
    return-void

    .line 163
    :cond_a2
    :try_start_a2
    iput-boolean v5, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    move-result-wide v8
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a8} :catch_af
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_ac

    .line 169
    sub-long/2addr v8, v0

    .line 170
    sub-long/2addr v6, v8

    .line 171
    long-to-int p3, v6

    .line 172
    goto :goto_5d

    .line 173
    :catchall_ac
    move-exception p1

    .line 174
    move-object v1, v4

    .line 175
    goto :goto_c5

    .line 176
    :catch_af
    move-exception p1

    .line 177
    move-object v1, v4

    .line 178
    goto :goto_bb

    .line 179
    :catchall_b2
    move-exception p1

    .line 180
    move-object v1, v4

    .line 181
    goto :goto_b6

    .line 182
    :catchall_b5
    move-exception p1

    .line 183
    :goto_b6
    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    .line 184
    :try_start_b7
    throw p1
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_b8} :catch_ba
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    .line 185
    :catchall_b8
    move-exception p1

    .line 186
    goto :goto_c5

    .line 187
    :catch_ba
    move-exception p1

    .line 188
    :goto_bb
    :try_start_bb
    new-instance p3, Ljava/io/IOException;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 197
    throw p3
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_b8

    .line 198
    :goto_c5
    :try_start_c5
    iget-object p3, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 200
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    throw p1

    .line 204
    :goto_cb
    monitor-exit p2
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_72

    .line 205
    throw p1
.end method

.method public tryClose()V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_d

    .line 9
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 12
    iput-object v2, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 14
    :cond_d
    iput-object v2, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 16
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw v1
.end method
