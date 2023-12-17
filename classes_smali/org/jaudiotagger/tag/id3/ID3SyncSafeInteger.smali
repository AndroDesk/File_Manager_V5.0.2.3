.class public Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;
.super Ljava/lang/Object;
.source "ID3SyncSafeInteger.java"


# static fields
.field public static final INTEGRAL_SIZE:I = 0x4

.field public static final MAX_SAFE_SIZE:I = 0x7f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferToValue(Ljava/nio/ByteBuffer;)I
    .registers 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue([B)I

    move-result p0

    return p0
.end method

.method private static bufferToValue([B)I
    .registers 3

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x15

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static isBufferEmpty([B)Z
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_d

    .line 6
    aget-byte v3, p0, v2

    .line 8
    if-eqz v3, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 13
    goto :goto_3

    .line 14
    :cond_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static isBufferNotSyncSafe(Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    const/4 v3, 0x4

    .line 8
    if-ge v2, v3, :cond_18

    .line 10
    add-int v3, v0, v2

    .line 12
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 15
    move-result v3

    .line 16
    and-int/lit16 v3, v3, 0x80

    .line 18
    if-lez v3, :cond_15

    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_6

    .line 25
    :cond_18
    return v1
.end method

.method public static valueToBuffer(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/high16 v1, 0xfe00000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x15

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0x1fc000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xe

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0x3f80

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method
