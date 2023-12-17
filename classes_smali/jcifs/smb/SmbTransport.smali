.class public Ljcifs/smb/SmbTransport;
.super Ljcifs/util/transport/Transport;
.source "SmbTransport.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbTransport$ServerData;
    }
.end annotation


# static fields
.field public static final BUF:[B

.field public static final NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

.field public static dfsRoots:Ljava/util/HashMap;

.field public static log:Ljcifs/util/LogStream;


# instance fields
.field public address:Ljcifs/UniAddress;

.field public capabilities:I

.field public digest:Ljcifs/smb/SigningDigest;

.field public flags2:I

.field public in:Ljava/io/InputStream;

.field public key:Ljcifs/smb/SmbComBlankResponse;

.field public localAddr:Ljava/net/InetAddress;

.field public localPort:I

.field public maxMpxCount:I

.field public mid:I

.field public out:Ljava/io/OutputStream;

.field public port:I

.field public rcv_buf_size:I

.field public referrals:Ljava/util/LinkedList;

.field public sbuf:[B

.field public server:Ljcifs/smb/SmbTransport$ServerData;

.field public sessionExpiration:J

.field public sessionKey:I

.field public sessions:Ljava/util/LinkedList;

.field public snd_buf_size:I

.field public socket:Ljava/net/Socket;

.field public tconHostName:Ljava/lang/String;

.field public useUnicode:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0xffff

    new-array v0, v0, [B

    sput-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    new-instance v0, Ljcifs/smb/SmbComNegotiate;

    invoke-direct {v0}, Ljcifs/smb/SmbComNegotiate;-><init>()V

    sput-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const/4 v0, 0x0

    sput-object v0, Ljcifs/smb/SmbTransport;->dfsRoots:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V
    .registers 9

    invoke-direct {p0}, Ljcifs/util/transport/Transport;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->referrals:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    new-instance v1, Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v1, p0}, Ljcifs/smb/SmbTransport$ServerData;-><init>(Ljcifs/smb/SmbTransport;)V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    sget v1, Ljcifs/smb/SmbConstants;->FLAGS2:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    sget v1, Ljcifs/smb/SmbConstants;->MAX_MPX_COUNT:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    sget v1, Ljcifs/smb/SmbConstants;->SND_BUF_SIZE:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    sget v1, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    sget v1, Ljcifs/smb/SmbConstants;->CAPABILITIES:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/smb/SmbTransport;->sessionKey:I

    sget-boolean v1, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    iput-boolean v1, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    iput p2, p0, Ljcifs/smb/SmbTransport;->port:I

    iput-object p3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iput p4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    return-void
.end method

.method public static declared-synchronized getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    .registers 6

    const-class v0, Ljcifs/smb/SmbTransport;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljcifs/smb/SmbConstants;->LADDR:Ljava/net/InetAddress;

    sget v2, Ljcifs/smb/SmbConstants;->LPORT:I

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    .registers 15

    const-class v0, Ljcifs/smb/SmbTransport;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_48

    :try_start_6
    sget v2, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_37

    :cond_16
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljcifs/smb/SmbTransport;

    move-object v4, v3

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbTransport;->matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget v4, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    if-eqz v4, :cond_34

    iget-object v5, v3, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v5, v4, :cond_f

    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_45

    monitor-exit v0

    return-object v3

    :cond_37
    :goto_37
    :try_start_37
    new-instance p4, Ljcifs/smb/SmbTransport;

    invoke-direct {p4, p0, p1, p2, p3}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    sget-object p0, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_45

    monitor-exit v0

    return-object p4

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private negotiate(ILjcifs/smb/ServerMessageBlock;)V
    .registers 11

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    monitor-enter v0

    const/16 v1, 0x8b

    if-ne p1, v1, :cond_e

    :try_start_7
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->ssn139()V

    goto :goto_52

    :catchall_b
    move-exception p1

    goto/16 :goto_f2

    :cond_e
    if-nez p1, :cond_12

    const/16 p1, 0x1bd

    :cond_12
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_29

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_29
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget p1, Ljcifs/smb/SmbConstants;->CONN_TIMEOUT:I

    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v1, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    :goto_52
    iget p1, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v2, 0x7d00

    if-ne p1, v2, :cond_5e

    iput v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    :cond_5e
    sget-object p1, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    move-result v1

    const v3, 0xffff

    and-int v4, v1, v3

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x6

    if-lt v4, v2, :cond_8b

    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v5, :cond_8b

    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {p1, v4, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_8b
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {p1, v4, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object p1

    if-eqz p1, :cond_ea

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x2

    invoke-static {p1, v4}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result p1

    and-int/2addr p1, v3

    const/16 v3, 0x21

    if-lt p1, v3, :cond_d6

    add-int/lit8 v3, p1, 0x4

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    array-length v6, v4

    if-gt v3, v6, :cond_d6

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    const/16 v6, 0x24

    add-int/lit8 p1, p1, -0x20

    invoke-static {v3, v4, v6, p1}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-virtual {p2, p1, v2}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v2, :cond_d4

    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v5, :cond_d4

    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object p2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {p1, p2, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_d4
    monitor-exit v0

    return-void

    :cond_d6
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid payload size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_ea
    new-instance p1, Ljava/io/IOException;

    const-string p2, "transport closed in negotiate"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_7 .. :try_end_f3} :catchall_b

    throw p1
.end method


# virtual methods
.method public __getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)[Ljcifs/smb/DfsReferral;
    .registers 13

    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    const-string v1, "IPC$"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    new-instance v1, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    new-instance v2, Ljcifs/smb/Trans2GetDfsReferral;

    invoke-direct {v2, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p3, :cond_1e

    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v0, p3, :cond_20

    :cond_1e
    iget p3, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    :cond_20
    new-array v0, p3, [Ljcifs/smb/DfsReferral;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    const/4 v3, 0x0

    :goto_30
    if-lt v3, p3, :cond_33

    return-object v0

    :cond_33
    new-instance v4, Ljcifs/smb/DfsReferral;

    invoke-direct {v4}, Ljcifs/smb/DfsReferral;-><init>()V

    iget-boolean v7, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v7, v4, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v7, v7, v3

    iget v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v7, v7

    iput-wide v7, v4, Ljcifs/smb/DfsReferral;->ttl:J

    iput-wide v5, v4, Ljcifs/smb/DfsReferral;->expiration:J

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_61

    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v7, v7, v3

    iget-object v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    goto :goto_78

    :cond_61
    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v7, v7, v3

    iget-object v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v7, v2}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v7, v2, v8

    iput-object v7, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v7, v2, v7

    iput-object v7, v4, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v7, v2, v7

    iput-object v7, v4, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    :goto_78
    iget v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v7, v4, Ljcifs/smb/DfsReferral;->pathConsumed:I

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30
.end method

.method public checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 7

    iget v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v0}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v0

    iput v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v0, :cond_46

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_54

    packed-switch v0, :pswitch_data_76

    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2, v1}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :sswitch_19
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eqz v0, :cond_36

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2, v1}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_2e
    sget-object p2, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object p1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljcifs/smb/Dfs;->insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V

    throw v0

    :cond_36
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2, v1}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :pswitch_3e  #0xc000006d, 0xc000006e, 0xc000006f, 0xc0000070, 0xc0000071, 0xc0000072
    :sswitch_3e
    new-instance p1, Ljcifs/smb/SmbAuthException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw p1

    :cond_46
    :sswitch_46
    iget-boolean p1, p2, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    if-nez p1, :cond_4b

    return-void

    :cond_4b
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Signature verification failed."

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_54
    .sparse-switch
        -0x7ffffffb -> :sswitch_46
        -0x3fffffea -> :sswitch_46
        -0x3fffffde -> :sswitch_3e
        -0x3fffff96 -> :sswitch_3e
        -0x3ffffe74 -> :sswitch_3e
        -0x3ffffdcc -> :sswitch_3e
        -0x3ffffda9 -> :sswitch_19
        0x0 -> :sswitch_46
    .end sparse-switch

    :pswitch_data_76
    .packed-switch -0x3fffff93
        :pswitch_3e  #c000006d
        :pswitch_3e  #c000006e
        :pswitch_3e  #c000006f
        :pswitch_3e  #c0000070
        :pswitch_3e  #c0000071
        :pswitch_3e  #c0000072
    .end packed-switch
.end method

.method public connect()V
    .registers 5

    :try_start_0
    sget v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-super {p0, v0, v1}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_6
    .catch Ljcifs/util/transport/TransportException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_a
    if-ne v2, v0, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    return-void

    :cond_13
    if-eq v3, v1, :cond_1d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_29

    :cond_1d
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    add-int/lit8 v2, v3, 0x1

    move v4, v2

    move v2, v5

    :cond_29
    add-int/lit8 v5, v3, 0x1

    if-lt v3, v1, :cond_39

    :goto_2d
    array-length p1, p2

    if-lt v2, p1, :cond_31

    return-void

    :cond_31
    add-int/lit8 p1, v2, 0x1

    const-string v0, ""

    aput-object v0, p2, v2

    move v2, p1

    goto :goto_2d

    :cond_39
    move v3, v5

    goto :goto_a
.end method

.method public doConnect()V
    .registers 5

    new-instance v0, Ljcifs/smb/SmbComNegotiateResponse;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v0, v1}, Ljcifs/smb/SmbComNegotiateResponse;-><init>(Ljcifs/smb/SmbTransport$ServerData;)V

    const/16 v1, 0x8b

    const/16 v2, 0x1bd

    :try_start_b
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V
    :try_end_10
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_10} :catch_1f
    .catch Ljava/net/NoRouteToHostException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_2c

    :catch_11
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v3, :cond_19

    if-ne v3, v2, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :cond_19
    :goto_19
    iput v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v1, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_2c

    :catch_1f
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v3, :cond_27

    if-ne v3, v2, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :cond_27
    :goto_27
    iput v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v1, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    :goto_2c
    iget v0, v0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_c7

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_5e

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5e

    sget v0, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    if-eqz v0, :cond_46

    goto :goto_5e

    :cond_46
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected encryption key length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    :goto_5e
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v1, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    if-nez v1, :cond_7e

    iget-boolean v1, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    if-eqz v1, :cond_75

    sget-boolean v1, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    if-eqz v1, :cond_75

    goto :goto_7e

    :cond_75
    iget v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    const v3, 0xfffb

    and-int/2addr v1, v3

    iput v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_84

    :cond_7e
    :goto_7e
    iget v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    :goto_84
    iget v1, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_93

    iput v1, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    :cond_93
    iget v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_ae

    or-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    :cond_ae
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_c6

    sget-boolean v1, Ljcifs/smb/SmbConstants;->FORCE_UNICODE:Z

    if-eqz v1, :cond_bd

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    goto :goto_c6

    :cond_bd
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit16 v0, v0, 0x7fff

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    :cond_c6
    :goto_c6
    return-void

    :cond_c7
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "This client does not support the negotiated dialect."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doDisconnect(Z)V
    .registers 5

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_6
    const/4 v1, 0x0

    :try_start_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_28

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_32

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    return-void

    :cond_28
    :try_start_28
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/smb/SmbSession;

    invoke-virtual {v2, p1}, Ljcifs/smb/SmbSession;->logoff(Z)V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    goto :goto_6

    :catchall_32
    move-exception p1

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    throw p1
.end method

