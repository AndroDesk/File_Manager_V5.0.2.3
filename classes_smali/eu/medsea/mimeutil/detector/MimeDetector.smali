.class public abstract Leu/medsea/mimeutil/detector/MimeDetector;
.super Ljava/lang/Object;
.source "MimeDetector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    .line 8
    :catch_7
    return-object v0
.end method


# virtual methods
.method public delete()V
    .registers 1

    return-void
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public final getMimeTypes(Ljava/io/File;)Ljava/util/Collection;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 7
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The InputStream must support the mark() and reset() methods."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes([B)Ljava/util/Collection;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/MimeDetector;->getMimeTypesByteArray([B)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public abstract getMimeTypesByteArray([B)Ljava/util/Collection;
.end method

.method public abstract getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
.end method

.method public abstract getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
.end method

.method public abstract getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
.end method

.method public abstract getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public init()V
    .registers 1

    return-void
.end method
