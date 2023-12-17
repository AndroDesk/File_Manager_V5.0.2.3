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

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/net/InetAddress;

    .line 4
    const-string v2, "jcifs.netbios.wins"

    .line 6
    const-string v3, ","

    .line 8
    invoke-static {v2, v3, v1}, Ljcifs/Config;->getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 14
    new-instance v1, Ljcifs/netbios/NameServiceClient;

    .line 16
    invoke-direct {v1}, Ljcifs/netbios/NameServiceClient;-><init>()V

    .line 19
    sput-object v1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    .line 21
    const-string v2, "jcifs.netbios.cachePolicy"

    .line 23
    const/16 v3, 0x1e

    .line 25
    invoke-static {v2, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 28
    move-result v2

    .line 29
    sput v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    .line 31
    sput v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 35
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    sput-object v2, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    .line 40
    new-instance v3, Ljava/util/HashMap;

    .line 42
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 45
    sput-object v3, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    .line 47
    new-instance v3, Ljcifs/netbios/Name;

    .line 49
    const-string v4, "0.0.0.0"

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-direct {v3, v4, v0, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    sput-object v3, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    .line 57
    new-instance v4, Ljcifs/netbios/NbtAddress;

    .line 59
    invoke-direct {v4, v3, v0, v0, v0}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    .line 62
    sput-object v4, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    .line 64
    const/4 v6, 0x6

    .line 65
    new-array v6, v6, [B

    .line 67
    sput-object v6, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    .line 69
    new-instance v6, Ljcifs/netbios/NbtAddress$CacheEntry;

    .line 71
    const-wide/16 v7, -0x1

    .line 73
    invoke-direct {v6, v3, v4, v7, v8}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 76
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, v1, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    .line 81
    if-nez v1, :cond_5d

    .line 83
    :try_start_52
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    .line 86
    move-result-object v1
    :try_end_56
    .catch Ljava/net/UnknownHostException; {:try_start_52 .. :try_end_56} :catch_57

    .line 87
    goto :goto_5d

    .line 88
    :catch_57
    :try_start_57
    const-string v2, "127.0.0.1"

    .line 90
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 93
    move-result-object v1
    :try_end_5d
    .catch Ljava/net/UnknownHostException; {:try_start_57 .. :try_end_5d} :catch_5d

    .line 94
    :catch_5d
    :cond_5d
    :goto_5d
    const-string v2, "jcifs.netbios.hostname"

    .line 96
    invoke-static {v2, v5}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_6b

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_a4

    .line 108
    :cond_6b
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    const-string v4, "JCIFS"

    .line 116
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    const/4 v4, 0x2

    .line 120
    aget-byte v6, v2, v4

    .line 122
    and-int/lit16 v6, v6, 0xff

    .line 124
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v6, "_"

    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v9, 0x3

    .line 133
    aget-byte v2, v2, v9

    .line 135
    and-int/lit16 v2, v2, 0xff

    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 146
    move-result-wide v9

    .line 147
    const-wide v11, 0x406fe00000000000L  # 255.0

    .line 152
    mul-double/2addr v9, v11

    .line 153
    double-to-int v2, v9

    .line 154
    invoke-static {v2, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    :cond_a4
    new-instance v3, Ljcifs/netbios/Name;

    .line 167
    const-string v4, "jcifs.netbios.scope"

    .line 169
    invoke-static {v4, v5}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v4

    .line 173
    invoke-direct {v3, v2, v0, v4}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    new-instance v0, Ljcifs/netbios/NbtAddress;

    .line 178
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    .line 181
    move-result v11

    .line 182
    const/4 v12, 0x0

    .line 183
    const/4 v13, 0x0

    .line 184
    const/4 v14, 0x0

    .line 185
    const/4 v15, 0x0

    .line 186
    const/16 v16, 0x1

    .line 188
    const/16 v17, 0x0

    .line 190
    sget-object v18, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    .line 192
    move-object v9, v0

    .line 193
    move-object v10, v3

    .line 194
    invoke-direct/range {v9 .. v18}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    .line 197
    sput-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    .line 199
    invoke-static {v3, v0, v7, v8}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;IZI)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 3
    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 4
    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 5
    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;IZIZZZZ[B)V
    .registers 10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 8
    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 9
    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 10
    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 11
    iput-boolean p5, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 12
    iput-boolean p6, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 13
    iput-boolean p7, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 14
    iput-boolean p8, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 15
    iput-object p9, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    return-void
.end method

.method public static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V
    .registers 7

    .line 1
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 3
    :cond_12
    invoke-static {p0, p1, v1, v2}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    return-void
.end method

.method public static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V
    .registers 6

    .line 4
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v0

    .line 6
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/netbios/NbtAddress$CacheEntry;

    if-nez v1, :cond_19

    .line 7
    new-instance v1, Ljcifs/netbios/NbtAddress$CacheEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 8
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 9
    :cond_19
    iput-object p1, v1, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 10
    iput-wide p2, v1, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 11
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

    .line 1
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-wide/16 v1, -0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    if-eq v0, v3, :cond_12

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v1

    .line 15
    mul-int/lit16 v0, v0, 0x3e8

    .line 17
    int-to-long v3, v0

    .line 18
    add-long/2addr v1, v3

    .line 19
    :cond_12
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    .line 21
    monitor-enter v0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_16
    :try_start_16
    array-length v4, p0

    .line 24
    if-lt v3, v4, :cond_1b

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_1b
    sget-object v4, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    .line 30
    aget-object v5, p0, v3

    .line 32
    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 34
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Ljcifs/netbios/NbtAddress$CacheEntry;

    .line 40
    if-nez v5, :cond_3a

    .line 42
    new-instance v5, Ljcifs/netbios/NbtAddress$CacheEntry;

    .line 44
    aget-object v6, p0, v3

    .line 46
    iget-object v7, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 48
    invoke-direct {v5, v7, v6, v1, v2}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 51
    aget-object v6, p0, v3

    .line 53
    iget-object v6, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 55
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    goto :goto_40

    .line 59
    :cond_3a
    aget-object v4, p0, v3

    .line 61
    iput-object v4, v5, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 63
    iput-wide v1, v5, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 65
    :goto_40
    add-int/lit8 v3, v3, 0x1

    .line 67
    goto :goto_16

    .line 68
    :catchall_43
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    .line 70
    throw p0
.end method

.method private static checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_f

    .line 10
    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0

    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :catch_f
    :cond_f
    :goto_f
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_28

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2c

    .line 25
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_27

    .line 31
    monitor-enter v1

    .line 32
    :try_start_1f
    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v1

    .line 36
    goto :goto_27

    .line 37
    :catchall_24
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    .line 39
    throw p0

    .line 40
    :cond_27
    :goto_27
    return-object v0

    .line 41
    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_f
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 44
    goto :goto_f

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .line 47
    throw p0
.end method

.method public static doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 4

    .line 1
    iget v0, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ne v0, v1, :cond_c

    .line 7
    if-nez p1, :cond_c

    .line 9
    sget-object p1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    .line 11
    iget-object p1, p1, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    .line 13
    :cond_c
    if-eqz p1, :cond_13

    .line 15
    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    .line 18
    move-result v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    iput v0, p0, Ljcifs/netbios/Name;->srcHashCode:I

    .line 23
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_3d

    .line 29
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .line 35
    if-nez v0, :cond_3d

    .line 37
    :try_start_24
    sget-object v1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    .line 39
    invoke-virtual {v1, p0, p1}, Ljcifs/netbios/NameServiceClient;->getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    .line 42
    move-result-object v0
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_24 .. :try_end_2a} :catch_2d
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2b

    .line 43
    goto :goto_2f

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    goto :goto_36

    .line 46
    :catch_2d
    :try_start_2d
    sget-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_2b

    .line 48
    :goto_2f
    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    .line 51
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    .line 54
    goto :goto_3d

    .line 55
    :goto_36
    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    .line 58
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    .line 61
    throw p1

    .line 62
    :cond_3d
    :goto_3d
    sget-object p1, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    .line 64
    if-eq v0, p1, :cond_42

    .line 66
    return-object v0

    .line 67
    :cond_42
    new-instance p1, Ljava/net/UnknownHostException;

    .line 69
    invoke-virtual {p0}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
.end method

.method public static getAllByAddress(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getAllByAddress(Ljava/lang/String;ILjava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .registers 3

    .line 2
    invoke-static {p0, p1, p2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 5

    .line 3
    :try_start_0
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v0, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->cacheAddressArray([Ljcifs/netbios/NbtAddress;)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 5
    :catch_a
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no name with type 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v2, v2, Ljcifs/netbios/Name;->hexCode:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_3f

    .line 9
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

    .line 10
    :goto_41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for host "

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 6

    .line 1
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    .line 3
    new-instance v1, Ljcifs/netbios/Name;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1, p3}, Ljcifs/netbios/NameServiceClient;->getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 14

    if-eqz p0, :cond_93

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_93

    :cond_a
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 5
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 7
    :goto_26
    array-length v5, v1

    if-lt v2, v5, :cond_47

    const/4 v1, 0x4

    if-ne v3, v1, :cond_3d

    const-string v1, "."

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_3d

    .line 9
    :cond_35
    new-instance p0, Ljcifs/netbios/NbtAddress;

    sget-object p1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    invoke-direct {p0, p1, v4, v0, v0}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    return-object p0

    .line 10
    :cond_3d
    :goto_3d
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    .line 11
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

    .line 12
    array-length v5, v1

    if-lt v2, v5, :cond_7c

    :goto_66
    const/16 v5, 0xff

    if-le v8, v5, :cond_74

    .line 13
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

    .line 14
    :cond_7c
    aget-char v5, v1, v2

    goto :goto_53

    .line 15
    :cond_7f
    :goto_7f
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    .line 16
    :cond_89
    :goto_89
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    .line 17
    :cond_93
    :goto_93
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    .registers 7

    .line 1
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljcifs/netbios/NbtAddress$CacheEntry;

    .line 16
    if-eqz p0, :cond_24

    .line 18
    iget-wide v2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v4

    .line 24
    cmp-long v2, v2, v4

    .line 26
    if-gez v2, :cond_24

    .line 28
    iget-wide v2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 30
    const-wide/16 v4, 0x0

    .line 32
    cmp-long v2, v2, v4

    .line 34
    if-ltz v2, :cond_24

    .line 36
    move-object p0, v1

    .line 37
    :cond_24
    if-eqz p0, :cond_28

    .line 39
    iget-object v1, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 41
    :cond_28
    monitor-exit v0

    .line 42
    return-object v1

    .line 43
    :catchall_2a
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    .line 45
    throw p0
.end method

.method public static getLocalHost()Ljcifs/netbios/NbtAddress;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    .line 3
    return-object v0
.end method

.method public static getLocalName()Ljcifs/netbios/Name;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    .line 3
    iget-object v0, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 5
    return-object v0
.end method

.method public static getWINSAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_7

    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    sget v1, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 10
    aget-object v0, v0, v1

    .line 12
    :goto_b
    return-object v0
.end method

.method public static isWINS(Ljava/net/InetAddress;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    if-eqz p0, :cond_1b

    .line 5
    sget-object v2, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 7
    array-length v3, v2

    .line 8
    if-lt v1, v3, :cond_a

    .line 10
    goto :goto_1b

    .line 11
    :cond_a
    invoke-virtual {p0}, Ljava/net/InetAddress;->hashCode()I

    .line 14
    move-result v3

    .line 15
    aget-object v2, v2, v1

    .line 17
    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    .line 20
    move-result v2

    .line 21
    if-ne v3, v2, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_2

    .line 28
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static switchWINS()Ljava/net/InetAddress;
    .registers 4

    .line 1
    sget v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    sget-object v2, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 7
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_c

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    sput v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 16
    array-length v1, v2

    .line 17
    if-nez v1, :cond_14

    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    aget-object v0, v2, v0

    .line 23
    :goto_16
    return-object v0
.end method

.method private static updateLookupTable(Ljcifs/netbios/Name;)V
    .registers 2

    .line 1
    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    .line 14
    throw p0
.end method


# virtual methods
.method public checkData()V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 3
    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    .line 5
    if-ne v0, v1, :cond_9

    .line 7
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    .line 10
    :cond_9
    return-void
.end method

.method public checkNodeStatusData()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    .line 8
    :cond_7
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_10

    .line 3
    instance-of v0, p1, Ljcifs/netbios/NbtAddress;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    check-cast p1, Ljcifs/netbios/NbtAddress;

    .line 9
    iget p1, p1, Ljcifs/netbios/NbtAddress;->address:I

    .line 11
    iget v0, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 13
    if-ne p1, v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public firstCalledName()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 3
    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 15
    move-result v0

    .line 16
    const-string v2, "*SMBSERVER     "

    .line 18
    if-eqz v0, :cond_44

    .line 20
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    iget-object v3, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 31
    move-result-object v3

    .line 32
    move v4, v1

    .line 33
    :goto_20
    if-ge v1, v0, :cond_4e

    .line 35
    add-int/lit8 v5, v1, 0x1

    .line 37
    aget-char v1, v3, v1

    .line 39
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2d

    .line 45
    goto :goto_4e

    .line 46
    :cond_2d
    if-ne v5, v0, :cond_35

    .line 48
    const/4 v1, 0x3

    .line 49
    if-ne v4, v1, :cond_35

    .line 51
    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 53
    goto :goto_4e

    .line 54
    :cond_35
    if-ge v5, v0, :cond_42

    .line 56
    aget-char v1, v3, v5

    .line 58
    const/16 v6, 0x2e

    .line 60
    if-ne v1, v6, :cond_42

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 64
    add-int/lit8 v1, v5, 0x1

    .line 66
    goto :goto_20

    .line 67
    :cond_42
    move v1, v5

    .line 68
    goto :goto_20

    .line 69
    :cond_44
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 71
    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    .line 73
    packed-switch v0, :pswitch_data_52

    .line 76
    goto :goto_4e

    .line 77
    :pswitch_4c  #0x1b, 0x1c, 0x1d
    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 79
    :cond_4e
    :goto_4e
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 81
    return-object v0

    .line 82
    nop

    .line 83
    :pswitch_data_52
    .packed-switch 0x1b
        :pswitch_4c  #0000001b
        :pswitch_4c  #0000001c
        :pswitch_4c  #0000001d
    .end packed-switch
.end method

.method public getAddress()[B
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 6
    ushr-int/lit8 v2, v1, 0x18

    .line 8
    and-int/lit16 v2, v2, 0xff

    .line 10
    int-to-byte v2, v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-byte v2, v0, v3

    .line 14
    ushr-int/lit8 v2, v1, 0x10

    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 18
    int-to-byte v2, v2

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-byte v2, v0, v3

    .line 22
    ushr-int/lit8 v2, v1, 0x8

    .line 24
    and-int/lit16 v2, v2, 0xff

    .line 26
    int-to-byte v2, v2

    .line 27
    const/4 v3, 0x2

    .line 28
    aput-byte v2, v0, v3

    .line 30
    and-int/lit16 v1, v1, 0xff

    .line 32
    int-to-byte v1, v1

    .line 33
    const/4 v2, 0x3

    .line 34
    aput-byte v1, v0, v2

    .line 36
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 5
    ushr-int/lit8 v1, v1, 0x18

    .line 7
    and-int/lit16 v1, v1, 0xff

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "."

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 23
    ushr-int/lit8 v2, v2, 0x10

    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 35
    ushr-int/lit8 v2, v2, 0x8

    .line 37
    and-int/lit16 v2, v2, 0xff

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 47
    ushr-int/lit8 v1, v1, 0x0

    .line 49
    and-int/lit16 v1, v1, 0xff

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 3
    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    .line 5
    if-ne v0, v1, :cond_b

    .line 7
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 14
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getMacAddress()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 4
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    .line 6
    return-object v0
.end method

.method public getNameType()I
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 3
    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    .line 5
    return v0
.end method

.method public getNodeType()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    .line 4
    iget v0, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 6
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 3
    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 4
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 6
    return v0
.end method

.method public isBeingDeleted()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 4
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 6
    return v0
.end method

.method public isGroupAddress()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    .line 4
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 6
    return v0
.end method

.method public isInConflict()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 4
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 6
    return v0
.end method

.method public isPermanent()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 4
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 6
    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 5
    iget-object v1, v1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 7
    const-string v2, "*SMBSERVER     "

    .line 9
    if-ne v0, v1, :cond_d

    .line 11
    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 13
    goto :goto_41

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    if-ne v0, v2, :cond_3f

    .line 17
    :try_start_10
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    .line 19
    invoke-virtual {v0, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    .line 22
    move-result-object v0

    .line 23
    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 25
    iget v3, v2, Ljcifs/netbios/Name;->hexCode:I

    .line 27
    const/16 v4, 0x1d

    .line 29
    if-ne v3, v4, :cond_33

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_1f
    array-length v3, v0

    .line 33
    if-lt v2, v3, :cond_23

    .line 35
    return-object v1

    .line 36
    :cond_23
    aget-object v3, v0, v2

    .line 38
    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 40
    iget v4, v3, Ljcifs/netbios/Name;->hexCode:I

    .line 42
    const/16 v5, 0x20

    .line 44
    if-ne v4, v5, :cond_30

    .line 46
    iget-object v0, v3, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 48
    return-object v0

    .line 49
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_1f

    .line 52
    :cond_33
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 54
    if-eqz v0, :cond_41

    .line 56
    iput-object v1, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 58
    iget-object v0, v2, Ljcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_3b} :catch_3c

    .line 60
    return-object v0

    .line 61
    :catch_3c
    iput-object v1, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    iput-object v1, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 66
    :cond_41
    :goto_41
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 68
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 5
    invoke-virtual {v1}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "/"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
