.class Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;
.super Ljava/lang/Object;
.source "EncryptionChunkReader.java"

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
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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
    .registers 12

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;

    .line 7
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;-><init>(Ljava/math/BigInteger;)V

    .line 10
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 13
    move-result-wide v1

    .line 14
    long-to-int p1, v1

    .line 15
    add-int/lit8 v1, p1, 0x1

    .line 17
    new-array v1, v1, [B

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p2, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 23
    aput-byte v2, v1, p1

    .line 25
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 28
    move-result-wide v3

    .line 29
    long-to-int p1, v3

    .line 30
    add-int/lit8 v3, p1, 0x1

    .line 32
    new-array v3, v3, [B

    .line 34
    invoke-virtual {p2, v3, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 37
    aput-byte v2, v3, p1

    .line 39
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 42
    move-result-wide v4

    .line 43
    long-to-int p1, v4

    .line 44
    add-int/lit8 v4, p1, 0x1

    .line 46
    new-array v4, v4, [B

    .line 48
    invoke-virtual {p2, v4, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 51
    aput-byte v2, v4, p1

    .line 53
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 56
    move-result-wide v5

    .line 57
    long-to-int p1, v5

    .line 58
    add-int/lit8 v5, p1, 0x1

    .line 60
    new-array v5, v5, [B

    .line 62
    invoke-virtual {p2, v5, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 65
    aput-byte v2, v5, p1

    .line 67
    new-instance p1, Ljava/lang/String;

    .line 69
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 72
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setSecretData(Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/lang/String;

    .line 77
    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .line 80
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setProtectionType(Ljava/lang/String;)V

    .line 83
    new-instance p1, Ljava/lang/String;

    .line 85
    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    .line 88
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setKeyID(Ljava/lang/String;)V

    .line 91
    new-instance p1, Ljava/lang/String;

    .line 93
    invoke-direct {p1, v5}, Ljava/lang/String;-><init>([B)V

    .line 96
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setLicenseURL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p3, p4}, Lorg/jaudiotagger/audio/asf/data/Chunk;->setPosition(J)V

    .line 102
    return-object v0
.end method
