.class public abstract Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "AbstractFrameBodyTextInfo.java"


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

    const-string v0, "Text"

    const-string v1, ""

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

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

    const-string p1, "Text"

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public addTextValue(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 9
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->addValue(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public getFirstTextValue()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getNumberOfValues()I
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getNumberOfValues()I

    .line 12
    move-result v0

    .line 13
    return v0
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
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public getTextWithoutTrailingNulls()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueWithoutTrailingNull()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getTextWithoutTrailingNulls()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Text"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 9
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    const-string v0, "Text"

    .line 5
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
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
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 18
    const-string v2, "Text"

    .line 20
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getHeader()Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;B)B

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 16
    const-string v0, "Text"

    .line 18
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 24
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_28

    .line 30
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getHeader()Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getUnicodeTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)B

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 41
    :cond_28
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 44
    return-void
.end method
