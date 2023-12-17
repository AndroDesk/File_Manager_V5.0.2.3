.class public Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;
.super Leu/medsea/mimeutil/detector/MimeDetector;
.source "OpendesktopMimeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;
    }
.end annotation


# static fields
.field public static synthetic class$0:Ljava/lang/Class;

.field private static internalMimeCacheFile:Ljava/lang/String;

.field private static log:Lorg/slf4j/Logger;

.field private static mimeCacheFile:Ljava/lang/String;


# instance fields
.field private content:Ljava/nio/ByteBuffer;

.field private timer:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_4
    const-class v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->class$0:Ljava/lang/Class;

    goto :goto_14

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_14
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v0, "/usr/share/mime/mime.cache"

    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->mimeCacheFile:Ljava/lang/String;

    const-string v0, "src/main/resources/mime.cache"

    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->internalMimeCacheFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    sget-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->mimeCacheFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->init(Ljava/lang/String;)V

    return-void
.end method

.method private _getMimeTypes(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 8

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5c

    :cond_d
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_68
    .catchall {:try_start_0 .. :try_end_12} :catchall_66

    :try_start_12
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_5b

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3c
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_26

    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->isMimeTypeSubclass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_56} :catch_63
    .catchall {:try_start_12 .. :try_end_56} :catchall_60

    goto :goto_40

    :cond_57
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    return-object p2

    :cond_5b
    :goto_5b
    move-object p2, v0

    :cond_5c
    invoke-static {p2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    return-object p1

    :catchall_60
    move-exception p1

    move-object p2, v0

    goto :goto_6f

    :catch_63
    move-exception p1

    move-object p2, v0

    goto :goto_69

    :catchall_66
    move-exception p1

    goto :goto_6f

    :catch_68
    move-exception p1

    :goto_69
    :try_start_69
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    :goto_6f
    invoke-static {p2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw p1
.end method

.method public static synthetic access$0(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V
    .registers 1

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->initMimeTypes()V

    return-void
.end method

.method private aliasLookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getAliasListOffset()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_d
    if-ge v1, v2, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x4

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iget-object v5, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_35

    add-int/lit8 v2, v3, 0x1

    goto :goto_d

    :cond_35
    if-lez v4, :cond_3a

    add-int/lit8 v1, v3, -0x1

    goto :goto_d

    :cond_3a
    invoke-direct {p0, v5}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private compareToMagicData(I[B)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iget-object v2, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    const/4 v2, 0x0

    :goto_19
    if-lt v2, v1, :cond_1d

    const/4 p1, 0x0

    return-object p1

    :cond_1d
    mul-int/lit8 v3, v2, 0x20

    add-int/2addr v3, p1

    invoke-direct {p0, v3, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->matchletMagicCompare(I[B)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method private getAliasListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getGenericIconListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getGlobListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getIconListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error getting InputStream for file ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 6

    :try_start_0
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    new-instance v1, Leu/medsea/mimeutil/MimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error getting InputStream for URL ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getLiteralListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getMagicListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getMajorVersion()S
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method private getMaxExtents()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMagicListOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getMimeType(I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMinorVersion()S
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method private getNameSpaceListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getParentListOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getReverseSuffixTreeOffset()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getString(IZ)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_10
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v1, v1

    if-nez v1, :cond_32

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz p2, :cond_2d

    const/4 p2, 0x0

    const/16 v0, 0x5e

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    const/16 p2, 0x24

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2d
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_32
    if-eqz p2, :cond_50

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_45

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_4b

    goto :goto_50

    :cond_45
    const-string v2, "\\"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_4b
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_50
    :goto_50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10
.end method

.method private init(Ljava/lang/String;)V
    .registers 11

    invoke-static {p1}, La/a;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->internalMimeCacheFile:Ljava/lang/String;

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->initMimeTypes()V

    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Registering a FileWatcher for ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_46
    new-instance v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/io/File;)V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->timer:Ljava/util/Timer;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-wide/16 v3, 0x2710

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_72
    .catchall {:try_start_9 .. :try_end_61} :catchall_70

    :try_start_61
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_6f

    :catch_65
    move-exception p1

    sget-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6f
    return-void

    :catchall_70
    move-exception p1

    goto :goto_79

    :catch_72
    move-exception p1

    :try_start_73
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_70

    :goto_79
    if-eqz v0, :cond_89

    :try_start_7b
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_89

    :catch_7f
    move-exception v0

    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    throw p1
.end method

.method private initMimeTypes()V
    .registers 7

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getAliasListOffset()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-lt v2, v1, :cond_e

    return-void

    :cond_e
    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x4

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method private isMimeTypeSubclass(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->unaliasMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->unaliasMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    new-instance v1, Leu/medsea/mimeutil/MimeType;

    invoke-direct {v1, p2}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1a

    return v3

    :cond_1a
    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->isSuperType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    return v3

    :cond_2f
    const-string v1, "text/plain"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    return v3

    :cond_44
    const-string v0, "application/octet-stream"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v3

    :cond_4d
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getParentListOffset()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    move v4, v2

    :goto_5a
    if-ge v1, v4, :cond_5d

    goto :goto_8f

    :cond_5d
    add-int v5, v4, v1

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v0, 0x4

    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_79

    add-int/lit8 v4, v5, 0x1

    goto :goto_5a

    :cond_79
    if-lez v6, :cond_7e

    add-int/lit8 v1, v5, -0x1

    goto :goto_5a

    :cond_7e
    iget-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    move v1, v2

    :goto_8d
    if-lt v1, v0, :cond_90

    :goto_8f
    return v2

    :cond_90
    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, p1, 0x4

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->isMimeTypeSubclass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    return v3

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d
.end method

.method private isSuperType(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private lookupGlobFileNameMatch(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 10

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getGlobListOffset()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-lt v2, v1, :cond_e

    return-void

    :cond_e
    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x4

    mul-int/lit8 v5, v2, 0xc

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v5, 0x4

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iget-object v6, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    new-instance v6, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    invoke-direct {v6, p0, v4, v3, v5}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method private lookupGlobLiteral(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 10

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getLiteralListOffset()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_d
    if-ge v1, v2, :cond_10

    return-void

    :cond_10
    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x4

    mul-int/lit8 v6, v3, 0xc

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2c

    add-int/lit8 v2, v3, 0x1

    goto :goto_d

    :cond_2c
    if-lez v5, :cond_31

    add-int/lit8 v1, v3, -0x1

    goto :goto_d

    :cond_31
    iget-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v6, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    new-instance v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    invoke-direct {v1, p0, p1, v4, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private lookupGlobNodeSuffix(Ljava/lang/String;IIZILjava/util/Collection;Ljava/lang/StringBuffer;)V
    .registers 21

    move-object v8, p0

    if-eqz p4, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p5, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-object v1, p1

    goto :goto_16

    :cond_f
    add-int/lit8 v0, p5, -0x1

    move-object v1, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_16
    if-nez v0, :cond_19

    return-void

    :cond_19
    add-int/lit8 v2, p2, -0x1

    const/4 v9, 0x0

    move v3, v9

    :goto_1d
    if-lt v2, v3, :cond_9e

    if-gez p5, :cond_23

    goto/16 :goto_9e

    :cond_23
    add-int v4, v3, v2

    div-int/lit8 v4, v4, 0x2

    iget-object v5, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    mul-int/lit8 v6, v4, 0xc

    add-int v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-char v5, v5

    if-ge v5, v0, :cond_37

    add-int/lit8 v3, v4, 0x1

    goto :goto_1d

    :cond_37
    if-le v5, v0, :cond_3c

    add-int/lit8 v2, v4, -0x1

    goto :goto_1d

    :cond_3c
    add-int/lit8 v7, p5, -0x1

    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v6, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    move-object/from16 v12, p7

    if-lez v7, :cond_63

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move v3, v11

    move/from16 v4, p4

    move v5, v7

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobNodeSuffix(Ljava/lang/String;IIZILjava/util/Collection;Ljava/lang/StringBuffer;)V

    :cond_63
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9e

    :goto_69
    if-lt v9, v10, :cond_6c

    goto :goto_9e

    :cond_6c
    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0xc

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-char v0, v0

    if-eqz v0, :cond_79

    goto :goto_9e

    :cond_79
    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iget-object v2, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    new-instance v2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    :cond_9e
    :goto_9e
    return-void
.end method

.method private lookupGlobSuffix(Ljava/lang/String;ZILjava/util/Collection;)V
    .registers 15

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getReverseSuffixTreeOffset()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobNodeSuffix(Ljava/lang/String;IIZILjava/util/Collection;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method private lookupMagicData([B)Ljava/util/Collection;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMagicListOffset()I

    move-result v1

    iget-object v2, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const/4 v3, 0x0

    :goto_18
    if-lt v3, v2, :cond_1b

    return-object v0

    :cond_1b
    mul-int/lit8 v4, v3, 0x10

    add-int/2addr v4, v1

    invoke-direct {p0, v4, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->compareToMagicData(I[B)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_28
    iget-object v5, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method

.method private lookupMimeTypesForGlobFileName(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobLiteral(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobSuffix(Ljava/lang/String;ZILjava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobSuffix(Ljava/lang/String;ZILjava/util/Collection;)V

    :cond_1f
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p1, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobFileNameMatch(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_28
    return-void
.end method

.method private lookupMimeTypesForMagicData(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 6

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMaxExtents()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    :goto_a
    if-gtz v0, :cond_d

    goto :goto_13

    :cond_d
    :try_start_d
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_27
    .catchall {:try_start_d .. :try_end_11} :catchall_25

    if-gez v3, :cond_22

    :goto_13
    :try_start_13
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1b

    invoke-direct {p0, v1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMagicData([B)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :catch_1b
    move-exception p1

    new-instance v0, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_22
    add-int/2addr v2, v3

    sub-int/2addr v0, v3

    goto :goto_a

    :catchall_25
    move-exception v0

    goto :goto_2e

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v1, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_25

    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    throw v0

    :catch_32
    move-exception p1

    new-instance v0, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private matchletMagicCompare(I[B)Z
    .registers 15

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iget-object v2, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p1, 0xc

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, p1, 0x10

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x14

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    move v4, v0

    :goto_27
    add-int v5, v0, v1

    const/4 v6, 0x0

    if-le v4, v5, :cond_2d

    return v6

    :cond_2d
    add-int v5, v4, v2

    array-length v7, p2

    if-le v5, v7, :cond_33

    return v6

    :cond_33
    const/4 v5, 0x1

    if-eqz p1, :cond_5c

    move v7, v6

    :goto_37
    if-lt v7, v2, :cond_3a

    goto :goto_5f

    :cond_3a
    iget-object v8, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    iget-object v9, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int v10, p1, v7

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/2addr v8, v9

    add-int v9, v7, v4

    aget-byte v9, p2, v9

    iget-object v11, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/2addr v9, v10

    if-eq v8, v9, :cond_59

    goto :goto_6f

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_5c
    move v7, v6

    :goto_5d
    if-lt v7, v2, :cond_61

    :goto_5f
    move v6, v5

    goto :goto_6f

    :cond_61
    iget-object v8, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    add-int v9, v7, v4

    aget-byte v9, p2, v9

    if-eq v8, v9, :cond_75

    :goto_6f
    if-eqz v6, :cond_72

    return v5

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d
.end method

.method private normalizeWeightedMimeList(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;

    invoke-direct {v2, p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_44

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    return-object p1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    iget-object v1, p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_20

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    iget v5, v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->weight:I

    if-ge v2, v5, :cond_61

    move v2, v5

    :cond_61
    if-lt v2, v5, :cond_16

    iget-object v5, v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_71

    iget-object v3, v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_71
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private unaliasMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->aliasLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p1, v0

    :goto_8
    return-object p1
.end method


# virtual methods
.method public delete()V
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{MAJOR_VERSION="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMajorVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " MINOR_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMinorVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " ALIAS_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getAliasListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " PARENT_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getParentListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " LITERAL_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getLiteralListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " REVERSE_SUFFIX_TREE_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getReverseSuffixTreeOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " GLOB_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getGlobListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " MAGIC_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMagicListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " NAMESPACE_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getNameSpaceListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " ICONS_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getIconListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " GENERIC_ICONS_LIST_OFFSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getGenericIconListOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Resolve mime types for files and streams using the Opendesktop shared mime.cache file. Version ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMajorVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMinorVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypesByteArray([B)Ljava/util/Collection;
    .registers 2

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMagicData([B)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->_getMimeTypes(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMimeTypesForGlobFileName(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->normalizeWeightedMimeList(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 2

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMimeTypesForMagicData(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->_getMimeTypes(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
