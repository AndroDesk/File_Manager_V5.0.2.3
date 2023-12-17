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

    const-string v0, "jcifs.smb.client.logonShare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const-string v0, "jcifs.netbios.lookupRespLimit"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v2, 0x258

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    sput-object v1, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    return-void
.end method

.method public constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iput-object v0, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    iput p2, p0, Ljcifs/smb/SmbSession;->port:I

    iput-object p3, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    iput p4, p0, Ljcifs/smb/SmbSession;->localPort:I

    iput-object p5, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    return-void
.end method

.method public static getChallenge(Ljcifs/UniAddress;)[B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getChallenge(Ljcifs/UniAddress;I)[B
    .registers 2

    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    iget-object p0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p0, p0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    return-object p0
.end method

.method public static getChallengeForDomain()Ljcifs/smb/NtlmChallenge;
    .registers 15

    sget-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    if-eqz v0, :cond_af

    monitor-enter v0

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    :goto_a
    sget-wide v4, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    cmp-long v4, v4, v1

    const-wide/32 v5, 0xdbba0

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-gez v4, :cond_3d

    sget-object v4, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const/16 v9, 0x1c

    invoke-static {v4, v9, v8, v8}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v4

    sget v9, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    add-long/2addr v9, v1

    sput-wide v9, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    if-eqz v4, :cond_2e

    array-length v9, v4

    if-lez v9, :cond_2e

    sput-object v4, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    goto :goto_3d

    :cond_2e
    add-long v9, v1, v5

    sput-wide v9, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v7, :cond_3d

    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const-string v9, "Failed to retrieve DC list from WINS"

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    sget-object v4, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    array-length v4, v4

    sget v9, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v9, 0x0

    :goto_47
    if-lt v9, v4, :cond_6d

    const-wide/16 v7, 0x0

    sput-wide v7, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_53

    move v3, v4

    goto :goto_a

    :cond_53
    add-long/2addr v1, v5

    sput-wide v1, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_ac

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to negotiate with a suitable domain controller for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    :try_start_6d
    sget v10, Ljcifs/smb/SmbSession;->dc_list_counter:I

    add-int/lit8 v11, v10, 0x1

    sput v11, Ljcifs/smb/SmbSession;->dc_list_counter:I

    rem-int/2addr v10, v4

    sget-object v11, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v11, v11, v10
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_ac

    if-eqz v11, :cond_a9

    :try_start_7a
    invoke-static {v11}, Ljcifs/smb/SmbSession;->interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;

    move-result-object v1
    :try_end_7e
    .catch Ljcifs/smb/SmbException; {:try_start_7a .. :try_end_7e} :catch_80
    .catchall {:try_start_7a .. :try_end_7e} :catchall_ac

    :try_start_7e
    monitor-exit v0

    return-object v1

    :catch_80
    move-exception v11

    sget v12, Ljcifs/util/LogStream;->level:I

    if-lt v12, v7, :cond_a5

    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed validate DC: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v14, v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v12, Ljcifs/util/LogStream;->level:I

    if-le v12, v7, :cond_a5

    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_a5
    sget-object v11, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aput-object v8, v11, v10

    :cond_a9
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    :catchall_ac
    move-exception v1

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_7e .. :try_end_ae} :catchall_ac

    throw v1

    :cond_af
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "A domain was not specified"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;
    .registers 5

    new-instance v0, Ljcifs/UniAddress;

    invoke-direct {v0, p0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    sget-object v1, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2e

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const-string v2, "Default credentials (jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2e

    :cond_1e
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v1

    sget-object v2, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_2e
    :goto_2e
    new-instance v1, Ljcifs/smb/NtlmChallenge;

    iget-object p0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p0, p0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-direct {v1, p0, v0}, Ljcifs/smb/NtlmChallenge;-><init>([BLjcifs/UniAddress;)V

    return-object v1
.end method

.method public static logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 5

    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object p0

    sget-object p1, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object p0

    if-nez p1, :cond_15

    invoke-virtual {p0, p2, p2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_28

    :cond_15
    new-instance p1, Ljcifs/smb/Trans2FindFirst2;

    const/16 p2, 0x10

    const-string v0, "\\"

    const-string v1, "*"

    invoke-direct {p1, v0, v1, p2}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p2, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {p2}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_28
    return-void
.end method

.method public static logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_5

    :try_start_3
    const-string p1, "IPC$"

    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v0, Ljcifs/smb/SmbTree;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/smb/SmbTree;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2b

    monitor-exit p0

    return-object v0

    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbTree;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2b

    if-eqz v2, :cond_b

    monitor-exit p0

    return-object v1

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public logoff(Z)V
    .registers 6

    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    const/4 v1, 0x3

    iput v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_42

    const/4 v2, 0x0

    if-nez p1, :cond_39

    iget-object p1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget p1, p1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz p1, :cond_39

    new-instance p1, Ljcifs/smb/SmbComLogoffAndX;

    invoke-direct {p1, v1}, Ljcifs/smb/SmbComLogoffAndX;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iget v3, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v3, p1, Ljcifs/smb/ServerMessageBlock;->uid:I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_4c

    :try_start_32
    iget-object v3, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v3, p1, v1}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_37
    .catch Ljcifs/smb/SmbException; {:try_start_32 .. :try_end_37} :catch_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_4c

    :catch_37
    :try_start_37
    iput v2, p0, Ljcifs/smb/SmbSession;->uid:I

    :cond_39
    iput v2, p0, Ljcifs/smb/SmbSession;->connectionState:I

    iget-object p1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :cond_42
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljcifs/smb/SmbTree;

    invoke-virtual {v3, p1}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    goto :goto_18

    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3

    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, p1, :cond_c

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 8

    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_a

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbSession;->expiration:J

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p2, :cond_1f

    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v1, :cond_1f

    monitor-exit v0

    return-void

    :cond_1f
    instance-of v1, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v1, :cond_4b

    move-object v1, p1

    check-cast v1, Ljcifs/smb/SmbComTreeConnectAndX;

    iget-object v2, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, v1, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    const-string v3, "\\IPC$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\IPC$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    :cond_4b
    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->uid:I

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_67

    :try_start_53
    iget-object v1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_58
    .catch Ljcifs/smb/SmbException; {:try_start_53 .. :try_end_58} :catch_5a
    .catchall {:try_start_53 .. :try_end_58} :catchall_67

    :try_start_58
    monitor-exit v0

    return-void

    :catch_5a
    move-exception p2

    instance-of v1, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v1, :cond_63

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljcifs/smb/SmbSession;->logoff(Z)V

    :cond_63
    const/4 v1, 0x0

    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    throw p2

    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 19

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_8
    new-array v0, v3, [B

    :goto_a
    iget v4, v1, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v5, 0x2

    if-nez v4, :cond_1d3

    const/4 v4, 0x1

    iput v4, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1f1

    :try_start_12
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v6}, Ljcifs/smb/SmbTransport;->connect()V

    sget-object v6, Ljcifs/smb/SmbTransport;->BUF:[B

    sget v6, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_41

    sget-object v6, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sessionSetup: accountName="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",primaryDomain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_41
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I

    const/16 v6, 0xa

    const/4 v8, 0x0

    move-object v9, v0

    move v10, v6

    move-object v0, v8

    move-object v11, v0

    :goto_4a
    const v12, -0x3fffff93  # -2.000026f

    const/16 v13, 0x14

    if-eq v10, v6, :cond_10d

    if-ne v10, v13, :cond_f9

    if-nez v11, :cond_67

    iget-object v11, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v11, v11, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/2addr v11, v7

    if-eqz v11, :cond_5e

    move v11, v4

    goto :goto_5f

    :cond_5e
    move v11, v3

    :goto_5f
    new-instance v13, Ljcifs/smb/NtlmContext;

    iget-object v14, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v13, v14, v11}, Ljcifs/smb/NtlmContext;-><init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V

    move-object v11, v13

    :cond_67
    sget v13, Ljcifs/util/LogStream;->level:I

    if-lt v13, v7, :cond_70

    sget-object v13, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v13, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_70
    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->isEstablished()Z

    move-result v13

    if-eqz v13, :cond_85

    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->getNetbiosName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    iput v5, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_7e
    .catch Ljcifs/smb/SmbException; {:try_start_12 .. :try_end_7e} :catch_1c6
    .catchall {:try_start_12 .. :try_end_7e} :catchall_1c4

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    :goto_82
    move v10, v3

    goto/16 :goto_1af

    :cond_85
    :try_start_85
    array-length v13, v9

    invoke-virtual {v11, v9, v3, v13}, Ljcifs/smb/NtlmContext;->initSecContext([BII)[B

    move-result-object v9
    :try_end_8a
    .catch Ljcifs/smb/SmbException; {:try_start_85 .. :try_end_8a} :catch_f0
    .catchall {:try_start_85 .. :try_end_8a} :catchall_1c4

    if-eqz v9, :cond_ea

    :try_start_8c
    new-instance v13, Ljcifs/smb/SmbComSessionSetupAndX;

    invoke-direct {v13, v1, v8, v9}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    new-instance v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    invoke-direct {v9, v8}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v15, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v14, v15}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v14

    if-eqz v14, :cond_ad

    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->getSigningKey()[B

    move-result-object v14

    if-eqz v14, :cond_ad

    new-instance v15, Ljcifs/smb/SigningDigest;

    invoke-direct {v15, v14, v4}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v15, v13, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    :cond_ad
    iget v14, v1, Ljcifs/smb/SmbSession;->uid:I

    iput v14, v13, Ljcifs/smb/ServerMessageBlock;->uid:I

    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I
    :try_end_b3
    .catch Ljcifs/smb/SmbException; {:try_start_8c .. :try_end_b3} :catch_1c6
    .catchall {:try_start_8c .. :try_end_b3} :catchall_1c4

    :try_start_b3
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14, v13, v9}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_b8
    .catch Ljcifs/smb/SmbAuthException; {:try_start_b3 .. :try_end_b8} :catch_e8
    .catch Ljcifs/smb/SmbException; {:try_start_b3 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_1c4

    goto :goto_bf

    :catch_b9
    move-exception v0

    :try_start_ba
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14, v4}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bf} :catch_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_1c4

    :catch_bf
    :goto_bf
    :try_start_bf
    iget-boolean v14, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v14, :cond_d6

    const-string v14, "GUEST"

    iget-object v15, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v15, v15, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d0

    goto :goto_d6

    :cond_d0
    new-instance v0, Ljcifs/smb/SmbAuthException;

    invoke-direct {v0, v12}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :cond_d6
    :goto_d6
    if-nez v0, :cond_e7

    iget v12, v9, Ljcifs/smb/ServerMessageBlock;->uid:I

    iput v12, v1, Ljcifs/smb/SmbSession;->uid:I

    iget-object v12, v13, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v12, :cond_e4

    iget-object v13, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iput-object v12, v13, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    :cond_e4
    iget-object v9, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    goto :goto_ea

    :cond_e7
    throw v0

    :catch_e8
    move-exception v0

    throw v0
    :try_end_ea
    .catch Ljcifs/smb/SmbException; {:try_start_bf .. :try_end_ea} :catch_1c6
    .catchall {:try_start_bf .. :try_end_ea} :catchall_1c4

    :cond_ea
    :goto_ea
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    goto/16 :goto_1af

    :catch_f0
    move-exception v0

    :try_start_f1
    iget-object v5, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v5, v4}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f6} :catch_f6
    .catchall {:try_start_f1 .. :try_end_f6} :catchall_1c4

    :catch_f6
    :try_start_f6
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I

    throw v0

    :cond_f9
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected session setup state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10d
    iget-object v10, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v14, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v10, v14, :cond_124

    iget-object v10, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/high16 v14, -0x80000000

    invoke-virtual {v10, v14}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_124

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move v10, v13

    goto/16 :goto_1af

    :cond_124
    new-instance v10, Ljcifs/smb/SmbComSessionSetupAndX;

    iget-object v13, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v14, p1

    invoke-direct {v10, v1, v14, v13}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    new-instance v13, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    move-object/from16 v15, p2

    invoke-direct {v13, v15}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v7, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v6, v7}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v6

    if-eqz v6, :cond_16d

    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v7, v6, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v7, :cond_15c

    sget-object v7, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;
    :try_end_146
    .catch Ljcifs/smb/SmbException; {:try_start_f6 .. :try_end_146} :catch_1c6
    .catchall {:try_start_f6 .. :try_end_146} :catchall_1c4

    :try_start_146
    const-string v4, ""

    if-eq v7, v4, :cond_15c

    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v4, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v4

    sget-object v6, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_16d

    :cond_15c
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v4, v4, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v4, v4, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v6, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getSigningKey([B)[B

    move-result-object v4

    new-instance v6, Ljcifs/smb/SigningDigest;

    invoke-direct {v6, v4, v3}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v6, v10, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    :cond_16d
    :goto_16d
    iget-object v4, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v4, v10, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_171
    .catch Ljcifs/smb/SmbException; {:try_start_146 .. :try_end_171} :catch_1c1
    .catchall {:try_start_146 .. :try_end_171} :catchall_1c4

    :try_start_171
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v4, v10, v13}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_176
    .catch Ljcifs/smb/SmbAuthException; {:try_start_171 .. :try_end_176} :catch_1bf
    .catch Ljcifs/smb/SmbException; {:try_start_171 .. :try_end_176} :catch_177
    .catchall {:try_start_171 .. :try_end_176} :catchall_1c4

    goto :goto_178

    :catch_177
    move-exception v0

    :goto_178
    :try_start_178
    iget-boolean v4, v13, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v4, :cond_19d

    const-string v4, "GUEST"

    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v6, v6, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19d

    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v4, v4, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v4, :cond_19d

    iget-object v4, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-ne v4, v6, :cond_197

    goto :goto_19d

    :cond_197
    new-instance v0, Ljcifs/smb/SmbAuthException;

    invoke-direct {v0, v12}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :cond_19d
    :goto_19d
    if-nez v0, :cond_1be

    iget v4, v13, Ljcifs/smb/ServerMessageBlock;->uid:I

    iput v4, v1, Ljcifs/smb/SmbSession;->uid:I

    iget-object v4, v10, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v4, :cond_1ab

    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iput-object v4, v6, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    :cond_1ab
    iput v5, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_1ad
    .catch Ljcifs/smb/SmbException; {:try_start_178 .. :try_end_1ad} :catch_1c1
    .catchall {:try_start_178 .. :try_end_1ad} :catchall_1c4

    goto/16 :goto_82

    :goto_1af
    if-nez v10, :cond_1b8

    :try_start_1b1
    iget-object v0, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1b7
    .catchall {:try_start_1b1 .. :try_end_1b7} :catchall_1f1

    return-void

    :cond_1b8
    const/4 v4, 0x1

    const/16 v6, 0xa

    const/4 v7, 0x4

    goto/16 :goto_4a

    :cond_1be
    :try_start_1be
    throw v0

    :catch_1bf
    move-exception v0

    throw v0
    :try_end_1c1
    .catch Ljcifs/smb/SmbException; {:try_start_1be .. :try_end_1c1} :catch_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1c4

    :catch_1c1
    move-exception v0

    const/4 v4, 0x1

    goto :goto_1c7

    :catchall_1c4
    move-exception v0

    goto :goto_1cd

    :catch_1c6
    move-exception v0

    :goto_1c7
    :try_start_1c7
    invoke-virtual {v1, v4}, Ljcifs/smb/SmbSession;->logoff(Z)V

    iput v3, v1, Ljcifs/smb/SmbSession;->connectionState:I

    throw v0
    :try_end_1cd
    .catchall {:try_start_1c7 .. :try_end_1cd} :catchall_1c4

    :goto_1cd
    :try_start_1cd
    iget-object v3, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_1d3
    .catchall {:try_start_1cd .. :try_end_1d3} :catchall_1f1

    :cond_1d3
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    if-eq v4, v5, :cond_1ef

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1dd

    goto :goto_1ef

    :cond_1dd
    :try_start_1dd
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_1dd .. :try_end_1e2} :catch_1e4
    .catchall {:try_start_1dd .. :try_end_1e2} :catchall_1f1

    goto/16 :goto_a

    :catch_1e4
    move-exception v0

    :try_start_1e5
    new-instance v3, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1ef
    :goto_1ef
    monitor-exit v2

    return-void

    :catchall_1f1
    move-exception v0

    monitor-exit v2
    :try_end_1f3
    .catchall {:try_start_1e5 .. :try_end_1f3} :catchall_1f1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmbSession[accountName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized transport()Ljcifs/smb/SmbTransport;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    if-nez v0, :cond_14

    iget-object v0, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbSession;->port:I

    iget-object v2, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    iget v3, p0, Ljcifs/smb/SmbSession;->localPort:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    :cond_14
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
