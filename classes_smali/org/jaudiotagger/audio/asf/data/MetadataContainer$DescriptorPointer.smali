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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    instance-of v3, p1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    if-eqz v3, :cond_3e

    if-nez v2, :cond_3e

    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    iget-object p1, p1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v4

    if-ne v3, v4, :cond_2d

    move v3, v0

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    and-int/2addr v2, v3

    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result p1

    if-ne v3, p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    and-int/2addr v2, v0

    :cond_3e
    return v2
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public setDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    return-object p0
.end method
