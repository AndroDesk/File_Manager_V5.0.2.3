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

    const-string v0, "org.jaudiotagger.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->logger:Ljava/util/logging/Logger;

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    const/4 v0, 0x0

    sput-boolean v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCRC([B)[B
    .registers 13

    sget-boolean v0, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    if-nez v0, :cond_7

    invoke-static {}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init()V

    :cond_7
    const-wide/16 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    const/16 v5, 0x18

    const/16 v6, 0x8

    const-wide/16 v7, 0xff

    if-ge v4, v2, :cond_2c

    aget-byte v9, p0, v4

    ushr-long v10, v0, v5

    and-long/2addr v7, v10

    invoke-static {v9}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->u(I)I

    move-result v5

    int-to-long v9, v5

    xor-long/2addr v7, v9

    long-to-int v5, v7

    shl-long/2addr v0, v6

    sget-object v6, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    aget-wide v5, v6, v5

    xor-long/2addr v0, v5

    const-wide/16 v5, -0x1

    and-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_2c
    const/4 p0, 0x4

    new-array p0, p0, [B

    and-long v9, v0, v7

    long-to-int v2, v9

    int-to-byte v2, v2

    aput-byte v2, p0, v3

    ushr-long v2, v0, v6

    and-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p0, v3

    const/4 v2, 0x2

    const/16 v3, 0x10

    ushr-long v3, v0, v3

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x3

    ushr-long/2addr v0, v5

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    return-object p0
.end method

.method public static init()V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x100

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2c

    shl-int/lit8 v2, v1, 0x18

    int-to-long v4, v2

    move v2, v0

    :goto_b
    const/16 v6, 0x8

    if-ge v2, v6, :cond_25

    const-wide v6, 0x80000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_21

    shl-long/2addr v4, v3

    const-wide/32 v6, 0x4c11db7

    xor-long/2addr v4, v6

    goto :goto_22

    :cond_21
    shl-long/2addr v4, v3

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_25
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2c
    sput-boolean v3, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->init:Z

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

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    new-instance p2, Ljava/lang/String;

    invoke-static {p1}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
