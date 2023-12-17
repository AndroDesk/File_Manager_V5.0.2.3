.class public Lorg/jaudiotagger/audio/asf/io/StreamBitratePropertiesReader;
.super Ljava/lang/Object;
.source "StreamBitratePropertiesReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/StreamBitratePropertiesReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public canFail()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/StreamBitratePropertiesReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 11

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;

    .line 7
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;-><init>(Ljava/math/BigInteger;)V

    .line 10
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 13
    move-result p1

    .line 14
    int-to-long v1, p1

    .line 15
    const/4 p1, 0x0

    .line 16
    :goto_f
    int-to-long v3, p1

    .line 17
    cmp-long v3, v3, v1

    .line 19
    if-gez v3, :cond_24

    .line 21
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 24
    move-result v3

    .line 25
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 28
    move-result-wide v4

    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 31
    invoke-virtual {v0, v3, v4, v5}, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->addBitrateRecord(IJ)V

    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 36
    goto :goto_f

    .line 37
    :cond_24
    invoke-virtual {v0, p3, p4}, Lorg/jaudiotagger/audio/asf/data/Chunk;->setPosition(J)V

    .line 40
    return-object v0
.end method
