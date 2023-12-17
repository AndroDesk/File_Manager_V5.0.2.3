.class public final Lorg/jaudiotagger/audio/asf/data/ContentBranding;
.super Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
.source "ContentBranding.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final ALLOWED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BANNER_IMAGE:Ljava/lang/String; = "BANNER_IMAGE"

.field public static final KEY_BANNER_TYPE:Ljava/lang/String; = "BANNER_IMAGE_TYPE"

.field public static final KEY_BANNER_URL:Ljava/lang/String; = "BANNER_IMAGE_URL"

.field public static final KEY_COPYRIGHT_URL:Ljava/lang/String; = "COPYRIGHT_URL"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    .line 8
    const-string v1, "BANNER_IMAGE"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v1, "BANNER_IMAGE_TYPE"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v1, "BANNER_IMAGE_URL"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "COPYRIGHT_URL"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .registers 5

    .line 2
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getBannerImageURL()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "BANNER_IMAGE_URL"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCopyRightURL()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "COPYRIGHT_URL"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentAsfChunkSize()J
    .registers 5

    .line 1
    const-string v0, "BANNER_IMAGE"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    .line 11
    move-result v0

    .line 12
    int-to-long v0, v0

    .line 13
    const-wide/16 v2, 0x28

    .line 15
    add-long/2addr v0, v2

    .line 16
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 23
    move-result v2

    .line 24
    int-to-long v2, v2

    .line 25
    add-long/2addr v0, v2

    .line 26
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 33
    move-result v2

    .line 34
    int-to-long v2, v2

    .line 35
    add-long/2addr v0, v2

    .line 36
    return-wide v0
.end method

.method public getImageData()[B
    .registers 3

    .line 1
    const-string v0, "BANNER_IMAGE"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getImageType()J
    .registers 5

    .line 1
    const-string v0, "BANNER_IMAGE_TYPE"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->hasDescriptor(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_18

    .line 9
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 11
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 13
    const/4 v3, 0x3

    .line 14
    invoke-direct {v1, v2, v0, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    .line 22
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 25
    :cond_18
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getNumber()J

    .line 32
    move-result-wide v0

    .line 33
    return-wide v0
.end method

.method public isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    return p1
.end method

.method public setBannerImageURL(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "BANNER_IMAGE_URL"

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 20
    :goto_13
    return-void
.end method

.method public setCopyRightURL(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "COPYRIGHT_URL"

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 20
    :goto_13
    return-void
.end method

.method public setImage(J[B)V
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "BANNER_IMAGE_TYPE"

    .line 4
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    .line 11
    const/4 p1, 0x1

    .line 12
    const-string p2, "BANNER_IMAGE"

    .line 14
    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    .line 21
    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .registers 8

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCurrentAsfChunkSize()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 16
    invoke-static {v0, v1, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 19
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getImageType()J

    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v2, v3, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 26
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getImageData()[B

    .line 29
    move-result-object v2

    .line 30
    array-length v3, v2

    .line 31
    int-to-long v3, v3

    .line 32
    invoke-static {v3, v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 35
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 45
    move-result v2

    .line 46
    int-to-long v2, v2

    .line 47
    invoke-static {v2, v3, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 50
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    const-string v3, "ASCII"

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 63
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    move-result v2

    .line 71
    int-to-long v4, v2

    .line 72
    invoke-static {v4, v5, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 75
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 86
    return-wide v0
.end method
