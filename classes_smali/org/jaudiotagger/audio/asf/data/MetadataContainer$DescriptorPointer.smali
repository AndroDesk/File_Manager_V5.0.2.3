.class final Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;
.super Ljava/lang/Object;
.source "MetadataContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorPointer"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, p0, :cond_6

    .line 5
    move v2, v0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move v2, v1

    .line 8
    :goto_7
    instance-of v3, p1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 10
    if-eqz v3, :cond_3e

    .line 12
    if-nez v2, :cond_3e

    .line 14
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 16
    iget-object p1, p1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 18
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 20
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 34
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    .line 37
    move-result v3

    .line 38
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    .line 41
    move-result v4

    .line 42
    if-ne v3, v4, :cond_2d

    .line 44
    move v3, v0

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v3, v1

    .line 47
    :goto_2e
    and-int/2addr v2, v3

    .line 48
    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 50
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    .line 53
    move-result v3

    .line 54
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    .line 57
    move-result p1

    .line 58
    if-ne v3, p1, :cond_3c

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v0, v1

    .line 62
    :goto_3d
    and-int/2addr v2, v0

    .line 63
    :cond_3e
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 15
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 24
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public setDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    return-object p0
.end method
