.class public final Ljcifs/smb/SmbSession;
.super Ljava/lang/Object;
.source "SmbSession.java"


# static fields
.field private static final CACHE_POLICY:I

.field private static final DOMAIN:Ljava/lang/String;

.field private static final LOGON_SHARE:Ljava/lang/String;

.field private static final LOOKUP_RESP_LIMIT:I

.field private static final USERNAME:Ljava/lang/String;

.field public static dc_list:[Ljcifs/netbios/NbtAddress;

.field public static dc_list_counter:I

.field public static dc_list_expiration:J


# instance fields
.field private address:Ljcifs/UniAddress;

.field public auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field public connectionState:I

.field public expiration:J

.field private localAddr:Ljava/net/InetAddress;

.field private localPort:I

.field public netbiosName:Ljava/lang/String;

.field private port:I

.field public transport:Ljcifs/smb/SmbTransport;

.field public trees:Ljava/util/Vector;

.field public uid:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "jcifs.smb.client.logonShare"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    .line 10
    const-string v0, "jcifs.netbios.lookupRespLimit"

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    sput v0, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    .line 19
    const-string v0, "jcifs.smb.client.domain"

    .line 21
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    .line 27
    const-string v0, "jcifs.smb.client.username"

    .line 29
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    .line 35
    const-string v0, "jcifs.netbios.cachePolicy"

    .line 37
    const/16 v2, 0x258

    .line 39
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 42
    move-result v0

    .line 43
    mul-int/lit8 v0, v0, 0x3c

    .line 45
    sput v0, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    .line 47
    sput-object v1, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 7
    iput-object v0, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    .line 11
    iput p2, p0, Ljcifs/smb/SmbSession;->port:I

    .line 13
    iput-object p3, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    .line 15
    iput p4, p0, Ljcifs/smb/SmbSession;->localPort:I

    .line 17
    iput-object p5, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 19
    new-instance p1, Ljava/util/Vector;

    .line 21
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 24
    iput-object p1, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    .line 26
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 29
    return-void
.end method

.method public static getChallenge(Ljcifs/UniAddress;)[B
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getChallenge(Ljcifs/UniAddress;I)[B
    .registers 2

    .line 2
    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 4
    iget-object p0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p0, p0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    return-object p0
.end method

.method public static getChallengeForDomain()Ljcifs/smb/NtlmChallenge;
    .registers 15

    .line 1
    sget-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_af

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v1

    .line 10
    const/4 v3, 0x1

    .line 11
    :goto_a
    sget-wide v4, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 13
    cmp-long v4, v4, v1

    .line 15
    const-wide/32 v5, 0xdbba0

    .line 18
    const/4 v7, 0x2

    .line 19
    const/4 v8, 0x0

    .line 20
    if-gez v4, :cond_3d

    .line 22
    sget-object v4, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    .line 24
    const/16 v9, 0x1c

    .line 26
    invoke-static {v4, v9, v8, v8}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    .line 29
    move-result-object v4

    .line 30
    sget v9, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    .line 32
    int-to-long v9, v9

    .line 33
    const-wide/16 v11, 0x3e8

    .line 35
    mul-long/2addr v9, v11

    .line 36
    add-long/2addr v9, v1

    .line 37
    sput-wide v9, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 39
    if-eqz v4, :cond_2e

    .line 41
    array-length v9, v4

    .line 42
    if-lez v9, :cond_2e

    .line 44
    sput-object v4, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 46
    goto :goto_3d

    .line 47
    :cond_2e
    add-long v9, v1, v5

    .line 49
    sput-wide v9, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 51
    sget v4, Ljcifs/util/LogStream;->level:I

    .line 53
    if-lt v4, v7, :cond_3d

    .line 55
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 57
    const-string v9, "Failed to retrieve DC list from WINS"

    .line 59
    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    :cond_3d
    :goto_3d
    sget-object v4, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 64
    array-length v4, v4

    .line 65
    sget v9, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    .line 67
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result v4

    .line 71
    const/4 v9, 0x0

    .line 72
    :goto_47
    if-lt v9, v4, :cond_6d

    .line 74
    const-wide/16 v7, 0x0

    .line 76
    sput-wide v7, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 78
    add-int/lit8 v4, v3, -0x1

    .line 80
    if-lez v3, :cond_53

    .line 82
    move v3, v4

    .line 83
    goto :goto_a

    .line 84
    :cond_53
    add-long/2addr v1, v5

    .line 85
    sput-wide v1, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 87
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_ac

    .line 88
    new-instance v0, Ljava/net/UnknownHostException;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    const-string v2, "Failed to negotiate with a suitable domain controller for "

    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object v2, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0

    .line 110
    :cond_6d
    :try_start_6d
    sget v10, Ljcifs/smb/SmbSession;->dc_list_counter:I

    .line 112
    add-int/lit8 v11, v10, 0x1

    .line 114
    sput v11, Ljcifs/smb/SmbSession;->dc_list_counter:I

    .line 116
    rem-int/2addr v10, v4

    .line 117
    sget-object v11, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 119
    aget-object v11, v11, v10
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_ac

    .line 121
    if-eqz v11, :cond_a9

    .line 123
    :try_start_7a
    invoke-static {v11}, Ljcifs/smb/SmbSession;->interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;

    .line 126
    move-result-object v1
    :try_end_7e
    .catch Ljcifs/smb/SmbException; {:try_start_7a .. :try_end_7e} :catch_80
    .catchall {:try_start_7a .. :try_end_7e} :catchall_ac

    .line 127
    :try_start_7e
    monitor-exit v0

    .line 128
    return-object v1

    .line 129
    :catch_80
    move-exception v11

    .line 130
    sget v12, Ljcifs/util/LogStream;->level:I

    .line 132
    if-lt v12, v7, :cond_a5

    .line 134
    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 136
    new-instance v13, Ljava/lang/StringBuilder;

    .line 138
    const-string v14, "Failed validate DC: "

    .line 140
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object v14, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 145
    aget-object v14, v14, v10

    .line 147
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v13

    .line 154
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    sget v12, Ljcifs/util/LogStream;->level:I

    .line 159
    if-le v12, v7, :cond_a5

    .line 161
    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 163
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 166
    :cond_a5
    sget-object v11, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 168
    aput-object v8, v11, v10

    .line 170
    :cond_a9
    add-int/lit8 v9, v9, 0x1

    .line 172
    goto :goto_47

    .line 173
    :catchall_ac
    move-exception v1

    .line 174
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_7e .. :try_end_ae} :catchall_ac

    .line 175
    throw v1

    .line 176
    :cond_af
    new-instance v0, Ljcifs/smb/SmbException;

    .line 178
    const-string v1, "A domain was not specified"

    .line 180
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method private static interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;
    .registers 5

    .line 1
    new-instance v0, Ljcifs/UniAddress;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-static {v0, p0}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    .line 13
    if-nez v1, :cond_1e

    .line 15
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 18
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 20
    const/4 v2, 0x3

    .line 21
    if-lt v1, v2, :cond_2e

    .line 23
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 25
    const-string v2, "Default credentials (jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation."

    .line 27
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    goto :goto_2e

    .line 31
    :cond_1e
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 33
    invoke-virtual {p0, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v2, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 47
    :cond_2e
    :goto_2e
    new-instance v1, Ljcifs/smb/NtlmChallenge;

    .line 49
    iget-object p0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 51
    iget-object p0, p0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 53
    invoke-direct {v1, p0, v0}, Ljcifs/smb/NtlmChallenge;-><init>([BLjcifs/UniAddress;)V

    .line 56
    return-object v1
.end method

.method public static logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 5

    .line 2
    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object p0

    sget-object p1, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object p0

    if-nez p1, :cond_15

    .line 3
    invoke-virtual {p0, p2, p2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_28

    .line 4
    :cond_15
    new-instance p1, Ljcifs/smb/Trans2FindFirst2;

    const/16 p2, 0x10

    const-string v0, "\\"

    const-string v1, "*"

    invoke-direct {p1, v0, v1, p2}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    new-instance p2, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {p2}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_28
    return-void
.end method

.method public static logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_5

    .line 4
    :try_start_3
    const-string p1, "IPC$"

    .line 6
    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    .line 8
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 11
    move-result-object v0

    .line 12
    :cond_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1d

    .line 18
    new-instance v0, Ljcifs/smb/SmbTree;

    .line 20
    invoke-direct {v0, p0, p1, p2}, Ljcifs/smb/SmbTree;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2b

    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljcifs/smb/SmbTree;

    .line 36
    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2b

    .line 40
    if-eqz v2, :cond_b

    .line 42
    monitor-exit p0

    .line 43
    return-object v1

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method

.method public logoff(Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_c

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v1, 0x3

    .line 14
    iput v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 19
    iget-object v2, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    .line 21
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 24
    move-result-object v2

    .line 25
    :goto_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_42

    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez p1, :cond_39

    .line 34
    iget-object p1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 36
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 38
    iget p1, p1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 40
    if-eqz p1, :cond_39

    .line 42
    new-instance p1, Ljcifs/smb/SmbComLogoffAndX;

    .line 44
    invoke-direct {p1, v1}, Ljcifs/smb/SmbComLogoffAndX;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 47
    iget v3, p0, Ljcifs/smb/SmbSession;->uid:I

    .line 49
    iput v3, p1, Ljcifs/smb/ServerMessageBlock;->uid:I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_4c

    .line 51
    :try_start_32
    iget-object v3, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 53
    invoke-virtual {v3, p1, v1}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_37
    .catch Ljcifs/smb/SmbException; {:try_start_32 .. :try_end_37} :catch_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_4c

    .line 56
    :catch_37
    :try_start_37
    iput v2, p0, Ljcifs/smb/SmbSession;->uid:I

    .line 58
    :cond_39
    iput v2, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 60
    iget-object p1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :cond_42
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljcifs/smb/SmbTree;

    .line 73
    invoke-virtual {v3, p1}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    .line 76
    goto :goto_18

    .line 77
    :catchall_4c
    move-exception p1

    .line 78
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_4c

    .line 79
    throw p1
.end method

.method public matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 3
    if-eq v0, p1, :cond_c

    .line 5
    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    if-eqz p2, :cond_a

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_8
    iput-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 11
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v1

    .line 15
    sget v3, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    .line 17
    int-to-long v3, v3

    .line 18
    add-long/2addr v1, v3

    .line 19
    iput-wide v1, p0, Ljcifs/smb/SmbSession;->expiration:J

    .line 21
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 24
    if-eqz p2, :cond_1f

    .line 26
    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 28
    if-eqz v1, :cond_1f

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_1f
    instance-of v1, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    .line 34
    if-eqz v1, :cond_4b

    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Ljcifs/smb/SmbComTreeConnectAndX;

    .line 39
    iget-object v2, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 41
    if-eqz v2, :cond_4b

    .line 43
    iget-object v2, v1, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 45
    const-string v3, "\\IPC$"

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4b

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    const-string v3, "\\\\"

    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "\\IPC$"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    iput-object v2, v1, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 76
    :cond_4b
    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    .line 78
    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 80
    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 82
    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_67

    .line 84
    :try_start_53
    iget-object v1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 86
    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_58
    .catch Ljcifs/smb/SmbException; {:try_start_53 .. :try_end_58} :catch_5a
    .catchall {:try_start_53 .. :try_end_58} :catchall_67

    .line 89
    :try_start_58
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :catch_5a
    move-exception p2

    .line 92
    instance-of v1, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    .line 94
    if-eqz v1, :cond_63

    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, v1}, Ljcifs/smb/SmbSession;->logoff(Z)V

    .line 100
    :cond_63
    const/4 v1, 0x0

    .line 101
    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 103
    throw p2

    .line 104
    :catchall_67
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_67

    .line 106
    throw p1
.end method

.method public sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    .line 6
    move-result-object v2

    .line 7
    monitor-enter v2

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_8
    new-array v0, v3, [B

    .line 11
    :goto_a
    iget v4, v1, Ljcifs/smb/SmbSession;->connectionState:I

    .line 13
    const/4 v5, 0x2

    .line 14
    if-nez v4, :cond_1d3

    .line 16
    const/4 v4, 0x1

    .line 17
    iput v4, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1f1

    .line 19
    :try_start_12
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 21
    invoke-virtual {v6}, Ljcifs/smb/SmbTransport;->connect()V

    .line 24
    sget-object v6, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 26
    sget v6, Ljcifs/util/LogStream;->level:I

    .line 28
    const/4 v7, 0x4

    .line 29
    if-lt v6, v7, :cond_41

    .line 31
    sget-object v6, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    .line 35
    const-string v9, "sessionSetup: accountName="

    .line 37
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v9, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 42
    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v9, ",primaryDomain="

    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v9, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 54
    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    :cond_41
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 68
    const/16 v6, 0xa

    .line 70
    const/4 v8, 0x0

    .line 71
    move-object v9, v0

    .line 72
    move v10, v6

    .line 73
    move-object v0, v8

    .line 74
    move-object v11, v0

    .line 75
    :goto_4a
    const v12, -0x3fffff93  # -2.000026f

    .line 78
    const/16 v13, 0x14

    .line 80
    if-eq v10, v6, :cond_10d

    .line 82
    if-ne v10, v13, :cond_f9

    .line 84
    if-nez v11, :cond_67

    .line 86
    iget-object v11, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 88
    iget v11, v11, Ljcifs/smb/SmbTransport;->flags2:I

    .line 90
    and-int/2addr v11, v7

    .line 91
    if-eqz v11, :cond_5e

    .line 93
    move v11, v4

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v11, v3

    .line 96
    :goto_5f
    new-instance v13, Ljcifs/smb/NtlmContext;

    .line 98
    iget-object v14, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 100
    invoke-direct {v13, v14, v11}, Ljcifs/smb/NtlmContext;-><init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V

    .line 103
    move-object v11, v13

    .line 104
    :cond_67
    sget v13, Ljcifs/util/LogStream;->level:I

    .line 106
    if-lt v13, v7, :cond_70

    .line 108
    sget-object v13, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 110
    invoke-virtual {v13, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 113
    :cond_70
    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->isEstablished()Z

    .line 116
    move-result v13

    .line 117
    if-eqz v13, :cond_85

    .line 119
    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->getNetbiosName()Ljava/lang/String;

    .line 122
    move-result-object v10

    .line 123
    iput-object v10, v1, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 125
    iput v5, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_7e
    .catch Ljcifs/smb/SmbException; {:try_start_12 .. :try_end_7e} :catch_1c6
    .catchall {:try_start_12 .. :try_end_7e} :catchall_1c4

    .line 127
    move-object/from16 v14, p1

    .line 129
    move-object/from16 v15, p2

    .line 131
    :goto_82
    move v10, v3

    .line 132
    goto/16 :goto_1af

    .line 134
    :cond_85
    :try_start_85
    array-length v13, v9

    .line 135
    invoke-virtual {v11, v9, v3, v13}, Ljcifs/smb/NtlmContext;->initSecContext([BII)[B

    .line 138
    move-result-object v9
    :try_end_8a
    .catch Ljcifs/smb/SmbException; {:try_start_85 .. :try_end_8a} :catch_f0
    .catchall {:try_start_85 .. :try_end_8a} :catchall_1c4

    .line 139
    if-eqz v9, :cond_ea

    .line 141
    :try_start_8c
    new-instance v13, Ljcifs/smb/SmbComSessionSetupAndX;

    .line 143
    invoke-direct {v13, v1, v8, v9}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 146
    new-instance v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    .line 148
    invoke-direct {v9, v8}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 151
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 153
    iget-object v15, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 155
    invoke-virtual {v14, v15}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    .line 158
    move-result v14

    .line 159
    if-eqz v14, :cond_ad

    .line 161
    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->getSigningKey()[B

    .line 164
    move-result-object v14

    .line 165
    if-eqz v14, :cond_ad

    .line 167
    new-instance v15, Ljcifs/smb/SigningDigest;

    .line 169
    invoke-direct {v15, v14, v4}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    .line 172
    iput-object v15, v13, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 174
    :cond_ad
    iget v14, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 176
    iput v14, v13, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 178
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I
    :try_end_b3
    .catch Ljcifs/smb/SmbException; {:try_start_8c .. :try_end_b3} :catch_1c6
    .catchall {:try_start_8c .. :try_end_b3} :catchall_1c4

    .line 180
    :try_start_b3
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 182
    invoke-virtual {v14, v13, v9}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_b8
    .catch Ljcifs/smb/SmbAuthException; {:try_start_b3 .. :try_end_b8} :catch_e8
    .catch Ljcifs/smb/SmbException; {:try_start_b3 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_1c4

    .line 185
    goto :goto_bf

    .line 186
    :catch_b9
    move-exception v0

    .line 187
    :try_start_ba
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 189
    invoke-virtual {v14, v4}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bf} :catch_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_1c4

    .line 192
    :catch_bf
    :goto_bf
    :try_start_bf
    iget-boolean v14, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    .line 194
    if-eqz v14, :cond_d6

    .line 196
    const-string v14, "GUEST"

    .line 198
    iget-object v15, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 200
    iget-object v15, v15, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 202
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 205
    move-result v14

    .line 206
    if-eqz v14, :cond_d0

    .line 208
    goto :goto_d6

    .line 209
    :cond_d0
    new-instance v0, Ljcifs/smb/SmbAuthException;

    .line 211
    invoke-direct {v0, v12}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    .line 214
    throw v0

    .line 215
    :cond_d6
    :goto_d6
    if-nez v0, :cond_e7

    .line 217
    iget v12, v9, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 219
    iput v12, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 221
    iget-object v12, v13, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 223
    if-eqz v12, :cond_e4

    .line 225
    iget-object v13, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 227
    iput-object v12, v13, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 229
    :cond_e4
    iget-object v9, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    .line 231
    goto :goto_ea

    .line 232
    :cond_e7
    throw v0

    .line 233
    :catch_e8
    move-exception v0

    .line 234
    throw v0
    :try_end_ea
    .catch Ljcifs/smb/SmbException; {:try_start_bf .. :try_end_ea} :catch_1c6
    .catchall {:try_start_bf .. :try_end_ea} :catchall_1c4

    .line 235
    :cond_ea
    :goto_ea
    move-object/from16 v14, p1

    .line 237
    move-object/from16 v15, p2

    .line 239
    goto/16 :goto_1af

    .line 241
    :catch_f0
    move-exception v0

    .line 242
    :try_start_f1
    iget-object v5, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 244
    invoke-virtual {v5, v4}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f6} :catch_f6
    .catchall {:try_start_f1 .. :try_end_f6} :catchall_1c4

    .line 247
    :catch_f6
    :try_start_f6
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 249
    throw v0

    .line 250
    :cond_f9
    new-instance v0, Ljcifs/smb/SmbException;

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 254
    const-string v6, "Unexpected session setup state: "

    .line 256
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object v5

    .line 266
    invoke-direct {v0, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 269
    throw v0

    .line 270
    :cond_10d
    iget-object v10, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 272
    sget-object v14, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 274
    if-eq v10, v14, :cond_124

    .line 276
    iget-object v10, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 278
    const/high16 v14, -0x80000000

    .line 280
    invoke-virtual {v10, v14}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    .line 283
    move-result v10

    .line 284
    if-eqz v10, :cond_124

    .line 286
    move-object/from16 v14, p1

    .line 288
    move-object/from16 v15, p2

    .line 290
    move v10, v13

    .line 291
    goto/16 :goto_1af

    .line 293
    :cond_124
    new-instance v10, Ljcifs/smb/SmbComSessionSetupAndX;

    .line 295
    iget-object v13, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 297
    move-object/from16 v14, p1

    .line 299
    invoke-direct {v10, v1, v14, v13}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 302
    new-instance v13, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    .line 304
    move-object/from16 v15, p2

    .line 306
    invoke-direct {v13, v15}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 309
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 311
    iget-object v7, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 313
    invoke-virtual {v6, v7}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    .line 316
    move-result v6

    .line 317
    if-eqz v6, :cond_16d

    .line 319
    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 321
    iget-boolean v7, v6, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 323
    if-eqz v7, :cond_15c

    .line 325
    sget-object v7, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;
    :try_end_146
    .catch Ljcifs/smb/SmbException; {:try_start_f6 .. :try_end_146} :catch_1c6
    .catchall {:try_start_f6 .. :try_end_146} :catchall_1c4

    .line 327
    :try_start_146
    const-string v4, ""

    .line 329
    if-eq v7, v4, :cond_15c

    .line 331
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 333
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 335
    invoke-virtual {v4, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 338
    move-result-object v4

    .line 339
    sget-object v6, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    .line 341
    invoke-virtual {v4, v6, v8}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v4, v8, v8}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 348
    goto :goto_16d

    .line 349
    :cond_15c
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 351
    iget-object v4, v4, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 353
    iget-object v4, v4, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 355
    invoke-virtual {v6, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getSigningKey([B)[B

    .line 358
    move-result-object v4

    .line 359
    new-instance v6, Ljcifs/smb/SigningDigest;

    .line 361
    invoke-direct {v6, v4, v3}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    .line 364
    iput-object v6, v10, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 366
    :cond_16d
    :goto_16d
    iget-object v4, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 368
    iput-object v4, v10, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_171
    .catch Ljcifs/smb/SmbException; {:try_start_146 .. :try_end_171} :catch_1c1
    .catchall {:try_start_146 .. :try_end_171} :catchall_1c4

    .line 370
    :try_start_171
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 372
    invoke-virtual {v4, v10, v13}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_176
    .catch Ljcifs/smb/SmbAuthException; {:try_start_171 .. :try_end_176} :catch_1bf
    .catch Ljcifs/smb/SmbException; {:try_start_171 .. :try_end_176} :catch_177
    .catchall {:try_start_171 .. :try_end_176} :catchall_1c4

    .line 375
    goto :goto_178

    .line 376
    :catch_177
    move-exception v0

    .line 377
    :goto_178
    :try_start_178
    iget-boolean v4, v13, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    .line 379
    if-eqz v4, :cond_19d

    .line 381
    const-string v4, "GUEST"

    .line 383
    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 385
    iget-object v6, v6, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 387
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 390
    move-result v4

    .line 391
    if-nez v4, :cond_19d

    .line 393
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 395
    iget-object v4, v4, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 397
    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 399
    if-eqz v4, :cond_19d

    .line 401
    iget-object v4, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 403
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 405
    if-ne v4, v6, :cond_197

    .line 407
    goto :goto_19d

    .line 408
    :cond_197
    new-instance v0, Ljcifs/smb/SmbAuthException;

    .line 410
    invoke-direct {v0, v12}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    .line 413
    throw v0

    .line 414
    :cond_19d
    :goto_19d
    if-nez v0, :cond_1be

    .line 416
    iget v4, v13, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 418
    iput v4, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 420
    iget-object v4, v10, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 422
    if-eqz v4, :cond_1ab

    .line 424
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 426
    iput-object v4, v6, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 428
    :cond_1ab
    iput v5, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_1ad
    .catch Ljcifs/smb/SmbException; {:try_start_178 .. :try_end_1ad} :catch_1c1
    .catchall {:try_start_178 .. :try_end_1ad} :catchall_1c4

    .line 430
    goto/16 :goto_82

    .line 432
    :goto_1af
    if-nez v10, :cond_1b8

    .line 434
    :try_start_1b1
    iget-object v0, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 436
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 439
    monitor-exit v2
    :try_end_1b7
    .catchall {:try_start_1b1 .. :try_end_1b7} :catchall_1f1

    .line 440
    return-void

    .line 441
    :cond_1b8
    const/4 v4, 0x1

    .line 442
    const/16 v6, 0xa

    .line 444
    const/4 v7, 0x4

    .line 445
    goto/16 :goto_4a

    .line 447
    :cond_1be
    :try_start_1be
    throw v0

    .line 448
    :catch_1bf
    move-exception v0

    .line 449
    throw v0
    :try_end_1c1
    .catch Ljcifs/smb/SmbException; {:try_start_1be .. :try_end_1c1} :catch_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1c4

    .line 450
    :catch_1c1
    move-exception v0

    .line 451
    const/4 v4, 0x1

    .line 452
    goto :goto_1c7

    .line 453
    :catchall_1c4
    move-exception v0

    .line 454
    goto :goto_1cd

    .line 455
    :catch_1c6
    move-exception v0

    .line 456
    :goto_1c7
    :try_start_1c7
    invoke-virtual {v1, v4}, Ljcifs/smb/SmbSession;->logoff(Z)V

    .line 459
    iput v3, v1, Ljcifs/smb/SmbSession;->connectionState:I

    .line 461
    throw v0
    :try_end_1cd
    .catchall {:try_start_1c7 .. :try_end_1cd} :catchall_1c4

    .line 462
    :goto_1cd
    :try_start_1cd
    iget-object v3, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 464
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 467
    throw v0
    :try_end_1d3
    .catchall {:try_start_1cd .. :try_end_1d3} :catchall_1f1

    .line 468
    :cond_1d3
    move-object/from16 v14, p1

    .line 470
    move-object/from16 v15, p2

    .line 472
    if-eq v4, v5, :cond_1ef

    .line 474
    const/4 v5, 0x3

    .line 475
    if-ne v4, v5, :cond_1dd

    .line 477
    goto :goto_1ef

    .line 478
    :cond_1dd
    :try_start_1dd
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 480
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_1dd .. :try_end_1e2} :catch_1e4
    .catchall {:try_start_1dd .. :try_end_1e2} :catchall_1f1

    .line 483
    goto/16 :goto_a

    .line 485
    :catch_1e4
    move-exception v0

    .line 486
    :try_start_1e5
    new-instance v3, Ljcifs/smb/SmbException;

    .line 488
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 491
    move-result-object v4

    .line 492
    invoke-direct {v3, v4, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    throw v3

    .line 496
    :cond_1ef
    :goto_1ef
    monitor-exit v2

    .line 497
    return-void

    .line 498
    :catchall_1f1
    move-exception v0

    .line 499
    monitor-exit v2
    :try_end_1f3
    .catchall {:try_start_1e5 .. :try_end_1f3} :catchall_1f1

    .line 500
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SmbSession[accountName="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 10
    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ",primaryDomain="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 22
    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ",uid="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ",connectionState="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 44
    const-string v2, "]"

    .line 46
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public declared-synchronized transport()Ljcifs/smb/SmbTransport;
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 4
    if-nez v0, :cond_14

    .line 6
    iget-object v0, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    .line 8
    iget v1, p0, Ljcifs/smb/SmbSession;->port:I

    .line 10
    iget-object v2, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    .line 12
    iget v3, p0, Ljcifs/smb/SmbSession;->localPort:I

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 21
    :cond_14
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 23
    monitor-exit p0

    .line 24
    return-object v0

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method
