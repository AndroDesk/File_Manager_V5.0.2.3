.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMR;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyCOMR.java"

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

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 11

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "PriceString"

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ValidUntil"

    .line 6
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ContactURL"

    .line 7
    invoke-virtual {p0, p1, p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "RecievedAs"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "SellerName"

    .line 9
    invoke-virtual {p0, p1, p6}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    .line 10
    invoke-virtual {p0, p1, p7}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "MIMEType"

    .line 11
    invoke-virtual {p0, p1, p8}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "SellerLogo"

    .line 12
    invoke-virtual {p0, p1, p9}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMR;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "COMR"

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    const-string v0, "Owner"

    .line 1
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwner(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Owner"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

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
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;

    .line 18
    const-string v2, "PriceString"

    .line 20
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 28
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringDate;

    .line 30
    const-string v2, "ValidUntil"

    .line 32
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/StringDate;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;

    .line 42
    const-string v2, "ContactURL"

    .line 44
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 54
    const-string v2, "RecievedAs"

    .line 56
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 64
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 66
    const-string v2, "SellerName"

    .line 68
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 78
    const-string v2, "Description"

    .line 80
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;

    .line 90
    const-string v2, "MIMEType"

    .line 92
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;

    .line 102
    const-string v2, "SellerLogo"

    .line 104
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    .line 1
    const-string v0, "SellerName"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/AbstractString;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_12

    .line 16
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 19
    :cond_12
    const-string v0, "Description"

    .line 21
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lorg/jaudiotagger/tag/datatype/AbstractString;

    .line 27
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_23

    .line 33
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 36
    :cond_23
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 39
    return-void
.end method
