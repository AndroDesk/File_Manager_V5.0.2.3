.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyUnsupported.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v22FrameBody;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    const-string p1, "Data"

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    const-string v0, "Data"

    .line 10
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

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
    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setupObjectList()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;

    .line 5
    const-string v2, "Data"

    .line 7
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;->getIdentifier()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
