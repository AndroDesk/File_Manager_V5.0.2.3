.class public final Ljcifs/netbios/NbtAddress;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/netbios/NbtAddress$CacheEntry;
    }
.end annotation


# static fields
.field private static final ADDRESS_CACHE:Ljava/util/HashMap;

.field public static final ANY_HOSTS_NAME:Ljava/lang/String; = "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

.field public static final B_NODE:I = 0x0

.field private static final CACHE_POLICY:I

.field private static final CLIENT:Ljcifs/netbios/NameServiceClient;

.field private static final DEFAULT_CACHE_POLICY:I = 0x1e

.field private static final FOREVER:I = -0x1

.field public static final H_NODE:I = 0x3

.field private static final LOOKUP_TABLE:Ljava/util/HashMap;

.field public static final MASTER_BROWSER_NAME:Ljava/lang/String; = "\u0001\u0002__MSBROWSE__\u0002"

.field public static final M_NODE:I = 0x2

.field public static final NBNS:[Ljava/net/InetAddress;

.field public static final P_NODE:I = 0x1

.field public static final SMBSERVER_NAME:Ljava/lang/String; = "*SMBSERVER     "

.field public static final UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

.field public static final UNKNOWN_MAC_ADDRESS:[B

.field public static final UNKNOWN_NAME:Ljcifs/netbios/Name;

.field public static localhost:Ljcifs/netbios/NbtAddress;

.field private static nbnsIndex:I


# instance fields
.field public address:I

.field public calledName:Ljava/lang/String;

.field public groupName:Z

.field public hostName:Ljcifs/netbios/Name;

.field public isActive:Z

.field public isBeingDeleted:Z

.field public isDataFromNodeStatus:Z

.field public isInConflict:Z

.field public isPermanent:Z

.field public macAddress:[B

.field public nodeType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/net/InetAddress;

    const-string v2, "jcifs.netbios.wins"

    const-string v3, ","

    invoke-static {v2, v3, v1}, Ljcifs/Config;->getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    new-instance v1, Ljcifs/netbios/NameServiceClient;

    invoke-direct {v1}, Ljcifs/netbios/NameServiceClient;-><init>()V

    sput-object v1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    const-string v2, "jcifs.netbios.cachePolicy"

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    sput v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    new-instance v3, Ljcifs/netbios/Name;

    const-string v4, "0.0.0.0"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    new-instance v4, Ljcifs/netbios/NbtAddress;

    invoke-direct {v4, v3, v0, v0, v0}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    sput-object v4, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    const/4 v6, 0x6

    new-array v6, v6, [B

    sput-object v6, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    new-instance v6, Ljcifs/netbios/NbtAddress$CacheEntry;

    const-wide/16 v7, -0x1

    invoke-direct {v6, v3, v4, v7, v8}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    if-nez v1, :cond_5d

    :try_start_52
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1
    :try_end_56
    .catch Ljava/net/UnknownHostException; {:try_start_52 .. :try_end_56} :catch_57

    goto :goto_5d

    :catch_57
    :try_start_57
    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_5d
    .catch Ljava/net/UnknownHostException; {:try_start_57 .. :try_end_5d} :catch_5d

    :catch_5d
    :cond_5d
    :goto_5d
    const-string v2, "jcifs.netbios.hostname"

    invoke-static {v2, v5}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a4

    :cond_6b
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JCIFS"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    aget-byte v6, v2, v4

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    aget-byte v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide v11, 0x406fe00000000000L  # 255.0

    mul-double/2addr v9, v11

    double-to-int v2, v9

    invoke-static {v2, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a4
    new-instance v3, Ljcifs/netbios/Name;

    const-string v4, "jcifs.netbios.scope"

    invoke-static {v4, v5}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    move-object v9, v0

    move-object v10, v3

    invoke-direct/range {v9 .. v18}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    sput-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    invoke-static {v3, v0, v7, v8}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;IZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;IZIZZZZ[B)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    iput-boolean p5, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    iput-boolean p6, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    iput-boolean p7, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    iput-boolean p8, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    iput-object p9, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    return-void
.end method

.method public static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V
    .registers 7

    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    :cond_12
    invoke-static {p0, p1, v1, v2}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    return-void
.end method

.method public static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V
    .registers 6

    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/netbios/NbtAddress$CacheEntry;

    if-nez v1, :cond_19

    new-instance v1, Ljcifs/netbios/NbtAddress$CacheEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_19
    iput-object p1, v1, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    iput-wide p2, v1, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public static cacheAddressArray([Ljcifs/netbios/NbtAddress;)V
    .registers 9

    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    :cond_12
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v3, 0x0

    :goto_16
    :try_start_16
    array-length v4, p0

    if-lt v3, v4, :cond_1b

    monitor-exit v0

    return-void

    :cond_1b
    sget-object v4, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    aget-object v5, p0, v3

    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljcifs/netbios/NbtAddress$CacheEntry;

    if-nez v5, :cond_3a

    new-instance v5, Ljcifs/netbios/NbtAddress$CacheEntry;

    aget-object v6, p0, v3

    iget-object v7, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-direct {v5, v7, v6, v1, v2}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    aget-object v6, p0, v3

    iget-object v6, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_3a
    aget-object v4, p0, v3

    iput-object v4, v5, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    iput-wide v1, v5, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    throw p0
.end method

.method private static checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catch_f
    :cond_f
    :goto_f
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2c

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    if-nez v0, :cond_27

    monitor-enter v1

    :try_start_1f
    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    return-object v0

    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_f
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_f

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public static doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 4

    iget v0, p0, Ljcifs/netbios/Name;->hexCode:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_c

    if-nez p1, :cond_c

    sget-object p1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    iget-object p1, p1, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    :cond_c
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput v0, p0, Ljcifs/netbios/Name;->srcHashCode:I

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    if-nez v0, :cond_3d

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    if-nez v0, :cond_3d

    :try_start_24
    sget-object v1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v1, p0, p1}, Ljcifs/netbios/NameServiceClient;->getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v0
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_24 .. :try_end_2a} :catch_2d
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p1

    goto :goto_36

    :catch_2d
    :try_start_2d
    sget-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_2b

    :goto_2f
    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    goto :goto_3d

    :goto_36
    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    throw p1

    :cond_3d
    :goto_3d
    sget-object p1, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    if-eq v0, p1, :cond_42

    return-object v0

    :cond_42
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-virtual {p0}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAllByAddress(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getAllByAddress(Ljava/lang/String;ILjava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .registers 3

    invoke-static {p0, p1, p2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 5

    :try_start_0
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v0, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->cacheAddressArray([Ljcifs/netbios/NbtAddress;)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no name with type 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v2, v2, Ljcifs/netbios/Name;->hexCode:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_3f

    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " with scope "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v3, v3, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_3f
    :goto_3f
    const-string v2, " with no scope"

    :goto_41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 6

    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    new-instance v1, Ljcifs/netbios/Name;

    invoke-direct {v1, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljcifs/netbios/NameServiceClient;->getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 14

    if-eqz p0, :cond_93

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_93

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_26
    array-length v5, v1

    if-lt v2, v5, :cond_47

    const/4 v1, 0x4

    if-ne v3, v1, :cond_3d

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_3d

    :cond_35
    new-instance p0, Ljcifs/netbios/NbtAddress;

    sget-object p1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    invoke-direct {p0, p1, v4, v0, v0}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    return-object p0

    :cond_3d
    :goto_3d
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_47
    aget-char v5, v1, v2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_89

    const/16 v7, 0x39

    if-le v5, v7, :cond_52

    goto :goto_89

    :cond_52
    move v8, v0

    :goto_53
    const/16 v9, 0x2e

    if-ne v5, v9, :cond_58

    goto :goto_66

    :cond_58
    if-lt v5, v6, :cond_7f

    if-le v5, v7, :cond_5d

    goto :goto_7f

    :cond_5d
    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v5

    sub-int/2addr v8, v6

    add-int/lit8 v2, v2, 0x1

    array-length v5, v1

    if-lt v2, v5, :cond_7c

    :goto_66
    const/16 v5, 0xff

    if-le v8, v5, :cond_74

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_74
    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_7c
    aget-char v5, v1, v2

    goto :goto_53

    :cond_7f
    :goto_7f
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_89
    :goto_89
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_93
    :goto_93
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    .registers 7

    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_9
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljcifs/netbios/NbtAddress$CacheEntry;

    if-eqz p0, :cond_24

    iget-wide v2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_24

    iget-wide v2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_24

    move-object p0, v1

    :cond_24
    if-eqz p0, :cond_28

    iget-object v1, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    :cond_28
    monitor-exit v0

    return-object v1

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public static getLocalHost()Ljcifs/netbios/NbtAddress;
    .registers 1

    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    return-object v0
.end method

.method public static getLocalName()Ljcifs/netbios/Name;
    .registers 1

    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    iget-object v0, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    return-object v0
.end method

.method public static getWINSAddress()Ljava/net/InetAddress;
    .registers 2

    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v0

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    sget v1, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    aget-object v0, v0, v1

    :goto_b
    return-object v0
.end method

.method public static isWINS(Ljava/net/InetAddress;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eqz p0, :cond_1b

    sget-object v2, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v3, v2

    if-lt v1, v3, :cond_a

    goto :goto_1b

    :cond_a
    invoke-virtual {p0}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    if-ne v3, v2, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    :goto_1b
    return v0
.end method

.method public static switchWINS()Ljava/net/InetAddress;
    .registers 4

    sget v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v3, v2

    if-ge v1, v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    sput v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    array-length v1, v2

    if-nez v1, :cond_14

    const/4 v0, 0x0

    goto :goto_16

    :cond_14
    aget-object v0, v2, v0

    :goto_16
    return-object v0
.end method

.method private static updateLookupTable(Ljcifs/netbios/Name;)V
    .registers 2

    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method


# virtual methods
.method public checkData()V
    .registers 3

    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_9

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    :cond_9
    return-void
.end method

.method public checkNodeStatusData()V
    .registers 2

    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    :cond_7
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_10

    instance-of v0, p1, Ljcifs/netbios/NbtAddress;

    if-eqz v0, :cond_10

    check-cast p1, Ljcifs/netbios/NbtAddress;

    iget p1, p1, Ljcifs/netbios/NbtAddress;->address:I

    iget v0, p0, Ljcifs/netbios/NbtAddress;->address:I

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public firstCalledName()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const-string v2, "*SMBSERVER     "

    if-eqz v0, :cond_44

    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v4, v1

    :goto_20
    if-ge v1, v0, :cond_4e

    add-int/lit8 v5, v1, 0x1

    aget-char v1, v3, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_4e

    :cond_2d
    if-ne v5, v0, :cond_35

    const/4 v1, 0x3

    if-ne v4, v1, :cond_35

    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_4e

    :cond_35
    if-ge v5, v0, :cond_42

    aget-char v1, v3, v5

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_42

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v5, 0x1

    goto :goto_20

    :cond_42
    move v1, v5

    goto :goto_20

    :cond_44
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    packed-switch v0, :pswitch_data_52

    goto :goto_4e

    :pswitch_4c  #0x1b, 0x1c, 0x1d
    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    :cond_4e
    :goto_4e
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1b
        :pswitch_4c  #0000001b
        :pswitch_4c  #0000001c
        :pswitch_4c  #0000001d
    .end packed-switch
.end method

.method public getAddress()[B
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()[B
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    return-object v0
.end method

.method public getNameType()I
    .registers 2

    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    return v0
.end method

.method public getNodeType()I
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    iget v0, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Ljcifs/netbios/NbtAddress;->address:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    return v0
.end method

.method public isBeingDeleted()Z
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    return v0
.end method

.method public isGroupAddress()Z
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    return v0
.end method

.method public isInConflict()Z
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    return v0
.end method

.method public isPermanent()Z
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v1, v1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    const-string v2, "*SMBSERVER     "

    if-ne v0, v1, :cond_d

    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_41

    :cond_d
    const/4 v1, 0x0

    if-ne v0, v2, :cond_3f

    :try_start_10
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v0, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v3, v2, Ljcifs/netbios/Name;->hexCode:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_33

    const/4 v2, 0x0

    :goto_1f
    array-length v3, v0

    if-lt v2, v3, :cond_23

    return-object v1

    :cond_23
    aget-object v3, v0, v2

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v4, v3, Ljcifs/netbios/Name;->hexCode:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_30

    iget-object v0, v3, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    return-object v0

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-eqz v0, :cond_41

    iput-object v1, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    iget-object v0, v2, Ljcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    iput-object v1, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_41

    :cond_3f
    iput-object v1, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    :cond_41
    :goto_41
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v1}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
