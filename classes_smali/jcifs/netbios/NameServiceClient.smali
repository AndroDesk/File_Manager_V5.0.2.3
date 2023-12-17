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

    const-string v0, "jcifs.netbios.snd_buf_size"

    const/16 v1, 0x240

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    const-string v0, "jcifs.netbios.rcv_buf_size"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    const-string v0, "jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    const-string v0, "jcifs.netbios.retryCount"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    const-string v0, "jcifs.netbios.retryTimeout"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    const-string v0, "jcifs.netbios.lport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    const-string v0, "jcifs.netbios.laddr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    const-string v0, "jcifs.resolveOrder"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    sget-object v1, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Ljcifs/netbios/NameServiceClient;-><init>(ILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    iput p1, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    :try_start_18
    const-string p1, "jcifs.netbios.baddr"

    const-string p2, "255.255.255.255"

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-static {p1, p2}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;
    :try_end_26
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_26} :catch_26

    :catch_26
    sget p1, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    new-array p2, p1, [B

    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    sget p2, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    new-array v1, p2, [B

    iput-object v1, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    const/16 v4, 0x89

    invoke-direct {v1, v2, p1, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    new-instance p1, Ljava/net/DatagramPacket;

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    invoke-direct {p1, v1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

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

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_61
    :goto_61
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_70

    new-array p2, p1, [I

    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    invoke-static {v3, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_ec

    :cond_70
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LMHOSTS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    add-int/lit8 v5, p1, 0x1

    aput v2, v3, p1

    :goto_84
    move p1, v5

    goto :goto_61

    :cond_86
    const-string v6, "WINS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_a0

    sget v5, Ljcifs/util/LogStream;->level:I

    if-le v5, v2, :cond_61

    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v6, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_61

    :cond_a0
    add-int/lit8 v5, p1, 0x1

    aput p2, v3, p1

    goto :goto_84

    :cond_a5
    const-string v6, "BCAST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b2

    add-int/lit8 v5, p1, 0x1

    aput v1, v3, p1

    goto :goto_84

    :cond_b2
    const-string v6, "DNS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bb

    goto :goto_61

    :cond_bb
    sget v6, Ljcifs/util/LogStream;->level:I

    if-le v6, v2, :cond_61

    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unknown resolver method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_61

    :cond_d3
    :goto_d3
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-nez p1, :cond_e2

    new-array p1, v1, [I

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v2, p1, v0

    aput v1, p1, v2

    goto :goto_ec

    :cond_e2
    new-array p1, p2, [I

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

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    :cond_d
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-nez p1, :cond_2e

    new-instance p1, Ljava/net/DatagramSocket;

    iget v0, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    invoke-direct {p1, v0, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "JCIFS-NameServiceClient"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2e
    return-void
.end method

.method public getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 7

    new-instance v0, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v0, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    new-instance v1, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v1}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    if-eqz p2, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p2

    :goto_11
    iput-object p2, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_19

    move p2, v3

    goto :goto_1a

    :cond_19
    move p2, v2

    :goto_1a
    iput-boolean p2, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz p2, :cond_25

    iget-object p2, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object p2, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    sget p2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    goto :goto_28

    :cond_25
    iput-boolean v2, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    move p2, v3

    :goto_28
    :try_start_28
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_49

    iget-boolean v2, v1, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v2, :cond_38

    iget v2, v1, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v2, :cond_38

    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    return-object p1

    :cond_38
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_41

    iget-boolean v2, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v2, :cond_41

    goto :goto_28

    :cond_41
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_49
    move-exception p2

    sget v0, Ljcifs/util/LogStream;->level:I

    if-le v0, v3, :cond_53

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_53
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 10

    new-instance v0, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v0, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    new-instance v1, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v1}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_61

    iput-object p2, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    aget-byte v2, v5, v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1b

    move v3, v4

    :cond_1b
    iput-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    :goto_1f
    :try_start_1f
    sget v3, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v0, v1, v3}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_4f

    iget-boolean v3, v1, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v3, :cond_3f

    iget v3, v1, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v3, :cond_3f

    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object p1, p1, v0

    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result p2

    iput p2, p1, Ljcifs/netbios/Name;->srcHashCode:I

    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object p1, p1, v0

    return-object p1

    :cond_3f
    add-int/2addr v2, v5

    if-lez v2, :cond_47

    iget-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v3, :cond_47

    goto :goto_1f

    :cond_47
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_4f
    move-exception p2

    sget v0, Ljcifs/util/LogStream;->level:I

    if-le v0, v4, :cond_59

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_59
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_61
    move p2, v3

    :goto_62
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    array-length v6, v5

    if-ge p2, v6, :cond_df

    :try_start_67
    aget v5, v5, p2

    if-eq v5, v4, :cond_d1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_72

    if-eq v5, v2, :cond_72

    goto/16 :goto_dc

    :cond_72
    if-ne v5, v2, :cond_89

    iget-object v5, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    const-string v6, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v5, v6, :cond_89

    iget v5, p1, Ljcifs/netbios/Name;->hexCode:I

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_89

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    iput-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    goto :goto_8f

    :cond_89
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v5, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    iput-boolean v4, v0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    :goto_8f
    sget v5, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_91} :catch_dc

    :goto_91
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_96

    goto :goto_dc

    :cond_96
    :try_start_96
    sget v5, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v0, v1, v5}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9b} :catch_bf

    :try_start_9b
    iget-boolean v5, v1, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v5, :cond_b6

    iget v5, v1, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v5, :cond_b6

    iget-object v5, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v5, v5, v3

    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v6, v0, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->hashCode()I

    move-result v6

    iput v6, v5, Ljcifs/netbios/Name;->srcHashCode:I

    iget-object v5, v1, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object p1, v5, v3

    return-object p1

    :cond_b6
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v5, v5, p2

    if-ne v5, v2, :cond_bd

    goto :goto_dc

    :cond_bd
    move v5, v6

    goto :goto_91

    :catch_bf
    move-exception v5

    sget v6, Ljcifs/util/LogStream;->level:I

    if-le v6, v4, :cond_c9

    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_c9
    new-instance v5, Ljava/net/UnknownHostException;

    iget-object v6, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d1
    invoke-static {p1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v5

    if-eqz v5, :cond_dc

    iget-object v6, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput v3, v6, Ljcifs/netbios/Name;->srcHashCode:I
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_db} :catch_dc

    return-object v5

    :catch_dc
    :cond_dc
    :goto_dc
    add-int/lit8 p2, p2, 0x1

    goto :goto_62

    :cond_df
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getNextNameTrnId()I
    .registers 4

    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    const v2, 0xffff

    and-int/2addr v0, v2

    if-nez v0, :cond_e

    iput v1, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    :cond_e
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    return v0
.end method

.method public getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 8

    new-instance v0, Ljcifs/netbios/NodeStatusResponse;

    invoke-direct {v0, p1}, Ljcifs/netbios/NodeStatusResponse;-><init>(Ljcifs/netbios/NbtAddress;)V

    new-instance v1, Ljcifs/netbios/NodeStatusRequest;

    new-instance v2, Ljcifs/netbios/Name;

    const-string v3, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljcifs/netbios/NodeStatusRequest;-><init>(Ljcifs/netbios/Name;)V

    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    :goto_1b
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_58

    :try_start_1f
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v1, v0, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_43

    iget-boolean v2, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v2, :cond_41

    iget v2, v0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v2, :cond_41

    iget-object p1, v1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    :goto_32
    iget-object p1, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    array-length v1, p1

    if-lt v4, v1, :cond_38

    return-object p1

    :cond_38
    aget-object p1, p1, v4

    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput v2, p1, Ljcifs/netbios/Name;->srcHashCode:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_41
    move v2, v3

    goto :goto_1b

    :catch_43
    move-exception v0

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4e

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4e
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .registers 6

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_a

    goto/16 :goto_7f

    :cond_a
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    sget v1, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2b

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v2, "NetBIOS: new data read from socket"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/netbios/NameServicePacket;->readNameTrnId([BI)I

    move-result v0

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NameServicePacket;

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v3, :cond_46

    goto :goto_0

    :cond_46
    monitor-enter v0
    :try_end_47
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_47} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_6f
    .catchall {:try_start_0 .. :try_end_47} :catchall_6d

    :try_start_47
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    invoke-virtual {v0, v3, v2}, Ljcifs/netbios/NameServicePacket;->readWireFormat([BI)I

    const/4 v3, 0x1

    iput-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    sget v3, Ljcifs/util/LogStream;->level:I

    if-le v3, v1, :cond_65

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_65
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_47 .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v1
    :try_end_6d
    .catch Ljava/net/SocketTimeoutException; {:try_start_6c .. :try_end_6d} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_6f
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    goto :goto_7b

    :catch_6f
    move-exception v0

    :try_start_70
    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_7f

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_6d

    goto :goto_7f

    :goto_7b
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    throw v0

    :catch_7f
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    return-void
.end method

.method public send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    .registers 14

    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    monitor-enter p2

    const/4 v1, 0x0

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_d

    goto :goto_70

    :cond_d
    :try_start_d
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_ba
    .catchall {:try_start_d .. :try_end_10} :catchall_b8

    :try_start_10
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->getNextNameTrnId()I

    move-result v3

    iput v3, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_b5

    :try_start_1b
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v3, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Ljcifs/netbios/NameServicePacket;->writeWireFormat([BI)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/DatagramPacket;->setLength(I)V

    iput-boolean v5, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v1, p3, 0x3e8

    invoke-virtual {p0, v1}, Ljcifs/netbios/NameServiceClient;->ensureOpen(I)V

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_58

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v1, v3, v5, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1b .. :try_end_59} :catchall_b2

    :try_start_59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5d} :catch_af
    .catchall {:try_start_59 .. :try_end_5d} :catchall_ac

    :goto_5d
    if-gtz p3, :cond_8d

    :try_start_5f
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_72

    :try_start_67
    iget-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {v1}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v1

    if-nez v1, :cond_74

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_8a

    :goto_70
    :try_start_70
    monitor-exit p2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    return-void

    :catchall_72
    move-exception p1

    goto :goto_cb

    :cond_74
    :try_start_74
    iget-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-ne v1, v3, :cond_7f

    invoke-static {}, Ljcifs/netbios/NbtAddress;->switchWINS()Ljava/net/InetAddress;

    :cond_7f
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    monitor-exit v0

    move v0, v2

    move-object v1, v4

    goto/16 :goto_8

    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_72

    :cond_8d
    int-to-long v6, p3

    :try_start_8e
    invoke-virtual {p2, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-boolean p3, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz p3, :cond_a2

    iget p3, p1, Ljcifs/netbios/NameServicePacket;->questionType:I

    iget v3, p2, Ljcifs/netbios/NameServicePacket;->recordType:I
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_99} :catch_af
    .catchall {:try_start_8e .. :try_end_99} :catchall_ac

    if-ne p3, v3, :cond_a2

    :try_start_9b
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_72

    return-void

    :cond_a2
    :try_start_a2
    iput-boolean v5, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a8} :catch_af
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_ac

    sub-long/2addr v8, v0

    sub-long/2addr v6, v8

    long-to-int p3, v6

    goto :goto_5d

    :catchall_ac
    move-exception p1

    move-object v1, v4

    goto :goto_c5

    :catch_af
    move-exception p1

    move-object v1, v4

    goto :goto_bb

    :catchall_b2
    move-exception p1

    move-object v1, v4

    goto :goto_b6

    :catchall_b5
    move-exception p1

    :goto_b6
    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw p1
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_b8} :catch_ba
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception p1

    goto :goto_c5

    :catch_ba
    move-exception p1

    :goto_bb
    :try_start_bb
    new-instance p3, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_b8

    :goto_c5
    :try_start_c5
    iget-object p3, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :goto_cb
    monitor-exit p2
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_72

    throw p1
.end method

.method public tryClose()V
    .registers 4

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iput-object v2, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    :cond_d
    iput-object v2, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method
