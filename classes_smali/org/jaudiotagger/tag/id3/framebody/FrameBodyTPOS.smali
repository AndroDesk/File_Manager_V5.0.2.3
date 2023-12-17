.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyTPOS.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>()V

    const-string v1, "Text"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 9
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public getDiscNo()Ljava/lang/Integer;
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getDiscTotal()Ljava/lang/Integer;
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "TPOS"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public setDiscNo(Ljava/lang/Integer;)V
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 9
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setCount(Ljava/lang/Integer;)V

    .line 12
    return-void
.end method

.method public setDiscTotal(Ljava/lang/Integer;)V
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 9
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setTotal(Ljava/lang/Integer;)V

    .line 12
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p1, "Text"

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public setupObjectList()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 5
    const-string v2, "TextEncoding"

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lorg/jaudiotagger/tag/datatype/PartOfSet;

    .line 18
    const-string v2, "Text"

    .line 20
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
