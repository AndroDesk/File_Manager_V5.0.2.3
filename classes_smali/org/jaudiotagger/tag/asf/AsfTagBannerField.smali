.class public Lorg/jaudiotagger/tag/asf/AsfTagBannerField;
.super Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;
.source "AsfTagBannerField.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6

    .line 3
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method


# virtual methods
.method public getImageDataSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRawImageData()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
