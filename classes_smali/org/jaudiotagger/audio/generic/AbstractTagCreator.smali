.class public abstract Lorg/jaudiotagger/audio/generic/AbstractTagCreator;
.super Ljava/lang/Object;
.source "AbstractTagCreator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public abstract convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;
.end method
