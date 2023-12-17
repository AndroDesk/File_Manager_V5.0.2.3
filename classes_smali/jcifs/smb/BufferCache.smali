.class public Ljcifs/smb/BufferCache;
.super Ljava/lang/Object;
.source "BufferCache.java"


# static fields
.field private static final MAX_BUFFERS:I

.field public static cache:[Ljava/lang/Object;

.field private static freeBuffers:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.smb.maxBuffers"

    .line 3
    const/16 v1, 0x10

    .line 5
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    sput v0, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    sput-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    .line 16
    sput v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer()[B
    .registers 5

    .line 1
    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 6
    if-lez v1, :cond_23

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    .line 11
    if-lt v1, v2, :cond_d

    .line 13
    goto :goto_23

    .line 14
    :cond_d
    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 16
    aget-object v3, v2, v1

    .line 18
    if-eqz v3, :cond_20

    .line 20
    check-cast v3, [B

    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v4, v2, v1

    .line 25
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 29
    sput v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 31
    monitor-exit v0

    .line 32
    return-object v3

    .line 33
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_8

    .line 36
    :cond_23
    :goto_23
    const v1, 0xffff

    .line 39
    new-array v1, v1, [B

    .line 41
    monitor-exit v0

    .line 42
    return-object v1

    .line 43
    :catchall_2a
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    .line 45
    throw v1
.end method

.method public static getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V
    .registers 4

    .line 1
    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 10
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    .line 13
    move-result-object p0

    .line 14
    iput-object p0, p1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    .line 20
    throw p0
.end method

.method public static releaseBuffer([B)V
    .registers 5

    .line 1
    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 6
    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    .line 8
    if-ge v1, v2, :cond_22

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    .line 13
    if-lt v1, v2, :cond_f

    .line 15
    goto :goto_22

    .line 16
    :cond_f
    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 18
    aget-object v3, v2, v1

    .line 20
    if-nez v3, :cond_1f

    .line 22
    aput-object p0, v2, v1

    .line 24
    sget p0, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 26
    add-int/lit8 p0, p0, 0x1

    .line 28
    sput p0, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_a

    .line 35
    :cond_22
    :goto_22
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_24
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    .line 39
    throw p0
.end method
