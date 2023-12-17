.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyPIC.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v22FrameBody;


# static fields
.field public static final IMAGE_IS_URL:Ljava/lang/String; = "-->"


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

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;BLjava/lang/String;[B)V
    .registers 7

    .line 4
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ImageType"

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setPictureType(B)V

    .line 8
    invoke-virtual {p0, p4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setDescription(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p5}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setImageData([B)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "MIMEType"

    .line 12
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageType"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "PictureData"

    .line 13
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setDescription(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setImageData([B)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Description"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public getFormatType()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "ImageType"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "PIC"

    return-object v0
.end method

.method public getImageData()[B
    .registers 2

    .line 1
    const-string v0, "PictureData"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 9
    return-object v0
.end method

.method public getPictureType()I
    .registers 2

    .line 1
    const-string v0, "PictureType"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isImageUrl()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->getFormatType()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->getFormatType()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "-->"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "Description"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setImageData([B)V
    .registers 3

    .line 1
    const-string v0, "PictureData"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setPictureType(B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "PictureType"

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public setupObjectList()V
    .registers 6

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
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringFixedLength;

    .line 18
    const-string v2, "ImageType"

    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v1, v2, p0, v4}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    .line 31
    const-string v2, "PictureType"

    .line 33
    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;

    .line 43
    const-string v2, "Description"

    .line 45
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 53
    new-instance v1, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;

    .line 55
    const-string v2, "PictureData"

    .line 57
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 3

    .line 1
    const-string v0, "Description"

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
    if-nez v0, :cond_12

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 19
    :cond_12
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 22
    return-void
.end method
