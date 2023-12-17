.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyDeprecated.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;


# instance fields
.field private originalFrameBody:Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1e

    .line 24
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1e

    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1e
    return v1
.end method

.method public getBriefDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getBriefDescription()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const-string v0, ""

    .line 12
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOriginalFrameBody()Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setupObjectList()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
