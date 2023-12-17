.class public Lorg/jaudiotagger/tag/asf/AsfTagField;
.super Ljava/lang/Object;
.source "AsfTagField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagField;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/asf/AsfTagField;

    .line 3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-static {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getHighestContainer()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->createCopy()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getHighestContainer()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Not implemented yet."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRawContent()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isBinary(Z)V
    .registers 3

    if-nez p1, :cond_11

    .line 2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->isBinary()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 3
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No conversion supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_11
    :goto_11
    iget-object p1, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method

.method public isBinary()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isCommon()Z
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getId()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