.method public doRecv(Ljcifs/util/transport/Response;)V
    .registers 10

    move-object v0, p1

    check-cast v0, Ljcifs/smb/ServerMessageBlock;

    iget-boolean v1, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iget v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    sget-object v1, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v1

    :try_start_17
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v4, 0x24

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    const/16 v3, 0x21

    if-lt v2, v3, :cond_a9

    add-int/lit8 v3, v2, 0x4

    iget v5, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-gt v3, v5, :cond_a9

    const/16 v3, 0x9

    invoke-static {v1, v3}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v3

    and-int/lit8 v3, v3, -0x1

    iget-byte v5, v0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v6, 0x2e

    const/4 v7, 0x4

    if-ne v5, v6, :cond_75

    if-eqz v3, :cond_47

    const v5, -0x7ffffffb

    if-ne v3, v5, :cond_75

    :cond_47
    move-object v3, v0

    check-cast v3, Ljcifs/smb/SmbComReadAndXResponse;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    const/16 v6, 0x1b

    invoke-static {v5, v1, v4, v6}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    invoke-virtual {v0, v1, v7}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    iget v4, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    add-int/lit8 v4, v4, -0x3b

    iget v5, v3, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-lez v5, :cond_67

    if-lez v4, :cond_67

    if-ge v4, v7, :cond_67

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    const/16 v6, 0x3f

    invoke-static {v5, v1, v6, v4}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    :cond_67
    iget v4, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-lez v4, :cond_89

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v6, v3, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v3, v3, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    invoke-static {v5, v6, v3, v4}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    goto :goto_89

    :cond_75
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    add-int/lit8 v5, v2, -0x20

    invoke-static {v3, v1, v4, v5}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    invoke-virtual {v0, v1, v7}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    instance-of v3, v0, Ljcifs/smb/SmbComTransactionResponse;

    if-eqz v3, :cond_89

    move-object v3, v0

    check-cast v3, Ljcifs/smb/SmbComTransactionResponse;

    invoke-virtual {v3}, Ljcifs/smb/SmbComTransactionResponse;->nextElement()Ljava/lang/Object;

    :cond_89
    :goto_89
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v3, :cond_94

    iget v4, v0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v4, :cond_94

    invoke-virtual {v3, v1, v7, v0}, Ljcifs/smb/SigningDigest;->verify([BILjcifs/smb/ServerMessageBlock;)Z

    :cond_94
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v7, :cond_a7

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x6

    if-lt p1, v0, :cond_a7

    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-static {p1, v1, v7, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_a7
    monitor-exit v1

    return-void

    :cond_a9
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid payload size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_bd
    move-exception p1

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_17 .. :try_end_bf} :catchall_bd

    throw p1
.end method

.method public doSend(Ljcifs/util/transport/Request;)V
    .registers 7

    sget-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v0

    :try_start_3
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_31

    :cond_16
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    instance-of v3, p1, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_25

    check-cast p1, Ljcifs/smb/AndXServerMessageBlock;

    iget-object p1, p1, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-nez p1, :cond_16

    :cond_25
    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x6

    if-lt p1, v3, :cond_31

    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    invoke-static {p1, v3, v1, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_31
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    add-int/2addr v2, v1

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public doSend0(Ljcifs/util/transport/Request;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend(Ljcifs/util/transport/Request;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    invoke-virtual {p0, v0}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_1a
    throw p1
.end method

.method public doSkip()V
    .registers 5

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1f

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v1, v2, :cond_16

    goto :goto_1f

    :cond_16
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    add-int/lit8 v0, v0, -0x20

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_29

    :cond_1f
    :goto_1f
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :goto_29
    return-void
.end method

.method public getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    .registers 13

    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    const-string v1, "IPC$"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    new-instance v1, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    new-instance v3, Ljcifs/smb/Trans2GetDfsReferral;

    invoke-direct {v3, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-nez v0, :cond_1d

    return-object v2

    :cond_1d
    if-eqz p3, :cond_21

    if-ge v0, p3, :cond_22

    :cond_21
    move p3, v0

    :cond_22
    new-instance v0, Ljcifs/smb/DfsReferral;

    invoke-direct {v0}, Ljcifs/smb/DfsReferral;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    const/4 v3, 0x0

    :goto_35
    iget-boolean v4, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v4, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    iget-object v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v4, v4, v3

    iget v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v7, v4

    iput-wide v7, v0, Ljcifs/smb/DfsReferral;->ttl:J

    iput-wide v5, v0, Ljcifs/smb/DfsReferral;->expiration:J

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_5e

    iget-object v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v4, v4, v3

    iget-object v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    goto :goto_75

    :cond_5e
    iget-object v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v4, v4, v3

    iget-object v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v4, v2, v7

    iput-object v4, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v2, v4

    iput-object v4, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v2, v4

    iput-object v4, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    :goto_75
    iget v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v4, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p3, :cond_80

    iget-object p1, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    return-object p1

    :cond_80
    new-instance v4, Ljcifs/smb/DfsReferral;

    invoke-direct {v4}, Ljcifs/smb/DfsReferral;-><init>()V

    invoke-virtual {v0, v4}, Ljcifs/smb/DfsReferral;->append(Ljcifs/smb/DfsReferral;)V

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_35
.end method

.method public declared-synchronized getSmbSession()Ljcifs/smb/SmbSession;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_55

    sget v0, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    if-lez v0, :cond_3d

    iget-wide v1, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3d

    int-to-long v0, v0

    add-long/2addr v0, v3

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_3d

    :cond_2c
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    iget-wide v5, v1, Ljcifs/smb/SmbSession;->expiration:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_25

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbSession;->logoff(Z)V

    goto :goto_25

    :cond_3d
    :goto_3d
    new-instance v6, Ljcifs/smb/SmbSession;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    iget v2, p0, Ljcifs/smb/SmbTransport;->port:I

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbSession;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    iput-object p0, v6, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_65

    monitor-exit p0

    return-object v6

    :cond_55
    :try_start_55
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    invoke-virtual {v1, p1}, Ljcifs/smb/SmbSession;->matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object p1, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_65

    monitor-exit p0

    return-object v1

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasCapability(I)Z
    .registers 4

    :try_start_0
    sget v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_f

    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1

    :catch_f
    move-exception p1

    new-instance v0, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3

    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-nez v0, :cond_16

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq p1, v0, :cond_16

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public makeKey(Ljcifs/util/transport/Request;)V
    .registers 5

    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v2, 0x7d00

    if-ne v0, v2, :cond_c

    iput v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    :cond_c
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    return-void
.end method

.method public matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .registers 7

    if-nez p5, :cond_6

    invoke-virtual {p1}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object p5

    :cond_6
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_38

    :cond_10
    iget-object p5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {p1, p5}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    if-eqz p2, :cond_26

    iget p1, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eq p2, p1, :cond_26

    const/16 p5, 0x1bd

    if-ne p2, p5, :cond_38

    const/16 p2, 0x8b

    if-ne p1, p2, :cond_38

    :cond_26
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eq p3, p1, :cond_32

    if-eqz p3, :cond_38

    invoke-virtual {p3, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_32
    iget p1, p0, Ljcifs/smb/SmbTransport;->localPort:I

    if-ne p4, p1, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method public peekKey()Ljcifs/util/transport/Request;
    .registers 9

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, v3, :cond_e

    return-object v1

    :cond_e
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v0, v2

    const/16 v5, -0x7b

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    const/16 v5, 0x20

    invoke-static {v4, v0, v3, v5}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    move-result v0

    if-ge v0, v5, :cond_21

    return-object v1

    :cond_21
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v3, :cond_3f

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "New data read: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v0, v4, v3, v5}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_3f
    :goto_3f
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v0, v2

    const/4 v5, -0x1

    if-nez v4, :cond_75

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    if-nez v4, :cond_75

    aget-byte v4, v0, v3

    if-ne v4, v5, :cond_75

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    const/16 v6, 0x53

    if-ne v4, v6, :cond_75

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    const/16 v6, 0x4d

    if-ne v4, v6, :cond_75

    const/4 v4, 0x7

    aget-byte v4, v0, v4

    const/16 v6, 0x42

    if-ne v4, v6, :cond_75

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    const/16 v2, 0x22

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    iput v0, v1, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    return-object v0

    :cond_75
    move v0, v2

    :goto_76
    const/16 v4, 0x23

    if-lt v0, v4, :cond_89

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_83

    return-object v1

    :cond_83
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    int-to-byte v0, v0

    aput-byte v0, v5, v4

    goto :goto_3f

    :cond_89
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v7, v4, v6

    aput-byte v7, v4, v0

    move v0, v6

    goto :goto_76
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 9

    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/2addr v0, v1

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v0, p1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iput-object p2, p1, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-nez v0, :cond_18

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v0, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    :cond_18
    if-nez p2, :cond_1e

    :try_start_1a
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    return-void

    :cond_1e
    instance-of v0, p1, Ljcifs/smb/SmbComTransaction;

    if-eqz v0, :cond_e3

    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v0, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    move-object v1, p2

    check-cast v1, Ljcifs/smb/SmbComTransactionResponse;

    iget v2, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v2, v0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->reset()V
    :try_end_33
    .catch Ljcifs/smb/SmbException; {:try_start_1a .. :try_end_33} :catch_fc
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_33} :catch_f1

    :try_start_33
    invoke-static {v0, v1}, Ljcifs/smb/BufferCache;->getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V

    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_55

    new-instance v2, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v2}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    sget v3, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    int-to-long v3, v3

    invoke-super {p0, v0, v2, v3, v4}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V

    iget v3, v2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v3, :cond_51

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_51
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    goto :goto_58

    :cond_55
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->makeKey(Ljcifs/util/transport/Request;)V

    :goto_58
    monitor-enter p0
    :try_end_59
    .catchall {:try_start_33 .. :try_end_59} :catchall_d7

    const/4 v2, 0x0

    :try_start_5a
    iput-boolean v2, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    iput-boolean v2, v1, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_d4

    :try_start_5e
    iget-object v2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_63

    :cond_72
    sget v2, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v1, Ljcifs/util/transport/Response;->expiration:J

    :goto_7c
    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_9a

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v2, :cond_89

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_89} :catch_c7
    .catchall {:try_start_5e .. :try_end_89} :catchall_c5

    :cond_89
    :try_start_89
    iget-object v2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_d4

    :try_start_8f
    iget-object v0, v0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V
    :try_end_99
    .catch Ljcifs/smb/SmbException; {:try_start_8f .. :try_end_99} :catch_fc
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_99} :catch_f1

    goto :goto_ed

    :cond_9a
    :try_start_9a
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-wide v2, v1, Ljcifs/util/transport/Response;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_ab

    goto :goto_7c

    :cond_ab
    new-instance p1, Ljcifs/util/transport/TransportException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timedout waiting for response to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_c5} :catch_c7
    .catchall {:try_start_9a .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception p1

    goto :goto_ce

    :catch_c7
    move-exception p1

    :try_start_c8
    new-instance p2, Ljcifs/util/transport/TransportException;

    invoke-direct {p2, p1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_c5

    :goto_ce
    :try_start_ce
    iget-object p2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :catchall_d4
    move-exception p1

    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_d4

    :try_start_d6
    throw p1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d7

    :catchall_d7
    move-exception p1

    :try_start_d8
    iget-object p2, v0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {p2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    iget-object p2, v1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {p2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw p1

    :cond_e3
    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v0, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    sget v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-super {p0, p1, p2, v0, v1}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    :try_end_ed
    .catch Ljcifs/smb/SmbException; {:try_start_d8 .. :try_end_ed} :catch_fc
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_ed} :catch_f1

    :goto_ed
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void

    :catch_f1
    move-exception p1

    new-instance p2, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_fc
    move-exception p1

    throw p1
.end method

.method public ssn139()V
    .registers 8

    new-instance v0, Ljcifs/netbios/Name;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_e
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_25

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_25
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8b

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v3, Ljcifs/smb/SmbConstants;->CONN_TIMEOUT:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v2, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    new-instance v1, Ljcifs/netbios/SessionRequestPacket;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalName()Ljcifs/netbios/Name;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v4, v3}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    move-result v1

    if-lt v1, v3, :cond_ee

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    const/4 v2, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_e5

    const/16 v2, 0x82

    if-eq v1, v2, :cond_cb

    const/16 v3, 0x83

    if-ne v1, v3, :cond_c2

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x80

    if-eq v1, v3, :cond_9b

    if-ne v1, v2, :cond_92

    goto :goto_9b

    :cond_92
    invoke-virtual {p0, v6}, Ljcifs/util/transport/Transport;->disconnect(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v5, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :cond_9b
    :goto_9b
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-eqz v1, :cond_ac

    goto/16 :goto_e

    :cond_ac
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to establish session with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c2
    invoke-virtual {p0, v6}, Ljcifs/util/transport/Transport;->disconnect(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v5, v4}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :cond_cb
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v3, :cond_e4

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session established ok with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e4
    return-void

    :cond_e5
    invoke-virtual {p0, v6}, Ljcifs/util/transport/Transport;->disconnect(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v5, v2}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :cond_ee
    :try_start_ee
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f3} :catch_f3

    :catch_f3
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF during NetBIOS session request"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/util/transport/Transport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
