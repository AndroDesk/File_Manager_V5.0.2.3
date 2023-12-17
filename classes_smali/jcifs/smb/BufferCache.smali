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

    const-string v0, "jcifs.smb.maxBuffers"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer()[B
    .registers 5

    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    if-lez v1, :cond_23

    const/4 v1, 0x0

    :goto_8
    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-lt v1, v2, :cond_d

    goto :goto_23

    :cond_d
    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-eqz v3, :cond_20

    check-cast v3, [B

    const/4 v4, 0x0

    aput-object v4, v2, v1

    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    monitor-exit v0

    return-object v3

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    :goto_23
    const v1, 0xffff

    new-array v1, v1, [B

    monitor-exit v0

    return-object v1

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V
    .registers 4

    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object p0

    iput-object p0, p1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static releaseBuffer([B)V
    .registers 5

    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v1, v2, :cond_22

    const/4 v1, 0x0

    :goto_a
    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-lt v1, v2, :cond_f

    goto :goto_22

    :cond_f
    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_1f

    aput-object p0, v2, v1

    sget p0, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Ljcifs/smb/BufferCache;->freeBuffers:I

    monitor-exit v0

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method
