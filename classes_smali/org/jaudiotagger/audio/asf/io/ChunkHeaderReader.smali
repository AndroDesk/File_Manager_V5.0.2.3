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

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    new-instance v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->INSTANCE:Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;
    .registers 1

    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->INSTANCE:Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;

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

    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 10

    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x18

    sub-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/InputStream;->skip(J)J

    new-instance p2, Lorg/jaudiotagger/audio/asf/data/Chunk;

    invoke-direct {p2, p1, p3, p4, v0}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object p2
.end method
