.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYTC;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodySYTC.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "TimeStampFormat"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Data"

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYTC;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "SYTC"

    return-object v0
.end method

.method public setupObjectList()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 5
    const-string v2, "TimeStampFormat"

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;

    .line 18
    const-string v2, "Data"

    .line 20
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
