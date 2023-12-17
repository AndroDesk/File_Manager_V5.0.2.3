.class Lorg/jaudiotagger/audio/asf/io/EncodingChunkReader;
.super Ljava/lang/Object;
.source "EncodingChunkReader.java"

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
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_ENCODING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/EncodingChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/EncodingChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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
    .registers 10

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/EncodingChunk;

    .line 7
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncodingChunk;-><init>(Ljava/math/BigInteger;)V

    .line 10
    const-wide/16 v1, 0x14

    .line 12
    invoke-virtual {p2, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 15
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x2e

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_15
    if-ge v3, v1, :cond_2a

    .line 24
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readCharacterSizedString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/asf/data/EncodingChunk;->addString(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 34
    move-result v4

    .line 35
    mul-int/lit8 v4, v4, 0x2

    .line 37
    add-int/lit8 v4, v4, 0x4

    .line 39
    add-int/2addr v2, v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_15

    .line 43
    :cond_2a
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    .line 46
    move-result-wide v3

    .line 47
    int-to-long v1, v2

    .line 48
    sub-long/2addr v3, v1

    .line 49
    invoke-virtual {p2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 52
    invoke-virtual {v0, p3, p4}, Lorg/jaudiotagger/audio/asf/data/Chunk;->setPosition(J)V

    .line 55
    return-object v0
.end method
