.class public abstract Lorg/jaudiotagger/tag/id3/AbstractTag;
.super Lorg/jaudiotagger/tag/id3/AbstractTagItem;
.source "AbstractTag.java"


# static fields
.field public static final TYPE_TAG:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTagItem;)V

    return-void
.end method


# virtual methods
.method public abstract delete(Ljava/io/RandomAccessFile;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractTag;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract seek(Ljava/nio/ByteBuffer;)Z
.end method

.method public abstract write(Ljava/io/RandomAccessFile;)V
.end method
