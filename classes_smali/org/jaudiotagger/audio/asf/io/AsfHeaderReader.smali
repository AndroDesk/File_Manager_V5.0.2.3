.class public Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;
.super Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;
.source "AsfHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader<",
        "Lorg/jaudiotagger/audio/asf/data/AsfHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

.field private static final FULL_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

.field private static final INFO_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

.field private static final TAG_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/io/FileHeaderReader;

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 8
    sget-object v4, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    sput-object v3, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v4, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 28
    invoke-direct {v4, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 31
    sput-object v4, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->INFO_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 36
    const-class v4, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;

    .line 38
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v4, Lorg/jaudiotagger/audio/asf/io/ContentBrandingReader;

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v4, Lorg/jaudiotagger/audio/asf/io/LanguageListReader;

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v4, Lorg/jaudiotagger/audio/asf/io/MetadataReader;

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v4, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;

    .line 58
    invoke-direct {v4, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 61
    new-instance v6, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;

    .line 63
    invoke-direct {v6, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 66
    new-instance v7, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 68
    invoke-direct {v7, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 71
    sput-object v7, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->TAG_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 73
    invoke-virtual {v7, v4}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;)V

    .line 76
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-class v0, Lorg/jaudiotagger/audio/asf/io/EncodingChunkReader;

    .line 84
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const-class v0, Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;

    .line 89
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const-class v0, Lorg/jaudiotagger/audio/asf/io/StreamBitratePropertiesReader;

    .line 94
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 99
    invoke-direct {v0, v3, v5}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 102
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 104
    invoke-virtual {v0, v6}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;-><init>(Ljava/util/List;Z)V

    .line 4
    return-void
.end method

.method private static createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;

    .line 3
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 5
    new-instance v2, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;

    .line 7
    invoke-direct {v2, p0}, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;-><init>(Ljava/io/RandomAccessFile;)V

    .line 10
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 13
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    return-object v0
.end method

.method public static readHeader(Ljava/io/File;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    sget-object p0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 5

    .line 4
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object p0

    .line 5
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    return-object p0
.end method

.method public static readInfoHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 5

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->INFO_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 7
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    move-result-object v1

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    .line 19
    return-object p0
.end method

.method public static readTagHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 5

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->TAG_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 7
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    move-result-object v1

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    .line 19
    return-object p0
.end method


# virtual methods
.method public canFail()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 11

    .line 2
    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 3
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result v0

    const-string v1, "No ASF"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    .line 4
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1d

    .line 5
    new-instance p4, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    move-object v0, p4

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;-><init>(JLjava/math/BigInteger;J)V

    return-object p4

    .line 6
    :cond_1d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_23
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    move-result-object p1

    return-object p1
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    return-object v0
.end method

.method public setExtendedHeaderReader(Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_12

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget-object v4, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    .line 13
    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_6

    .line 19
    :cond_12
    return-void
.end method
