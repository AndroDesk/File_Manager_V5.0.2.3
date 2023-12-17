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

    const-class v0, Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;

    const-class v1, Lorg/jaudiotagger/audio/asf/io/FileHeaderReader;

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/jaudiotagger/audio/asf/data/GUID;

    sget-object v4, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sput-object v3, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-direct {v4, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v4, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->INFO_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-class v4, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/jaudiotagger/audio/asf/io/ContentBrandingReader;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/jaudiotagger/audio/asf/io/LanguageListReader;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/jaudiotagger/audio/asf/io/MetadataReader;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;

    invoke-direct {v4, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    new-instance v6, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;

    invoke-direct {v6, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    new-instance v7, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-direct {v7, v3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v7, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->TAG_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v7, v4}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lorg/jaudiotagger/audio/asf/io/EncodingChunkReader;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lorg/jaudiotagger/audio/asf/io/StreamBitratePropertiesReader;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-direct {v0, v3, v5}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v0, v6}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;)V

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

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method private static createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;
    .registers 4

    new-instance v0, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;

    invoke-direct {v2, p0}, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static readHeader(Ljava/io/File;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 5

    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object p0

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

    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->INFO_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    return-object p0
.end method

.method public static readTagHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;
    .registers 5

    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->TAG_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

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

    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result v0

    const-string v1, "No ASF"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1d

    new-instance p4, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    move-object v0, p4

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;-><init>(JLjava/math/BigInteger;J)V

    return-object p4

    :cond_1d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    move-result-object p1

    return-object p1
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object v0
.end method

.method public setExtendedHeaderReader(Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;)V
    .registers 7

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method
