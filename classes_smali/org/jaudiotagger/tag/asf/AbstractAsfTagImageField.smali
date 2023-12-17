.class abstract Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;
.super Lorg/jaudiotagger/tag/asf/AsfTagField;
.source "AbstractAsfTagImageField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/awt/image/BufferedImage;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;->getRawImageData()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public abstract getImageDataSize()I
.end method

.method public abstract getRawImageData()[B
.end method
