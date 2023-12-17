.class public Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;
.super Ljava/lang/Object;
.source "OggCRCFactory.java"


# static fields
.field private static crc_lookup:[J

.field private static init:Z

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->logger:Ljava/util/logging/Logger;

    .line 9
    const/16 v0, 0x100

    .line 11
    new-array v0, v0, [J

    .line 13
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCRC([B)[B
    .registers 13

    .line 1
    sget-boolean v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-static {}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init()V

    .line 8
    :cond_7
    const-wide/16 v0, 0x0

    .line 10
    array-length v2, p0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_c
    const/16 v5, 0x18

    .line 15
    const/16 v6, 0x8

    .line 17
    const-wide/16 v7, 0xff

    .line 19
    if-ge v4, v2, :cond_2c

    .line 21
    aget-byte v9, p0, v4

    .line 23
    ushr-long v10, v0, v5

    .line 25
    and-long/2addr v7, v10

    .line 26
    invoke-static {v9}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->u(I)I

    .line 29
    move-result v5

    .line 30
    int-to-long v9, v5

    .line 31
    xor-long/2addr v7, v9

    .line 32
    long-to-int v5, v7

    .line 33
    shl-long/2addr v0, v6

    .line 34
    sget-object v6, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    .line 36
    aget-wide v5, v6, v5

    .line 38
    xor-long/2addr v0, v5

    .line 39
    const-wide/16 v5, -0x1

    .line 41
    and-long/2addr v0, v5

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_c

    .line 45
    :cond_2c
    const/4 p0, 0x4

    .line 46
    new-array p0, p0, [B

    .line 48
    and-long v9, v0, v7

    .line 50
    long-to-int v2, v9

    .line 51
    int-to-byte v2, v2

    .line 52
    aput-byte v2, p0, v3

    .line 54
    ushr-long v2, v0, v6

    .line 56
    and-long/2addr v2, v7

    .line 57
    long-to-int v2, v2

    .line 58
    int-to-byte v2, v2

    .line 59
    const/4 v3, 0x1

    .line 60
    aput-byte v2, p0, v3

    .line 62
    const/4 v2, 0x2

    .line 63
    const/16 v3, 0x10

    .line 65
    ushr-long v3, v0, v3

    .line 67
    and-long/2addr v3, v7

    .line 68
    long-to-int v3, v3

    .line 69
    int-to-byte v3, v3

    .line 70
    aput-byte v3, p0, v2

    .line 72
    const/4 v2, 0x3

    .line 73
    ushr-long/2addr v0, v5

    .line 74
    and-long/2addr v0, v7

    .line 75
    long-to-int v0, v0

    .line 76
    int-to-byte v0, v0

    .line 77
    aput-byte v0, p0, v2

    .line 79
    return-object p0
.end method

.method public static init()V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/16 v2, 0x100

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ge v1, v2, :cond_2c

    .line 8
    shl-int/lit8 v2, v1, 0x18

    .line 10
    int-to-long v4, v2

    .line 11
    move v2, v0

    .line 12
    :goto_b
    const/16 v6, 0x8

    .line 14
    if-ge v2, v6, :cond_25

    .line 16
    const-wide v6, 0x80000000L

    .line 21
    and-long/2addr v6, v4

    .line 22
    const-wide/16 v8, 0x0

    .line 24
    cmp-long v6, v6, v8

    .line 26
    if-eqz v6, :cond_21

    .line 28
    shl-long/2addr v4, v3

    .line 29
    const-wide/32 v6, 0x4c11db7

    .line 32
    xor-long/2addr v4, v6

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    shl-long/2addr v4, v3

    .line 35
    :goto_22
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_b

    .line 38
    :cond_25
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    .line 40
    aput-wide v4, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_2

    .line 45
    :cond_2c
    sput-boolean v3, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    .line 47
    return-void
.end method

.method private static u(I)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public checkCRC([B[B)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 6
    new-instance p2, Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->computeCRC([B)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method
