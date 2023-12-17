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

    .line 1
    sget-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->class$0:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_14

    .line 5
    :try_start_4
    const-class v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    .line 7
    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->class$0:Ljava/lang/Class;

    .line 9
    goto :goto_14

    .line 10
    :catch_9
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 20
    throw v1

    .line 21
    :cond_14
    :goto_14
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    .line 27
    const-string v0, "/usr/share/mime/mime.cache"

    .line 29
    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->mimeCacheFile:Ljava/lang/String;

    .line 31
    const-string v0, "src/main/resources/mime.cache"

    .line 33
    sput-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->internalMimeCacheFile:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    .line 4
    sget-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->mimeCacheFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->init(Ljava/lang/String;)V

    return-void
.end method

.method private _getMimeTypes(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 8

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_5c

    .line 14
    :cond_d
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 16
    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_68
    .catchall {:try_start_0 .. :try_end_12} :catchall_66

    .line 19
    :try_start_12
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_5b

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_57

    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2d

    .line 45
    goto :goto_5b

    .line 46
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3c

    .line 58
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_3c
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v3

    .line 65
    :cond_40
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_47

    .line 71
    goto :goto_26

    .line 72
    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/String;

    .line 78
    invoke-direct {p0, v2, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->isMimeTypeSubclass(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_40

    .line 84
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_56} :catch_63
    .catchall {:try_start_12 .. :try_end_56} :catchall_60

    .line 87
    goto :goto_40

    .line 88
    :cond_57
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 91
    return-object p2

    .line 92
    :cond_5b
    :goto_5b
    move-object p2, v0

    .line 93
    :cond_5c
    invoke-static {p2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 96
    return-object p1

    .line 97
    :catchall_60
    move-exception p1

    .line 98
    move-object p2, v0

    .line 99
    goto :goto_6f

    .line 100
    :catch_63
    move-exception p1

    .line 101
    move-object p2, v0

    .line 102
    goto :goto_69

    .line 103
    :catchall_66
    move-exception p1

    .line 104
    goto :goto_6f

    .line 105
    :catch_68
    move-exception p1

    .line 106
    :goto_69
    :try_start_69
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    .line 108
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    throw v0
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    .line 112
    :goto_6f
    invoke-static {p2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 115
    throw p1
.end method

.method public static synthetic access$0(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->initMimeTypes()V

    .line 4
    return-void
.end method

.method private aliasLookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getAliasListOffset()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v1, v2, :cond_11

    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_11
    add-int v3, v2, v1

    .line 20
    div-int/lit8 v3, v3, 0x2

    .line 22
    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 24
    add-int/lit8 v5, v0, 0x4

    .line 26
    mul-int/lit8 v6, v3, 0x8

    .line 28
    add-int/2addr v6, v5

    .line 29
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 32
    move-result v4

    .line 33
    iget-object v5, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 35
    add-int/lit8 v6, v6, 0x4

    .line 37
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 40
    move-result v5

    .line 41
    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 48
    move-result v4

    .line 49
    if-gez v4, :cond_35

    .line 51
    add-int/lit8 v2, v3, 0x1

    .line 53
    goto :goto_d

    .line 54
    :cond_35
    if-lez v4, :cond_3a

    .line 56
    add-int/lit8 v1, v3, -0x1

    .line 58
    goto :goto_d

    .line 59
    :cond_3a
    invoke-direct {p0, v5}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method private compareToMagicData(I[B)Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    add-int/lit8 v1, p1, 0x4

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 11
    add-int/lit8 v2, p1, 0x8

    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 19
    add-int/lit8 p1, p1, 0xc

    .line 21
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 24
    move-result p1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_19
    if-lt v2, v1, :cond_1d

    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    :cond_1d
    mul-int/lit8 v3, v2, 0x20

    .line 32
    add-int/2addr v3, p1

    .line 33
    invoke-direct {p0, v3, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->matchletMagicCompare(I[B)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2b

    .line 39
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_19
.end method

.method private getAliasListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method private getGenericIconListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0x24

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getGlobListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0x14

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getIconListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0x20

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2
    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error getting InputStream for file ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 6

    .line 5
    :try_start_0
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    .line 6
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error getting InputStream for URL ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v1, p1, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getLiteralListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getMagicListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0x18

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getMajorVersion()S
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method private getMaxExtents()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMagicListOffset()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private getMimeType(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private getMinorVersion()S
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method private getNameSpaceListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0x1c

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getParentListOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getReverseSuffixTreeOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    const/16 v1, 0x10

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getString(IZ)Ljava/lang/String;
    .registers 6

    .line 2
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 3
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    :goto_10
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v1, v1

    if-nez v1, :cond_32

    .line 6
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz p2, :cond_2d

    const/4 p2, 0x0

    const/16 v0, 0x5e

    .line 7
    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    const/16 p2, 0x24

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
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

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_4b
    const-string v2, "."

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_50
    :goto_50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10
.end method

.method private init(Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-static {p1}, La/a;->A(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    sget-object p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->internalMimeCacheFile:Ljava/lang/String;

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :try_start_9
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 12
    const-string v2, "r"

    .line 14
    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 20
    move-result-object v0

    .line 21
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 23
    const-wide/16 v5, 0x0

    .line 25
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 28
    move-result-wide v7

    .line 29
    move-object v3, v0

    .line 30
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 36
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->initMimeTypes()V

    .line 39
    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    .line 41
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_46

    .line 47
    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    .line 49
    new-instance v2, Ljava/lang/StringBuffer;

    .line 51
    const-string v3, "Registering a FileWatcher for ["

    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v3, "]"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 71
    :cond_46
    new-instance v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;

    .line 73
    new-instance v2, Ljava/io/File;

    .line 75
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-direct {v1, p0, v2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/io/File;)V

    .line 81
    new-instance p1, Ljava/util/Timer;

    .line 83
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 86
    iput-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->timer:Ljava/util/Timer;

    .line 88
    new-instance v2, Ljava/util/Date;

    .line 90
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 93
    const-wide/16 v3, 0x2710

    .line 95
    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_72
    .catchall {:try_start_9 .. :try_end_61} :catchall_70

    .line 98
    :try_start_61
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    .line 101
    goto :goto_6f

    .line 102
    :catch_65
    move-exception p1

    .line 103
    sget-object v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :goto_6f
    return-void

    .line 113
    :catchall_70
    move-exception p1

    .line 114
    goto :goto_79

    .line 115
    :catch_72
    move-exception p1

    .line 116
    :try_start_73
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    .line 118
    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    throw v1
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_70

    .line 122
    :goto_79
    if-eqz v0, :cond_89

    .line 124
    :try_start_7b
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 127
    goto :goto_89

    .line 128
    :catch_7f
    move-exception v0

    .line 129
    sget-object v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->log:Lorg/slf4j/Logger;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_89
    :goto_89
    throw p1
.end method

.method private initMimeTypes()V
    .registers 7

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getAliasListOffset()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-lt v2, v1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 17
    add-int/lit8 v4, v0, 0x4

    .line 19
    mul-int/lit8 v5, v2, 0x8

    .line 21
    add-int/2addr v4, v5

    .line 22
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 25
    move-result v3

    .line 26
    invoke-direct {p0, v3}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 35
    add-int/lit8 v4, v0, 0x8

    .line 37
    add-int/2addr v4, v5

    .line 38
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 41
    move-result v3

    .line 42
    invoke-direct {p0, v3}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_b
.end method

.method private isMimeTypeSubclass(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->unaliasMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->unaliasMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 11
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v1, Leu/medsea/mimeutil/MimeType;

    .line 16
    invoke-direct {v1, p2}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-nez v2, :cond_1a

    .line 26
    return v3

    .line 27
    :cond_1a
    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->isSuperType(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2f

    .line 33
    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2f

    .line 47
    return v3

    .line 48
    :cond_2f
    const-string v1, "text/plain"

    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_44

    .line 56
    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    const-string v1, "text"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_44

    .line 68
    return v3

    .line 69
    :cond_44
    const-string v0, "application/octet-stream"

    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4d

    .line 77
    return v3

    .line 78
    :cond_4d
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getParentListOffset()I

    .line 81
    move-result v0

    .line 82
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 87
    move-result v1

    .line 88
    sub-int/2addr v1, v3

    .line 89
    const/4 v2, 0x0

    .line 90
    move v4, v2

    .line 91
    :goto_5a
    if-ge v1, v4, :cond_5d

    .line 93
    goto :goto_8f

    .line 94
    :cond_5d
    add-int v5, v4, v1

    .line 96
    div-int/lit8 v5, v5, 0x2

    .line 98
    iget-object v6, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 100
    add-int/lit8 v7, v0, 0x4

    .line 102
    mul-int/lit8 v8, v5, 0x8

    .line 104
    add-int/2addr v8, v7

    .line 105
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 108
    move-result v6

    .line 109
    invoke-direct {p0, v6}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 116
    move-result v6

    .line 117
    if-gez v6, :cond_79

    .line 119
    add-int/lit8 v4, v5, 0x1

    .line 121
    goto :goto_5a

    .line 122
    :cond_79
    if-lez v6, :cond_7e

    .line 124
    add-int/lit8 v1, v5, -0x1

    .line 126
    goto :goto_5a

    .line 127
    :cond_7e
    iget-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 129
    add-int/lit8 v8, v8, 0x4

    .line 131
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 134
    move-result p1

    .line 135
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 140
    move-result v0

    .line 141
    move v1, v2

    .line 142
    :goto_8d
    if-lt v1, v0, :cond_90

    .line 144
    :goto_8f
    return v2

    .line 145
    :cond_90
    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 147
    add-int/lit8 v5, p1, 0x4

    .line 149
    mul-int/lit8 v6, v1, 0x4

    .line 151
    add-int/2addr v6, v5

    .line 152
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 155
    move-result v4

    .line 156
    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    invoke-direct {p0, v4, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->isMimeTypeSubclass(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_a6

    .line 166
    return v3

    .line 167
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    .line 169
    goto :goto_8d
.end method

.method private isSuperType(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x2

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "/*"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method private lookupGlobFileNameMatch(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getGlobListOffset()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-lt v2, v1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 17
    add-int/lit8 v4, v0, 0x4

    .line 19
    mul-int/lit8 v5, v2, 0xc

    .line 21
    add-int/2addr v5, v4

    .line 22
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 25
    move-result v3

    .line 26
    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 28
    add-int/lit8 v6, v5, 0x4

    .line 30
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 33
    move-result v4

    .line 34
    iget-object v6, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 36
    add-int/lit8 v5, v5, 0x8

    .line 38
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x1

    .line 43
    invoke-direct {p0, v3, v6}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(IZ)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_40

    .line 57
    new-instance v6, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 59
    invoke-direct {v6, p0, v4, v3, v5}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_40
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_b
.end method

.method private lookupGlobLiteral(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getLiteralListOffset()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v1, v2, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    add-int v3, v2, v1

    .line 19
    div-int/lit8 v3, v3, 0x2

    .line 21
    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 23
    add-int/lit8 v5, v0, 0x4

    .line 25
    mul-int/lit8 v6, v3, 0xc

    .line 27
    add-int/2addr v6, v5

    .line 28
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 31
    move-result v4

    .line 32
    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 39
    move-result v5

    .line 40
    if-gez v5, :cond_2c

    .line 42
    add-int/lit8 v2, v3, 0x1

    .line 44
    goto :goto_d

    .line 45
    :cond_2c
    if-lez v5, :cond_31

    .line 47
    add-int/lit8 v1, v3, -0x1

    .line 49
    goto :goto_d

    .line 50
    :cond_31
    iget-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 52
    add-int/lit8 v0, v6, 0x4

    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 57
    move-result p1

    .line 58
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 64
    add-int/lit8 v6, v6, 0x8

    .line 66
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 69
    move-result v0

    .line 70
    new-instance v1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 72
    invoke-direct {v1, p0, p1, v4, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private lookupGlobNodeSuffix(Ljava/lang/String;IIZILjava/util/Collection;Ljava/lang/StringBuffer;)V
    .registers 21

    .line 1
    move-object v8, p0

    .line 2
    if-eqz p4, :cond_f

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    add-int/lit8 v1, p5, -0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 13
    move-result v0

    .line 14
    move-object v1, p1

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    add-int/lit8 v0, p5, -0x1

    .line 18
    move-object v1, p1

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v0

    .line 23
    :goto_16
    if-nez v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    add-int/lit8 v2, p2, -0x1

    .line 28
    const/4 v9, 0x0

    .line 29
    move v3, v9

    .line 30
    :goto_1d
    if-lt v2, v3, :cond_9e

    .line 32
    if-gez p5, :cond_23

    .line 34
    goto/16 :goto_9e

    .line 36
    :cond_23
    add-int v4, v3, v2

    .line 38
    div-int/lit8 v4, v4, 0x2

    .line 40
    iget-object v5, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 42
    mul-int/lit8 v6, v4, 0xc

    .line 44
    add-int v6, v6, p3

    .line 46
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 49
    move-result v5

    .line 50
    int-to-char v5, v5

    .line 51
    if-ge v5, v0, :cond_37

    .line 53
    add-int/lit8 v3, v4, 0x1

    .line 55
    goto :goto_1d

    .line 56
    :cond_37
    if-le v5, v0, :cond_3c

    .line 58
    add-int/lit8 v2, v4, -0x1

    .line 60
    goto :goto_1d

    .line 61
    :cond_3c
    add-int/lit8 v7, p5, -0x1

    .line 63
    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 65
    add-int/lit8 v2, v6, 0x4

    .line 67
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 70
    move-result v10

    .line 71
    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 73
    add-int/lit8 v6, v6, 0x8

    .line 75
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 78
    move-result v11

    .line 79
    move-object/from16 v12, p7

    .line 81
    if-lez v7, :cond_63

    .line 83
    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    move-object v0, p0

    .line 87
    move-object v1, p1

    .line 88
    move v2, v10

    .line 89
    move v3, v11

    .line 90
    move/from16 v4, p4

    .line 92
    move v5, v7

    .line 93
    move-object/from16 v6, p6

    .line 95
    move-object/from16 v7, p7

    .line 97
    invoke-direct/range {v0 .. v7}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobNodeSuffix(Ljava/lang/String;IIZILjava/util/Collection;Ljava/lang/StringBuffer;)V

    .line 100
    :cond_63
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_9e

    .line 106
    :goto_69
    if-lt v9, v10, :cond_6c

    .line 108
    goto :goto_9e

    .line 109
    :cond_6c
    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 111
    mul-int/lit8 v1, v9, 0xc

    .line 113
    add-int/2addr v1, v11

    .line 114
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 117
    move-result v0

    .line 118
    int-to-char v0, v0

    .line 119
    if-eqz v0, :cond_79

    .line 121
    goto :goto_9e

    .line 122
    :cond_79
    iget-object v0, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 124
    add-int/lit8 v2, v1, 0x4

    .line 126
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 129
    move-result v0

    .line 130
    iget-object v2, v8, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 132
    add-int/lit8 v1, v1, 0x8

    .line 134
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 137
    move-result v1

    .line 138
    new-instance v2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 140
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual/range {p7 .. p7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    invoke-direct {v2, p0, v0, v3, v1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    move-object/from16 v0, p6

    .line 153
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v9, v9, 0x1

    .line 158
    goto :goto_69

    .line 159
    :cond_9e
    :goto_9e
    return-void
.end method

.method private lookupGlobSuffix(Ljava/lang/String;ZILjava/util/Collection;)V
    .registers 15

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getReverseSuffixTreeOffset()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 10
    move-result v4

    .line 11
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 13
    add-int/lit8 v0, v0, 0x4

    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 18
    move-result v5

    .line 19
    new-instance v9, Ljava/lang/StringBuffer;

    .line 21
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move v6, p2

    .line 27
    move v7, p3

    .line 28
    move-object v8, p4

    .line 29
    invoke-direct/range {v2 .. v9}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobNodeSuffix(Ljava/lang/String;IIZILjava/util/Collection;Ljava/lang/StringBuffer;)V

    .line 32
    return-void
.end method

.method private lookupMagicData([B)Ljava/util/Collection;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMagicListOffset()I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 18
    add-int/lit8 v1, v1, 0x8

    .line 20
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_18
    if-lt v3, v2, :cond_1b

    .line 27
    return-object v0

    .line 28
    :cond_1b
    mul-int/lit8 v4, v3, 0x10

    .line 30
    add-int/2addr v4, v1

    .line 31
    invoke-direct {p0, v4, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->compareToMagicData(I[B)Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_28

    .line 37
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_37

    .line 41
    :cond_28
    iget-object v5, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 43
    add-int/lit8 v4, v4, 0x4

    .line 45
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 48
    move-result v4

    .line 49
    invoke-direct {p0, v4}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeType(I)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    :goto_37
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_18
.end method

.method private lookupMimeTypesForGlobFileName(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobLiteral(Ljava/lang/String;Ljava/util/Collection;)V

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, v1, v0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobSuffix(Ljava/lang/String;ZILjava/util/Collection;)V

    .line 22
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1f

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, p1, v1, v0, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobSuffix(Ljava/lang/String;ZILjava/util/Collection;)V

    .line 32
    :cond_1f
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_28

    .line 38
    invoke-direct {p0, p1, p2}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupGlobFileNameMatch(Ljava/lang/String;Ljava/util/Collection;)V

    .line 41
    :cond_28
    return-void
.end method

.method private lookupMimeTypesForMagicData(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 6

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMaxExtents()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-gtz v0, :cond_d

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 17
    move-result v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_27
    .catchall {:try_start_d .. :try_end_11} :catchall_25

    .line 18
    if-gez v3, :cond_22

    .line 20
    :goto_13
    :try_start_13
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1b

    .line 23
    invoke-direct {p0, v1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMagicData([B)Ljava/util/Collection;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    .line 31
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw v0

    .line 35
    :cond_22
    add-int/2addr v2, v3

    .line 36
    sub-int/2addr v0, v3

    .line 37
    goto :goto_a

    .line 38
    :catchall_25
    move-exception v0

    .line 39
    goto :goto_2e

    .line 40
    :catch_27
    move-exception v0

    .line 41
    :try_start_28
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    .line 43
    invoke-direct {v1, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    throw v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_25

    .line 47
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 50
    throw v0

    .line 51
    :catch_32
    move-exception p1

    .line 52
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    .line 54
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    throw v0
.end method

.method private matchletMagicCompare(I[B)Z
    .registers 15

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 9
    add-int/lit8 v2, p1, 0x4

    .line 11
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 17
    add-int/lit8 v3, p1, 0xc

    .line 19
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 25
    add-int/lit8 v4, p1, 0x10

    .line 27
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 30
    move-result v3

    .line 31
    iget-object v4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 33
    add-int/lit8 p1, p1, 0x14

    .line 35
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 38
    move-result p1

    .line 39
    move v4, v0

    .line 40
    :goto_27
    add-int v5, v0, v1

    .line 42
    const/4 v6, 0x0

    .line 43
    if-le v4, v5, :cond_2d

    .line 45
    return v6

    .line 46
    :cond_2d
    add-int v5, v4, v2

    .line 48
    array-length v7, p2

    .line 49
    if-le v5, v7, :cond_33

    .line 51
    return v6

    .line 52
    :cond_33
    const/4 v5, 0x1

    .line 53
    if-eqz p1, :cond_5c

    .line 55
    move v7, v6

    .line 56
    :goto_37
    if-lt v7, v2, :cond_3a

    .line 58
    goto :goto_5f

    .line 59
    :cond_3a
    iget-object v8, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 61
    add-int v9, v3, v7

    .line 63
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    move-result v8

    .line 67
    iget-object v9, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 69
    add-int v10, p1, v7

    .line 71
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 74
    move-result v9

    .line 75
    and-int/2addr v8, v9

    .line 76
    add-int v9, v7, v4

    .line 78
    aget-byte v9, p2, v9

    .line 80
    iget-object v11, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 85
    move-result v10

    .line 86
    and-int/2addr v9, v10

    .line 87
    if-eq v8, v9, :cond_59

    .line 89
    goto :goto_6f

    .line 90
    :cond_59
    add-int/lit8 v7, v7, 0x1

    .line 92
    goto :goto_37

    .line 93
    :cond_5c
    move v7, v6

    .line 94
    :goto_5d
    if-lt v7, v2, :cond_61

    .line 96
    :goto_5f
    move v6, v5

    .line 97
    goto :goto_6f

    .line 98
    :cond_61
    iget-object v8, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->content:Ljava/nio/ByteBuffer;

    .line 100
    add-int v9, v3, v7

    .line 102
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 105
    move-result v8

    .line 106
    add-int v9, v7, v4

    .line 108
    aget-byte v9, p2, v9

    .line 110
    if-eq v8, v9, :cond_75

    .line 112
    :goto_6f
    if-eqz v6, :cond_72

    .line 114
    return v5

    .line 115
    :cond_72
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_27

    .line 118
    :cond_75
    add-int/lit8 v7, v7, 0x1

    .line 120
    goto :goto_5d
.end method

.method private normalizeWeightedMimeList(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Ljava/util/List;

    .line 9
    new-instance v2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;

    .line 11
    invoke-direct {v2, p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;-><init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V

    .line 14
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_56

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v4

    .line 33
    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_44

    .line 39
    new-instance p1, Ljava/util/HashSet;

    .line 41
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v1

    .line 48
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_36

    .line 54
    return-object p1

    .line 55
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 61
    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_2f

    .line 69
    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 75
    iget-object v1, p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->pattern:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 80
    move-result v1

    .line 81
    if-ge v1, v3, :cond_20

    .line 83
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 86
    goto :goto_20

    .line 87
    :cond_56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 93
    iget v5, v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->weight:I

    .line 95
    if-ge v2, v5, :cond_61

    .line 97
    move v2, v5

    .line 98
    :cond_61
    if-lt v2, v5, :cond_16

    .line 100
    iget-object v5, v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->pattern:Ljava/lang/String;

    .line 102
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 105
    move-result v5

    .line 106
    if-le v5, v3, :cond_71

    .line 108
    iget-object v3, v4, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->pattern:Ljava/lang/String;

    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 113
    move-result v3

    .line 114
    :cond_71
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    goto :goto_16
.end method

.method private unaliasMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->aliasLookup(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move-object p1, v0

    .line 9
    :goto_8
    return-object p1
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->timer:Ljava/util/Timer;

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-string v1, "{MAJOR_VERSION="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMajorVersion()S

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 15
    const-string v1, " MINOR_VERSION="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMinorVersion()S

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 27
    const-string v1, " ALIAS_LIST_OFFSET="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getAliasListOffset()I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 39
    const-string v1, " PARENT_LIST_OFFSET="

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getParentListOffset()I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, " LITERAL_LIST_OFFSET="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getLiteralListOffset()I

    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, " REVERSE_SUFFIX_TREE_OFFSET="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getReverseSuffixTreeOffset()I

    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, " GLOB_LIST_OFFSET="

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getGlobListOffset()I

    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, " MAGIC_LIST_OFFSET="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMagicListOffset()I

    .line 95
    move-result v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, " NAMESPACE_LIST_OFFSET="

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getNameSpaceListOffset()I

    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, " ICONS_LIST_OFFSET="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getIconListOffset()I

    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, " GENERIC_ICONS_LIST_OFFSET="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getGenericIconListOffset()I

    .line 131
    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "}"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-string v1, "Resolve mime types for files and streams using the Opendesktop shared mime.cache file. Version ["

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMajorVersion()S

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 15
    const-string v1, "."

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMinorVersion()S

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 27
    const-string v1, "]."

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public getMimeTypesByteArray([B)Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMagicData([B)Ljava/util/Collection;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->_getMimeTypes(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/util/Collection;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMimeTypesForGlobFileName(Ljava/lang/String;Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_12

    .line 15
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->normalizeWeightedMimeList(Ljava/util/Collection;)Ljava/util/Collection;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    return-object v0
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->lookupMimeTypesForMagicData(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->getInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v0, p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->_getMimeTypes(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/util/Collection;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
