.class public Leu/medsea/mimeutil/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# static fields
.field public static final synthetic a:I

.field private static mimeUtil:Leu/medsea/mimeutil/MimeUtil2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Leu/medsea/mimeutil/MimeUtil2;

    .line 3
    invoke-direct {v0}, Leu/medsea/mimeutil/MimeUtil2;-><init>()V

    .line 6
    sput-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V

    return-void
.end method

.method public static addKnownMimeType(Ljava/lang/String;)V
    .registers 1

    .line 2
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->addKnownMimeType(Ljava/lang/String;)V

    return-void
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 2
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstMimeType(Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getFirstMimeType(Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    .line 3
    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getMimeQuality(Ljava/lang/String;)D
    .registers 3

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeQuality(Ljava/lang/String;)D

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final getMimeTypes(Ljava/io/File;)Ljava/util/Collection;
    .registers 2

    .line 3
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/File;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes(Ljava/io/File;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 3

    .line 4
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/File;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 2

    .line 5
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes(Ljava/io/InputStream;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 3

    .line 6
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/InputStream;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;
    .registers 2

    .line 7
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes(Ljava/lang/String;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 3

    .line 8
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/lang/String;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;
    .registers 2

    .line 9
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes(Ljava/net/URL;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 3

    .line 10
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/net/URL;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes([B)Ljava/util/Collection;
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes([B)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypes([BLeu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 3

    .line 2
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes([BLeu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getMostSpecificMimeType(Ljava/util/Collection;)Leu/medsea/mimeutil/MimeType;
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getMostSpecificMimeType(Ljava/util/Collection;)Leu/medsea/mimeutil/MimeType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getNativeOrder()Ljava/nio/ByteOrder;
    .registers 1

    .line 1
    invoke-static {}, Leu/medsea/mimeutil/MimeUtil2;->getNativeOrder()Ljava/nio/ByteOrder;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getPreferedMimeType(Ljava/lang/String;Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getPreferedMimeType(Ljava/lang/String;Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getQuality(Ljava/lang/String;)D
    .registers 3

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getQuality(Ljava/lang/String;)D

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static isMimeTypeKnown(Leu/medsea/mimeutil/MimeType;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->isMimeTypeKnown(Leu/medsea/mimeutil/MimeType;)Z

    move-result p0

    return p0
.end method

.method public static isMimeTypeKnown(Ljava/lang/String;)Z
    .registers 1

    .line 2
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->isMimeTypeKnown(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTextMimeType(Leu/medsea/mimeutil/MimeType;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->isTextMimeType(Leu/medsea/mimeutil/MimeType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    .line 3
    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static unregisterMimeDetector(Leu/medsea/mimeutil/detector/MimeDetector;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->unregisterMimeDetector(Leu/medsea/mimeutil/detector/MimeDetector;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p0

    return-object p0
.end method

.method public static unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 2

    .line 2
    sget-object v0, Leu/medsea/mimeutil/MimeUtil;->mimeUtil:Leu/medsea/mimeutil/MimeUtil2;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/MimeUtil2;->unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p0

    return-object p0
.end method
