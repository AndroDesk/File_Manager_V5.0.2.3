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

    .line 1
    const v0, 0xffff

    .line 4
    new-array v0, v0, [B

    .line 6
    sput-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 8
    new-instance v0, Ljcifs/smb/SmbComNegotiate;

    .line 10
    invoke-direct {v0}, Ljcifs/smb/SmbComNegotiate;-><init>()V

    .line 13
    sput-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    .line 15
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 21
    const/4 v0, 0x0

    .line 22
    sput-object v0, Ljcifs/smb/SmbTransport;->dfsRoots:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljcifs/util/transport/Transport;-><init>()V

    .line 4
    const/16 v0, 0x200

    .line 6
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 10
    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    .line 12
    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    .line 15
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v0

    .line 21
    sget v2, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    .line 23
    int-to-long v2, v2

    .line 24
    add-long/2addr v0, v2

    .line 25
    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    .line 29
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 32
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->referrals:Ljava/util/LinkedList;

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 37
    new-instance v1, Ljava/util/LinkedList;

    .line 39
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 42
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    .line 44
    new-instance v1, Ljcifs/smb/SmbTransport$ServerData;

    .line 46
    invoke-direct {v1, p0}, Ljcifs/smb/SmbTransport$ServerData;-><init>(Ljcifs/smb/SmbTransport;)V

    .line 49
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 51
    sget v1, Ljcifs/smb/SmbConstants;->FLAGS2:I

    .line 53
    iput v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 55
    sget v1, Ljcifs/smb/SmbConstants;->MAX_MPX_COUNT:I

    .line 57
    iput v1, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 59
    sget v1, Ljcifs/smb/SmbConstants;->SND_BUF_SIZE:I

    .line 61
    iput v1, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 63
    sget v1, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    .line 65
    iput v1, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 67
    sget v1, Ljcifs/smb/SmbConstants;->CAPABILITIES:I

    .line 69
    iput v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 71
    const/4 v1, 0x0

    .line 72
    iput v1, p0, Ljcifs/smb/SmbTransport;->sessionKey:I

    .line 74
    sget-boolean v1, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    .line 76
    iput-boolean v1, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 78
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 82
    iput p2, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 84
    iput-object p3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 86
    iput p4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    .line 88
    return-void
.end method

.method public static declared-synchronized getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    .registers 6

    const-class v0, Ljcifs/smb/SmbTransport;

    monitor-enter v0

    .line 1
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

    .line 2
    :try_start_3
    sget-object v1, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_48

    .line 3
    :try_start_6
    sget v2, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    .line 4
    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 5
    :cond_f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_37

    .line 6
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

    .line 7
    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbTransport;->matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 8
    sget v4, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    if-eqz v4, :cond_34

    iget-object v5, v3, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v5, v4, :cond_f

    .line 9
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_45

    monitor-exit v0

    return-object v3

    .line 10
    :cond_37
    :goto_37
    :try_start_37
    new-instance p4, Ljcifs/smb/SmbTransport;

    invoke-direct {p4, p0, p1, p2, p3}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    .line 11
    sget-object p0, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 12
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_45

    .line 13
    monitor-exit v0

    return-object p4

    :catchall_45
    move-exception p0

    .line 14
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

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 3
    monitor-enter v0

    .line 4
    const/16 v1, 0x8b

    .line 6
    if-ne p1, v1, :cond_e

    .line 8
    :try_start_7
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->ssn139()V

    .line 11
    goto :goto_52

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    goto/16 :goto_f2

    .line 15
    :cond_e
    if-nez p1, :cond_12

    .line 17
    const/16 p1, 0x1bd

    .line 19
    :cond_12
    new-instance v1, Ljava/net/Socket;

    .line 21
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 24
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 26
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 28
    if-eqz v2, :cond_29

    .line 30
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 32
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 34
    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    .line 36
    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 39
    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 42
    :cond_29
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 44
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 46
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 48
    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 55
    sget p1, Ljcifs/smb/SmbConstants;->CONN_TIMEOUT:I

    .line 57
    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 60
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 62
    sget v1, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    .line 64
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 67
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 69
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 75
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 77
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 83
    :goto_52
    iget p1, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 85
    const/4 v1, 0x1

    .line 86
    add-int/2addr p1, v1

    .line 87
    iput p1, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 89
    const/16 v2, 0x7d00

    .line 91
    if-ne p1, v2, :cond_5e

    .line 93
    iput v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 95
    :cond_5e
    sget-object p1, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    .line 97
    iget v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 99
    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 101
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 103
    const/4 v2, 0x4

    .line 104
    invoke-virtual {p1, v1, v2}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    .line 107
    move-result v1

    .line 108
    const v3, 0xffff

    .line 111
    and-int v4, v1, v3

    .line 113
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 115
    const/4 v6, 0x0

    .line 116
    invoke-static {v4, v5, v6}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 119
    sget v4, Ljcifs/util/LogStream;->level:I

    .line 121
    const/4 v5, 0x6

    .line 122
    if-lt v4, v2, :cond_8b

    .line 124
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 126
    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 129
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 131
    if-lt p1, v5, :cond_8b

    .line 133
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 135
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 137
    invoke-static {p1, v4, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 140
    :cond_8b
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 142
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 144
    add-int/lit8 v7, v1, 0x4

    .line 146
    invoke-virtual {p1, v4, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 151
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 154
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->peekKey()Ljcifs/util/transport/Request;

    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_ea

    .line 160
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 162
    const/4 v4, 0x2

    .line 163
    invoke-static {p1, v4}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    .line 166
    move-result p1

    .line 167
    and-int/2addr p1, v3

    .line 168
    const/16 v3, 0x21

    .line 170
    if-lt p1, v3, :cond_d6

    .line 172
    add-int/lit8 v3, p1, 0x4

    .line 174
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 176
    array-length v6, v4

    .line 177
    if-gt v3, v6, :cond_d6

    .line 179
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 181
    const/16 v6, 0x24

    .line 183
    add-int/lit8 p1, p1, -0x20

    .line 185
    invoke-static {v3, v4, v6, p1}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 188
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 190
    invoke-virtual {p2, p1, v2}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 193
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 195
    if-lt p1, v2, :cond_d4

    .line 197
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 199
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 202
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 204
    if-lt p1, v5, :cond_d4

    .line 206
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 208
    iget-object p2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 210
    invoke-static {p1, p2, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 213
    :cond_d4
    monitor-exit v0

    .line 214
    return-void

    .line 215
    :cond_d6
    new-instance p2, Ljava/io/IOException;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    const-string v2, "Invalid payload size: "

    .line 221
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    throw p2

    .line 235
    :cond_ea
    new-instance p1, Ljava/io/IOException;

    .line 237
    const-string p2, "transport closed in negotiate"

    .line 239
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    throw p1

    .line 243
    :goto_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_7 .. :try_end_f3} :catchall_b

    .line 244
    throw p1
.end method


# virtual methods
.method public __getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)[Ljcifs/smb/DfsReferral;
    .registers 13

    .line 1
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "IPC$"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 14
    invoke-direct {v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 17
    new-instance v2, Ljcifs/smb/Trans2GetDfsReferral;

    .line 19
    invoke-direct {v2, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 25
    if-eqz p3, :cond_1e

    .line 27
    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 29
    if-ge v0, p3, :cond_20

    .line 31
    :cond_1e
    iget p3, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 33
    :cond_20
    new-array v0, p3, [Ljcifs/smb/DfsReferral;

    .line 35
    const/4 v2, 0x4

    .line 36
    new-array v2, v2, [Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v3

    .line 42
    sget-wide v5, Ljcifs/smb/Dfs;->TTL:J

    .line 44
    const-wide/16 v7, 0x3e8

    .line 46
    mul-long/2addr v5, v7

    .line 47
    add-long/2addr v5, v3

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_30
    if-lt v3, p3, :cond_33

    .line 51
    return-object v0

    .line 52
    :cond_33
    new-instance v4, Ljcifs/smb/DfsReferral;

    .line 54
    invoke-direct {v4}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 57
    iget-boolean v7, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 59
    iput-boolean v7, v4, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 61
    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 63
    aget-object v7, v7, v3

    .line 65
    iget v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    .line 67
    int-to-long v7, v7

    .line 68
    iput-wide v7, v4, Ljcifs/smb/DfsReferral;->ttl:J

    .line 70
    iput-wide v5, v4, Ljcifs/smb/DfsReferral;->expiration:J

    .line 72
    const-string v7, ""

    .line 74
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v7

    .line 78
    const/4 v8, 0x1

    .line 79
    if-eqz v7, :cond_61

    .line 81
    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 83
    aget-object v7, v7, v3

    .line 85
    iget-object v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 94
    move-result-object v7

    .line 95
    iput-object v7, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 97
    goto :goto_78

    .line 98
    :cond_61
    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 100
    aget-object v7, v7, v3

    .line 102
    iget-object v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 104
    invoke-virtual {p0, v7, v2}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    aget-object v7, v2, v8

    .line 109
    iput-object v7, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 111
    const/4 v7, 0x2

    .line 112
    aget-object v7, v2, v7

    .line 114
    iput-object v7, v4, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 116
    const/4 v7, 0x3

    .line 117
    aget-object v7, v2, v7

    .line 119
    iput-object v7, v4, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 121
    :goto_78
    iget v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 123
    iput v7, v4, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 125
    aput-object v4, v0, v3

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_30
.end method

.method public checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 7

    .line 1
    iget v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 3
    invoke-static {v0}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    .line 6
    move-result v0

    .line 7
    iput v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 9
    if-eqz v0, :cond_46

    .line 11
    const/4 v1, 0x0

    .line 12
    sparse-switch v0, :sswitch_data_54

    .line 15
    packed-switch v0, :pswitch_data_76

    .line 18
    new-instance p1, Ljcifs/smb/SmbException;

    .line 20
    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 22
    invoke-direct {p1, p2, v1}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    .line 25
    throw p1

    .line 26
    :sswitch_19
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 28
    if-eqz v0, :cond_36

    .line 30
    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p0, v0, v2, v3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2e

    .line 39
    new-instance p1, Ljcifs/smb/SmbException;

    .line 41
    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 43
    invoke-direct {p1, p2, v1}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    .line 46
    throw p1

    .line 47
    :cond_2e
    sget-object p2, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 49
    iget-object p1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 51
    invoke-virtual {p2, p1, v0}, Ljcifs/smb/Dfs;->insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V

    .line 54
    throw v0

    .line 55
    :cond_36
    new-instance p1, Ljcifs/smb/SmbException;

    .line 57
    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 59
    invoke-direct {p1, p2, v1}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    .line 62
    throw p1

    .line 63
    :pswitch_3e  #0xc000006d, 0xc000006e, 0xc000006f, 0xc0000070, 0xc0000071, 0xc0000072
    :sswitch_3e
    new-instance p1, Ljcifs/smb/SmbAuthException;

    .line 65
    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 67
    invoke-direct {p1, p2}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    .line 70
    throw p1

    .line 71
    :cond_46
    :sswitch_46
    iget-boolean p1, p2, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    .line 73
    if-nez p1, :cond_4b

    .line 75
    return-void

    .line 76
    :cond_4b
    new-instance p1, Ljcifs/smb/SmbException;

    .line 78
    const-string p2, "Signature verification failed."

    .line 80
    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1

    .line 84
    nop

    .line 85
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

    .line 119
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

    .line 1
    :try_start_0
    sget v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-super {p0, v0, v1}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_6
    .catch Ljcifs/util/transport/TransportException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-void

    .line 8
    :catch_7
    move-exception v0

    .line 9
    new-instance v1, Ljcifs/smb/SmbException;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    const-string v3, "Failed to connect: "

    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    throw v1
.end method

.method public dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    .line 1
    array-length v0, p2

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    :goto_a
    if-ne v2, v0, :cond_13

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    aput-object p1, p2, v0

    .line 19
    return-void

    .line 20
    :cond_13
    if-eq v3, v1, :cond_1d

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x5c

    .line 28
    if-ne v5, v6, :cond_29

    .line 30
    :cond_1d
    add-int/lit8 v5, v2, 0x1

    .line 32
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    aput-object v4, p2, v2

    .line 38
    add-int/lit8 v2, v3, 0x1

    .line 40
    move v4, v2

    .line 41
    move v2, v5

    .line 42
    :cond_29
    add-int/lit8 v5, v3, 0x1

    .line 44
    if-lt v3, v1, :cond_39

    .line 46
    :goto_2d
    array-length p1, p2

    .line 47
    if-lt v2, p1, :cond_31

    .line 49
    return-void

    .line 50
    :cond_31
    add-int/lit8 p1, v2, 0x1

    .line 52
    const-string v0, ""

    .line 54
    aput-object v0, p2, v2

    .line 56
    move v2, p1

    .line 57
    goto :goto_2d

    .line 58
    :cond_39
    move v3, v5

    .line 59
    goto :goto_a
.end method

.method public doConnect()V
    .registers 5

    .line 1
    new-instance v0, Ljcifs/smb/SmbComNegotiateResponse;

    .line 3
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 5
    invoke-direct {v0, v1}, Ljcifs/smb/SmbComNegotiateResponse;-><init>(Ljcifs/smb/SmbTransport$ServerData;)V

    .line 8
    const/16 v1, 0x8b

    .line 10
    const/16 v2, 0x1bd

    .line 12
    :try_start_b
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 14
    invoke-direct {p0, v3, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V
    :try_end_10
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_10} :catch_1f
    .catch Ljava/net/NoRouteToHostException; {:try_start_b .. :try_end_10} :catch_11

    .line 17
    goto :goto_2c

    .line 18
    :catch_11
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 20
    if-eqz v3, :cond_19

    .line 22
    if-ne v3, v2, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v1, v2

    .line 26
    :cond_19
    :goto_19
    iput v1, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 28
    invoke-direct {p0, v1, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    .line 31
    goto :goto_2c

    .line 32
    :catch_1f
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 34
    if-eqz v3, :cond_27

    .line 36
    if-ne v3, v2, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, v2

    .line 40
    :cond_27
    :goto_27
    iput v1, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 42
    invoke-direct {p0, v1, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    .line 45
    :goto_2c
    iget v0, v0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    .line 47
    const/16 v1, 0xa

    .line 49
    if-gt v0, v1, :cond_c7

    .line 51
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 53
    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    .line 55
    const/high16 v2, -0x80000000

    .line 57
    and-int/2addr v1, v2

    .line 58
    if-eq v1, v2, :cond_5e

    .line 60
    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 62
    const/16 v1, 0x8

    .line 64
    if-eq v0, v1, :cond_5e

    .line 66
    sget v0, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    .line 68
    if-eqz v0, :cond_46

    .line 70
    goto :goto_5e

    .line 71
    :cond_46
    new-instance v0, Ljcifs/smb/SmbException;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    const-string v2, "Unexpected encryption key length: "

    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 82
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 94
    throw v0

    .line 95
    :cond_5e
    :goto_5e
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 97
    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 105
    iget-boolean v1, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    .line 107
    if-nez v1, :cond_7e

    .line 109
    iget-boolean v1, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    .line 111
    if-eqz v1, :cond_75

    .line 113
    sget-boolean v1, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    .line 115
    if-eqz v1, :cond_75

    .line 117
    goto :goto_7e

    .line 118
    :cond_75
    iget v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 120
    const v3, 0xfffb

    .line 123
    and-int/2addr v1, v3

    .line 124
    iput v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 126
    goto :goto_84

    .line 127
    :cond_7e
    :goto_7e
    iget v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 129
    or-int/lit8 v1, v1, 0x4

    .line 131
    iput v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 133
    :goto_84
    iget v1, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 135
    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    .line 137
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 140
    move-result v0

    .line 141
    iput v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 143
    const/4 v1, 0x1

    .line 144
    if-ge v0, v1, :cond_93

    .line 146
    iput v1, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 148
    :cond_93
    iget v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 150
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 152
    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 157
    move-result v0

    .line 158
    iput v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 160
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 162
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 164
    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    .line 166
    and-int/2addr v0, v1

    .line 167
    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 169
    and-int/2addr v1, v2

    .line 170
    if-ne v1, v2, :cond_ae

    .line 172
    or-int/2addr v0, v2

    .line 173
    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 175
    :cond_ae
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 177
    and-int/lit8 v1, v0, 0x4

    .line 179
    if-nez v1, :cond_c6

    .line 181
    sget-boolean v1, Ljcifs/smb/SmbConstants;->FORCE_UNICODE:Z

    .line 183
    if-eqz v1, :cond_bd

    .line 185
    or-int/lit8 v0, v0, 0x4

    .line 187
    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 189
    goto :goto_c6

    .line 190
    :cond_bd
    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 193
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 195
    and-int/lit16 v0, v0, 0x7fff

    .line 197
    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 199
    :cond_c6
    :goto_c6
    return-void

    .line 200
    :cond_c7
    new-instance v0, Ljcifs/smb/SmbException;

    .line 202
    const-string v1, "This client does not support the negotiated dialect."

    .line 204
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 207
    throw v0
.end method

.method public doDisconnect(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    const/4 v1, 0x0

    .line 8
    :try_start_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_28

    .line 14
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 16
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    .line 19
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 21
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 24
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 29
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 31
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_32

    .line 34
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 36
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 38
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 40
    return-void

    .line 41
    :cond_28
    :try_start_28
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljcifs/smb/SmbSession;

    .line 47
    invoke-virtual {v2, p1}, Ljcifs/smb/SmbSession;->logoff(Z)V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    .line 50
    goto :goto_6

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 54
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 56
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 58
    throw p1
.end method

.method public doRecv(Ljcifs/util/transport/Response;)V
    .registers 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljcifs/smb/ServerMessageBlock;

    .line 4
    iget-boolean v1, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 6
    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 8
    iget v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 10
    const/high16 v2, -0x80000000

    .line 12
    and-int/2addr v1, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v1, v2, :cond_11

    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v1, v3

    .line 19
    :goto_12
    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 21
    sget-object v1, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 23
    monitor-enter v1

    .line 24
    :try_start_17
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 26
    const/16 v4, 0x24

    .line 28
    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    .line 35
    move-result v2

    .line 36
    const v3, 0xffff

    .line 39
    and-int/2addr v2, v3

    .line 40
    const/16 v3, 0x21

    .line 42
    if-lt v2, v3, :cond_a9

    .line 44
    add-int/lit8 v3, v2, 0x4

    .line 46
    iget v5, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 48
    if-gt v3, v5, :cond_a9

    .line 50
    const/16 v3, 0x9

    .line 52
    invoke-static {v1, v3}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 55
    move-result v3

    .line 56
    and-int/lit8 v3, v3, -0x1

    .line 58
    iget-byte v5, v0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 60
    const/16 v6, 0x2e

    .line 62
    const/4 v7, 0x4

    .line 63
    if-ne v5, v6, :cond_75

    .line 65
    if-eqz v3, :cond_47

    .line 67
    const v5, -0x7ffffffb

    .line 70
    if-ne v3, v5, :cond_75

    .line 72
    :cond_47
    move-object v3, v0

    .line 73
    check-cast v3, Ljcifs/smb/SmbComReadAndXResponse;

    .line 75
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 77
    const/16 v6, 0x1b

    .line 79
    invoke-static {v5, v1, v4, v6}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 82
    invoke-virtual {v0, v1, v7}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 85
    iget v4, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    .line 87
    add-int/lit8 v4, v4, -0x3b

    .line 89
    iget v5, v3, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 91
    if-lez v5, :cond_67

    .line 93
    if-lez v4, :cond_67

    .line 95
    if-ge v4, v7, :cond_67

    .line 97
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 99
    const/16 v6, 0x3f

    .line 101
    invoke-static {v5, v1, v6, v4}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 104
    :cond_67
    iget v4, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 106
    if-lez v4, :cond_89

    .line 108
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 110
    iget-object v6, v3, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 112
    iget v3, v3, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    .line 114
    invoke-static {v5, v6, v3, v4}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 117
    goto :goto_89

    .line 118
    :cond_75
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 120
    add-int/lit8 v5, v2, -0x20

    .line 122
    invoke-static {v3, v1, v4, v5}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 125
    invoke-virtual {v0, v1, v7}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 128
    instance-of v3, v0, Ljcifs/smb/SmbComTransactionResponse;

    .line 130
    if-eqz v3, :cond_89

    .line 132
    move-object v3, v0

    .line 133
    check-cast v3, Ljcifs/smb/SmbComTransactionResponse;

    .line 135
    invoke-virtual {v3}, Ljcifs/smb/SmbComTransactionResponse;->nextElement()Ljava/lang/Object;

    .line 138
    :cond_89
    :goto_89
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 140
    if-eqz v3, :cond_94

    .line 142
    iget v4, v0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 144
    if-nez v4, :cond_94

    .line 146
    invoke-virtual {v3, v1, v7, v0}, Ljcifs/smb/SigningDigest;->verify([BILjcifs/smb/ServerMessageBlock;)Z

    .line 149
    :cond_94
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 151
    if-lt v0, v7, :cond_a7

    .line 153
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 155
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 158
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 160
    const/4 v0, 0x6

    .line 161
    if-lt p1, v0, :cond_a7

    .line 163
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 165
    invoke-static {p1, v1, v7, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 168
    :cond_a7
    monitor-exit v1

    .line 169
    return-void

    .line 170
    :cond_a9
    new-instance p1, Ljava/io/IOException;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    const-string v3, "Invalid payload size: "

    .line 176
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    throw p1

    .line 190
    :catchall_bd
    move-exception p1

    .line 191
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_17 .. :try_end_bf} :catchall_bd

    .line 192
    throw p1
.end method

.method public doSend(Ljcifs/util/transport/Request;)V
    .registers 7

    .line 1
    sget-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p1, v0, v1}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    .line 10
    move-result v2

    .line 11
    const v3, 0xffff

    .line 14
    and-int/2addr v3, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v3, v0, v4}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 19
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 21
    if-lt v3, v1, :cond_31

    .line 23
    :cond_16
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 25
    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 28
    instance-of v3, p1, Ljcifs/smb/AndXServerMessageBlock;

    .line 30
    if-eqz v3, :cond_25

    .line 32
    check-cast p1, Ljcifs/smb/AndXServerMessageBlock;

    .line 34
    iget-object p1, p1, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 36
    if-nez p1, :cond_16

    .line 38
    :cond_25
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 40
    const/4 v3, 0x6

    .line 41
    if-lt p1, v3, :cond_31

    .line 43
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 45
    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 47
    invoke-static {p1, v3, v1, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 50
    :cond_31
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 52
    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 54
    add-int/2addr v2, v1

    .line 55
    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    .line 62
    throw p1
.end method

.method public doSend0(Ljcifs/util/transport/Request;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend(Ljcifs/util/transport/Request;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 4
    return-void

    .line 5
    :catch_4
    move-exception p1

    .line 6
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 8
    const/4 v1, 0x2

    .line 9
    if-le v0, v1, :cond_f

    .line 11
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    :try_start_10
    invoke-virtual {p0, v0}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 20
    goto :goto_1a

    .line 21
    :catch_14
    move-exception v0

    .line 22
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 27
    :goto_1a
    throw p1
.end method

.method public doSkip()V
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    .line 7
    move-result v0

    .line 8
    const v1, 0xffff

    .line 11
    and-int/2addr v0, v1

    .line 12
    const/16 v1, 0x21

    .line 14
    if-lt v0, v1, :cond_1f

    .line 16
    add-int/lit8 v1, v0, 0x4

    .line 18
    iget v2, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 20
    if-le v1, v2, :cond_16

    .line 22
    goto :goto_1f

    .line 23
    :cond_16
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 25
    add-int/lit8 v0, v0, -0x20

    .line 27
    int-to-long v2, v0

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    :goto_1f
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 34
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 37
    move-result v1

    .line 38
    int-to-long v1, v1

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 42
    :goto_29
    return-void
.end method

.method public getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    .registers 13

    .line 1
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "IPC$"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 14
    invoke-direct {v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 17
    new-instance v3, Ljcifs/smb/Trans2GetDfsReferral;

    .line 19
    invoke-direct {v3, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v3, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 25
    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 27
    if-nez v0, :cond_1d

    .line 29
    return-object v2

    .line 30
    :cond_1d
    if-eqz p3, :cond_21

    .line 32
    if-ge v0, p3, :cond_22

    .line 34
    :cond_21
    move p3, v0

    .line 35
    :cond_22
    new-instance v0, Ljcifs/smb/DfsReferral;

    .line 37
    invoke-direct {v0}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 40
    const/4 v2, 0x4

    .line 41
    new-array v2, v2, [Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    move-result-wide v3

    .line 47
    sget-wide v5, Ljcifs/smb/Dfs;->TTL:J

    .line 49
    const-wide/16 v7, 0x3e8

    .line 51
    mul-long/2addr v5, v7

    .line 52
    add-long/2addr v5, v3

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_35
    iget-boolean v4, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 56
    iput-boolean v4, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 58
    iget-object v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 60
    aget-object v4, v4, v3

    .line 62
    iget v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    .line 64
    int-to-long v7, v4

    .line 65
    iput-wide v7, v0, Ljcifs/smb/DfsReferral;->ttl:J

    .line 67
    iput-wide v5, v0, Ljcifs/smb/DfsReferral;->expiration:J

    .line 69
    const-string v4, ""

    .line 71
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 75
    const/4 v7, 0x1

    .line 76
    if-eqz v4, :cond_5e

    .line 78
    iget-object v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 80
    aget-object v4, v4, v3

    .line 82
    iget-object v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 84
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 92
    iput-object v4, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 94
    goto :goto_75

    .line 95
    :cond_5e
    iget-object v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 97
    aget-object v4, v4, v3

    .line 99
    iget-object v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v4, v2}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    aget-object v4, v2, v7

    .line 106
    iput-object v4, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 108
    const/4 v4, 0x2

    .line 109
    aget-object v4, v2, v4

    .line 111
    iput-object v4, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 113
    const/4 v4, 0x3

    .line 114
    aget-object v4, v2, v4

    .line 116
    iput-object v4, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 118
    :goto_75
    iget v4, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 120
    iput v4, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 124
    if-ne v3, p3, :cond_80

    .line 126
    iget-object p1, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 128
    return-object p1

    .line 129
    :cond_80
    new-instance v4, Ljcifs/smb/DfsReferral;

    .line 131
    invoke-direct {v4}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 134
    invoke-virtual {v0, v4}, Ljcifs/smb/DfsReferral;->append(Ljcifs/smb/DfsReferral;)V

    .line 137
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 139
    goto :goto_35
.end method

.method public declared-synchronized getSmbSession()Ljcifs/smb/SmbSession;
    .registers 3

    monitor-enter p0

    .line 1
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

    .line 2
    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 3
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_55

    .line 4
    sget v0, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    if-lez v0, :cond_3d

    iget-wide v1, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3d

    int-to-long v0, v0

    add-long/2addr v0, v3

    .line 5
    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 6
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 7
    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_3d

    .line 8
    :cond_2c
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    .line 9
    iget-wide v5, v1, Ljcifs/smb/SmbSession;->expiration:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_25

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljcifs/smb/SmbSession;->logoff(Z)V

    goto :goto_25

    .line 11
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

    .line 12
    iput-object p0, v6, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 13
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_65

    .line 14
    monitor-exit p0

    return-object v6

    .line 15
    :cond_55
    :try_start_55
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    .line 16
    invoke-virtual {v1, p1}, Ljcifs/smb/SmbSession;->matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    iput-object p1, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_65

    .line 18
    monitor-exit p0

    return-object v1

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasCapability(I)Z
    .registers 4

    .line 1
    :try_start_0
    sget v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_f

    .line 7
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 9
    and-int/2addr v0, p1

    .line 10
    if-ne v0, p1, :cond_d

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :catch_f
    move-exception p1

    .line 17
    new-instance v0, Ljcifs/smb/SmbException;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw v0
.end method

.method public isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 9
    if-nez v0, :cond_16

    .line 11
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 13
    if-eq p1, v0, :cond_16

    .line 15
    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public makeKey(Ljcifs/util/transport/Request;)V
    .registers 5

    .line 1
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 7
    const/16 v2, 0x7d00

    .line 9
    if-ne v0, v2, :cond_c

    .line 11
    iput v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 13
    :cond_c
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    .line 15
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 17
    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 19
    return-void
.end method

.method public matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .registers 7

    .line 1
    if-nez p5, :cond_6

    .line 3
    invoke-virtual {p1}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    .line 6
    move-result-object p5

    .line 7
    :cond_6
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    move-result p5

    .line 15
    if-eqz p5, :cond_38

    .line 17
    :cond_10
    iget-object p5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 19
    invoke-virtual {p1, p5}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_38

    .line 25
    if-eqz p2, :cond_26

    .line 27
    iget p1, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 29
    if-eq p2, p1, :cond_26

    .line 31
    const/16 p5, 0x1bd

    .line 33
    if-ne p2, p5, :cond_38

    .line 35
    const/16 p2, 0x8b

    .line 37
    if-ne p1, p2, :cond_38

    .line 39
    :cond_26
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 41
    if-eq p3, p1, :cond_32

    .line 43
    if-eqz p3, :cond_38

    .line 45
    invoke-virtual {p3, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_38

    .line 51
    :cond_32
    iget p1, p0, Ljcifs/smb/SmbTransport;->localPort:I

    .line 53
    if-ne p4, p1, :cond_38

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public peekKey()Ljcifs/util/transport/Request;
    .registers 9

    .line 1
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 3
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ge v0, v3, :cond_e

    .line 14
    return-object v1

    .line 15
    :cond_e
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 17
    aget-byte v4, v0, v2

    .line 19
    const/16 v5, -0x7b

    .line 21
    if-eq v4, v5, :cond_0

    .line 23
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 25
    const/16 v5, 0x20

    .line 27
    invoke-static {v4, v0, v3, v5}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 30
    move-result v0

    .line 31
    if-ge v0, v5, :cond_21

    .line 33
    return-object v1

    .line 34
    :cond_21
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 36
    if-lt v0, v3, :cond_3f

    .line 38
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    const-string v6, "New data read: "

    .line 44
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 59
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 61
    invoke-static {v0, v4, v3, v5}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 64
    :cond_3f
    :goto_3f
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 66
    aget-byte v4, v0, v2

    .line 68
    const/4 v5, -0x1

    .line 69
    if-nez v4, :cond_75

    .line 71
    const/4 v4, 0x1

    .line 72
    aget-byte v4, v0, v4

    .line 74
    if-nez v4, :cond_75

    .line 76
    aget-byte v4, v0, v3

    .line 78
    if-ne v4, v5, :cond_75

    .line 80
    const/4 v4, 0x5

    .line 81
    aget-byte v4, v0, v4

    .line 83
    const/16 v6, 0x53

    .line 85
    if-ne v4, v6, :cond_75

    .line 87
    const/4 v4, 0x6

    .line 88
    aget-byte v4, v0, v4

    .line 90
    const/16 v6, 0x4d

    .line 92
    if-ne v4, v6, :cond_75

    .line 94
    const/4 v4, 0x7

    .line 95
    aget-byte v4, v0, v4

    .line 97
    const/16 v6, 0x42

    .line 99
    if-ne v4, v6, :cond_75

    .line 101
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    .line 103
    const/16 v2, 0x22

    .line 105
    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    .line 108
    move-result v0

    .line 109
    const v2, 0xffff

    .line 112
    and-int/2addr v0, v2

    .line 113
    iput v0, v1, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 115
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    .line 117
    return-object v0

    .line 118
    :cond_75
    move v0, v2

    .line 119
    :goto_76
    const/16 v4, 0x23

    .line 121
    if-lt v0, v4, :cond_89

    .line 123
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 125
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 128
    move-result v0

    .line 129
    if-ne v0, v5, :cond_83

    .line 131
    return-object v1

    .line 132
    :cond_83
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 134
    int-to-byte v0, v0

    .line 135
    aput-byte v0, v5, v4

    .line 137
    goto :goto_3f

    .line 138
    :cond_89
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 140
    add-int/lit8 v6, v0, 0x1

    .line 142
    aget-byte v7, v4, v6

    .line 144
    aput-byte v7, v4, v0

    .line 146
    move v0, v6

    .line 147
    goto :goto_76
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 4
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 6
    iget v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 11
    iget-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 13
    iput-boolean v0, p1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 15
    iput-object p2, p1, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    .line 17
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 19
    if-nez v0, :cond_18

    .line 21
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 23
    iput-object v0, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 25
    :cond_18
    if-nez p2, :cond_1e

    .line 27
    :try_start_1a
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    .line 30
    return-void

    .line 31
    :cond_1e
    instance-of v0, p1, Ljcifs/smb/SmbComTransaction;

    .line 33
    if-eqz v0, :cond_e3

    .line 35
    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 37
    iput-byte v0, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 39
    move-object v0, p1

    .line 40
    check-cast v0, Ljcifs/smb/SmbComTransaction;

    .line 42
    move-object v1, p2

    .line 43
    check-cast v1, Ljcifs/smb/SmbComTransactionResponse;

    .line 45
    iget v2, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 47
    iput v2, v0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    .line 49
    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->reset()V
    :try_end_33
    .catch Ljcifs/smb/SmbException; {:try_start_1a .. :try_end_33} :catch_fc
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_33} :catch_f1

    .line 52
    :try_start_33
    invoke-static {v0, v1}, Ljcifs/smb/BufferCache;->getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V

    .line 55
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_55

    .line 64
    new-instance v2, Ljcifs/smb/SmbComBlankResponse;

    .line 66
    invoke-direct {v2}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    .line 69
    sget v3, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    .line 71
    int-to-long v3, v3

    .line 72
    invoke-super {p0, v0, v2, v3, v4}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V

    .line 75
    iget v3, v2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 77
    if-eqz v3, :cond_51

    .line 79
    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 82
    :cond_51
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 85
    goto :goto_58

    .line 86
    :cond_55
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->makeKey(Ljcifs/util/transport/Request;)V

    .line 89
    :goto_58
    monitor-enter p0
    :try_end_59
    .catchall {:try_start_33 .. :try_end_59} :catchall_d7

    .line 90
    const/4 v2, 0x0

    .line 91
    :try_start_5a
    iput-boolean v2, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 93
    iput-boolean v2, v1, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_d4

    .line 95
    :try_start_5e
    iget-object v2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 97
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_63
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    .line 103
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_72

    .line 109
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    if-nez v2, :cond_63

    .line 115
    :cond_72
    sget v2, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    .line 117
    int-to-long v2, v2

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    move-result-wide v4

    .line 122
    add-long/2addr v4, v2

    .line 123
    iput-wide v4, v1, Ljcifs/util/transport/Response;->expiration:J

    .line 125
    :goto_7c
    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->hasMoreElements()Z

    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_9a

    .line 131
    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 133
    if-eqz v2, :cond_89

    .line 135
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_89} :catch_c7
    .catchall {:try_start_5e .. :try_end_89} :catchall_c5

    .line 138
    :cond_89
    :try_start_89
    iget-object v2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 140
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_d4

    .line 144
    :try_start_8f
    iget-object v0, v0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 146
    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 149
    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 151
    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V
    :try_end_99
    .catch Ljcifs/smb/SmbException; {:try_start_8f .. :try_end_99} :catch_fc
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_99} :catch_f1

    .line 154
    goto :goto_ed

    .line 155
    :cond_9a
    :try_start_9a
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 158
    iget-wide v2, v1, Ljcifs/util/transport/Response;->expiration:J

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    move-result-wide v4

    .line 164
    sub-long/2addr v2, v4

    .line 165
    const-wide/16 v4, 0x0

    .line 167
    cmp-long v4, v2, v4

    .line 169
    if-lez v4, :cond_ab

    .line 171
    goto :goto_7c

    .line 172
    :cond_ab
    new-instance p1, Ljcifs/util/transport/TransportException;

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, " timedout waiting for response to "

    .line 184
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p2

    .line 194
    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 197
    throw p1
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_c5} :catch_c7
    .catchall {:try_start_9a .. :try_end_c5} :catchall_c5

    .line 198
    :catchall_c5
    move-exception p1

    .line 199
    goto :goto_ce

    .line 200
    :catch_c7
    move-exception p1

    .line 201
    :try_start_c8
    new-instance p2, Ljcifs/util/transport/TransportException;

    .line 203
    invoke-direct {p2, p1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 206
    throw p2
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_c5

    .line 207
    :goto_ce
    :try_start_ce
    iget-object p2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    .line 209
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    throw p1

    .line 213
    :catchall_d4
    move-exception p1

    .line 214
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_d4

    .line 215
    :try_start_d6
    throw p1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d7

    .line 216
    :catchall_d7
    move-exception p1

    .line 217
    :try_start_d8
    iget-object p2, v0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 219
    invoke-static {p2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 222
    iget-object p2, v1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 224
    invoke-static {p2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 227
    throw p1

    .line 228
    :cond_e3
    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 230
    iput-byte v0, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 232
    sget v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    .line 234
    int-to-long v0, v0

    .line 235
    invoke-super {p0, p1, p2, v0, v1}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    :try_end_ed
    .catch Ljcifs/smb/SmbException; {:try_start_d8 .. :try_end_ed} :catch_fc
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_ed} :catch_f1

    .line 238
    :goto_ed
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 241
    return-void

    .line 242
    :catch_f1
    move-exception p1

    .line 243
    new-instance p2, Ljcifs/smb/SmbException;

    .line 245
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    move-result-object v0

    .line 249
    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    throw p2

    .line 253
    :catch_fc
    move-exception p1

    .line 254
    throw p1
.end method

.method public ssn139()V
    .registers 8

    .line 1
    new-instance v0, Ljcifs/netbios/Name;

    .line 3
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 5
    invoke-virtual {v1}, Ljcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x20

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    :goto_e
    new-instance v1, Ljava/net/Socket;

    .line 17
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 20
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 22
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 24
    if-eqz v2, :cond_25

    .line 26
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 28
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 30
    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    .line 32
    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 35
    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 38
    :cond_25
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 40
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 42
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 44
    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    const/16 v4, 0x8b

    .line 50
    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 53
    sget v3, Ljcifs/smb/SmbConstants;->CONN_TIMEOUT:I

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 58
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 60
    sget v2, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    .line 62
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 65
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 67
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 73
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 75
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 81
    new-instance v1, Ljcifs/netbios/SessionRequestPacket;

    .line 83
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalName()Ljcifs/netbios/Name;

    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v1, v0, v2}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    .line 90
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 92
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-virtual {v1, v3, v4}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    .line 98
    move-result v1

    .line 99
    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 102
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 104
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 106
    const/4 v3, 0x4

    .line 107
    invoke-static {v1, v2, v4, v3}, Ljcifs/util/transport/Transport;->readn(Ljava/io/InputStream;[BII)I

    .line 110
    move-result v1

    .line 111
    if-lt v1, v3, :cond_ee

    .line 113
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 115
    aget-byte v1, v1, v4

    .line 117
    and-int/lit16 v1, v1, 0xff

    .line 119
    const/4 v2, -0x1

    .line 120
    const/4 v5, 0x2

    .line 121
    const/4 v6, 0x1

    .line 122
    if-eq v1, v2, :cond_e5

    .line 124
    const/16 v2, 0x82

    .line 126
    if-eq v1, v2, :cond_cb

    .line 128
    const/16 v3, 0x83

    .line 130
    if-ne v1, v3, :cond_c2

    .line 132
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 134
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 137
    move-result v1

    .line 138
    and-int/lit16 v1, v1, 0xff

    .line 140
    const/16 v3, 0x80

    .line 142
    if-eq v1, v3, :cond_9b

    .line 144
    if-ne v1, v2, :cond_92

    .line 146
    goto :goto_9b

    .line 147
    :cond_92
    invoke-virtual {p0, v6}, Ljcifs/util/transport/Transport;->disconnect(Z)V

    .line 150
    new-instance v0, Ljcifs/netbios/NbtException;

    .line 152
    invoke-direct {v0, v5, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    .line 155
    throw v0

    .line 156
    :cond_9b
    :goto_9b
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 158
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 161
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 163
    invoke-virtual {v1}, Ljcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    iput-object v1, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 169
    if-eqz v1, :cond_ac

    .line 171
    goto/16 :goto_e

    .line 173
    :cond_ac
    new-instance v0, Ljava/io/IOException;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "Failed to establish session with "

    .line 179
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 194
    throw v0

    .line 195
    :cond_c2
    invoke-virtual {p0, v6}, Ljcifs/util/transport/Transport;->disconnect(Z)V

    .line 198
    new-instance v0, Ljcifs/netbios/NbtException;

    .line 200
    invoke-direct {v0, v5, v4}, Ljcifs/netbios/NbtException;-><init>(II)V

    .line 203
    throw v0

    .line 204
    :cond_cb
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 206
    if-lt v0, v3, :cond_e4

    .line 208
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    const-string v2, "session established ok with "

    .line 214
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    :cond_e4
    return-void

    .line 230
    :cond_e5
    invoke-virtual {p0, v6}, Ljcifs/util/transport/Transport;->disconnect(Z)V

    .line 233
    new-instance v0, Ljcifs/netbios/NbtException;

    .line 235
    invoke-direct {v0, v5, v2}, Ljcifs/netbios/NbtException;-><init>(II)V

    .line 238
    throw v0

    .line 239
    :cond_ee
    :try_start_ee
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 241
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f3} :catch_f3

    .line 244
    :catch_f3
    new-instance v0, Ljcifs/smb/SmbException;

    .line 246
    const-string v1, "EOF during NetBIOS session request"

    .line 248
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 251
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0}, Ljcifs/util/transport/Transport;->toString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, "["

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ":"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 31
    const-string v2, "]"

    .line 33
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
