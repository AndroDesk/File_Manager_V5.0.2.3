.class public Lorg/jaudiotagger/tag/ImageHandling;
.super Ljava/lang/Object;
.source "ImageHandling.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMimeTypeWritable(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method private static makeSmaller(Lorg/jaudiotagger/tag/datatype/Artwork;I)V
    .registers 11

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v3

    int-to-float v4, p1

    int-to-float v2, v2

    div-float v2, v4, v2

    int-to-float v3, v3

    div-float/2addr v4, v3

    new-instance v3, Ljava/awt/image/BufferedImage;

    const/4 v5, 0x1

    invoke-direct {v3, p1, p1, v5}, Ljava/awt/image/BufferedImage;-><init>(III)V

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    float-to-double v5, v2

    float-to-double v7, v4

    invoke-virtual {p1, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/tag/ImageHandling;->isMimeTypeWritable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/jaudiotagger/tag/ImageHandling;->writeImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    goto :goto_50

    :cond_49
    invoke-static {v3}, Lorg/jaudiotagger/tag/ImageHandling;->writeImageAsPng(Ljava/awt/image/BufferedImage;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    :goto_50
    return-void
.end method

.method public static reduceQuality(Lorg/jaudiotagger/tag/datatype/Artwork;I)V
    .registers 4

    :goto_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, p1, :cond_16

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lorg/jaudiotagger/tag/ImageHandling;->makeSmaller(Lorg/jaudiotagger/tag/datatype/Artwork;I)V

    goto :goto_0

    :cond_16
    return-void
.end method

.method public static showReadFormats()V
    .registers 7

    invoke-static {}, Ljavax/imageio/ImageIO;->getReaderMIMETypes()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_23
    return-void
.end method

.method public static showWriteFormats()V
    .registers 5

    invoke-static {}, Ljavax/imageio/ImageIO;->getWriterMIMETypes()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)[B
    .registers 4

    invoke-static {p1}, Ljavax/imageio/ImageIO;->getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/ImageWriter;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Ljavax/imageio/ImageWriter;->write(Ljava/awt/image/RenderedImage;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_24
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot write to this mimetype"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeImageAsPng(Ljava/awt/image/BufferedImage;)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "image/png"

    invoke-static {p0, v1, v0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
