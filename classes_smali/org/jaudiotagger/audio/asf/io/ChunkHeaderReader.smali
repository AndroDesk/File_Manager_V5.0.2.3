.class final Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;
.super Ljava/lang/Object;
.source "ChunkHeaderReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

.field private static final INSTANCE:Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;

    .line 13
    invoke-direct {v0}, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;-><init>()V

    .line 16
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->INSTANCE:Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->INSTANCE:Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;

    .line 3
    return-object v0
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
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x18

    .line 11
    sub-long/2addr v1, v3

    .line 12
    invoke-virtual {p2, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 15
    new-instance p2, Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 17
    invoke-direct {p2, p1, p3, p4, v0}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 20
    return-object p2
.end method
