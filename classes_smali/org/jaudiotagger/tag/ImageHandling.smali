.class public Lorg/jaudiotagger/tag/ImageHandling;
.super Ljava/lang/Object;
.source "ImageHandling.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMimeTypeWritable(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static makeSmaller(Lorg/jaudiotagger/tag/datatype/Artwork;I)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getImage()Ljava/awt/image/BufferedImage;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    .line 9
    move-result v2

    .line 10
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    .line 13
    move-result v3

    .line 14
    int-to-float v4, p1

    .line 15
    int-to-float v2, v2

    .line 16
    div-float v2, v4, v2

    .line 18
    int-to-float v3, v3

    .line 19
    div-float/2addr v4, v3

    .line 20
    new-instance v3, Ljava/awt/image/BufferedImage;

    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v3, p1, p1, v5}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 26
    new-instance p1, Ljava/awt/geom/AffineTransform;

    .line 28
    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 31
    float-to-double v5, v2

    .line 32
    float-to-double v7, v4

    .line 33
    invoke-virtual {p1, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 36
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v0, p1, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 43
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    .line 46
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_49

    .line 52
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lorg/jaudiotagger/tag/ImageHandling;->isMimeTypeWritable(Ljava/lang/String;)Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_49

    .line 62
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {v3, p1}, Lorg/jaudiotagger/tag/ImageHandling;->writeImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)[B

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 73
    goto :goto_50

    .line 74
    :cond_49
    invoke-static {v3}, Lorg/jaudiotagger/tag/ImageHandling;->writeImageAsPng(Ljava/awt/image/BufferedImage;)[B

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 81
    :goto_50
    return-void
.end method

.method public static reduceQuality(Lorg/jaudiotagger/tag/datatype/Artwork;I)V
    .registers 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    if-le v0, p1, :cond_16

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getImage()Ljava/awt/image/BufferedImage;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    .line 16
    move-result v0

    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 19
    invoke-static {p0, v0}, Lorg/jaudiotagger/tag/ImageHandling;->makeSmaller(Lorg/jaudiotagger/tag/datatype/Artwork;I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_16
    return-void
.end method

.method public static showReadFormats()V
    .registers 7

    .line 1
    invoke-static {}, Ljavax/imageio/ImageIO;->getReaderMIMETypes()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_23

    .line 9
    aget-object v3, v0, v2

    .line 11
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v6, "r"

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_6

    .line 36
    :cond_23
    return-void
.end method

.method public static showWriteFormats()V
    .registers 5

    .line 1
    invoke-static {}, Ljavax/imageio/ImageIO;->getWriterMIMETypes()[Ljava/lang/String;

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
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 13
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_6

    .line 19
    :cond_12
    return-void
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)[B
    .registers 4

    .line 1
    invoke-static {p1}, Ljavax/imageio/ImageIO;->getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_24

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljavax/imageio/ImageWriter;

    .line 17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 19
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1, p0}, Ljavax/imageio/ImageWriter;->write(Ljava/awt/image/RenderedImage;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_24
    new-instance p0, Ljava/io/IOException;

    .line 39
    const-string p1, "Cannot write to this mimetype"

    .line 41
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
.end method

.method public static writeImageAsPng(Ljava/awt/image/BufferedImage;)[B
    .registers 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    const-string v1, "image/png"

    .line 8
    invoke-static {p0, v1, v0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
