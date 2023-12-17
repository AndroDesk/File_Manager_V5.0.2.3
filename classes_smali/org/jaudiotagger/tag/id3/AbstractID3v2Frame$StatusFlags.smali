.class public Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
.super Ljava/lang/Object;
.source "AbstractID3v2Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusFlags"
.end annotation


# static fields
.field public static final TYPE_FLAGS:Ljava/lang/String; = "statusFlags"


# instance fields
.field public originalFlags:B

.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

.field public writeFlags:B


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public createStructure()V
    .registers 1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    .line 16
    move-result v1

    .line 17
    int-to-long v3, v1

    .line 18
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    .line 21
    move-result v1

    .line 22
    int-to-long v5, v1

    .line 23
    invoke-static {v3, v4, v5, v6}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2d

    .line 29
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    .line 32
    move-result v1

    .line 33
    int-to-long v3, v1

    .line 34
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    .line 37
    move-result p1

    .line 38
    int-to-long v5, p1

    .line 39
    invoke-static {v3, v4, v5, v6}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v0, v2

    .line 47
    :goto_2e
    return v0
.end method

.method public getOriginalFlags()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 3
    return v0
.end method

.method public getWriteFlags()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 3
    return v0
.end method
