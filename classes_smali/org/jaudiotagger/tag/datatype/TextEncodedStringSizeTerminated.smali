.class public Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractString;
.source "TextEncodedStringSizeTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractString;)V

    return-void
.end method

.method private checkTrailingNull(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isRemoveTrailingTerminatorOnWrite()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3b

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_3b

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result p2

    .line 27
    add-int/lit8 p2, p2, -0x1

    .line 29
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    move-result v0

    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 57
    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_3b
    return-void
.end method

.method public static splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "\\u0000"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1b

    .line 17
    new-instance p0, Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    const-string v0, ""

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1b
    return-object p0
.end method

.method private stripTrailingNull()V
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isRemoveTrailingTerminatorOnWrite()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2d

    .line 11
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_2d

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2d

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 46
    :cond_2d
    return-void
.end method

.method private writeString(Ljava/nio/charset/CharsetEncoder;Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .registers 5

    .line 1
    add-int/lit8 p3, p3, 0x1

    .line 3
    if-ne p3, p4, :cond_d

    .line 5
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_25

    .line 14
    :cond_d
    new-instance p3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 37
    move-result-object p1

    .line 38
    :goto_25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    return-object p1
.end method

.method private writeStringUTF16LEBOM(Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .registers 6

    .line 1
    const-string v0, "UTF-16LE"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 10
    move-result-object v0

    .line 11
    add-int/lit8 p2, p2, 0x1

    .line 13
    const v1, 0xfeff

    .line 16
    if-ne p2, p3, :cond_29

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 40
    move-result-object p1

    .line 41
    goto :goto_44

    .line 42
    :cond_29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 68
    move-result-object p1

    .line 69
    :goto_44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 72
    return-object p1
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\u0000"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    return v0
.end method

.method public getNumberOfValues()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getTextEncodingCharSet()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v4, "text encoding:"

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, " charset:"

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 47
    return-object v1
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 15
    return-object p1
.end method

.method public getValueWithoutTrailingNull()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuffer;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_27

    .line 21
    if-eqz v2, :cond_1b

    .line 23
    const-string v3, "\u0000"

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    :cond_1b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_e

    .line 40
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public readByteArray([BI)V
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Reading from array from offset:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getTextEncodingCharSet()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 38
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3c

    .line 48
    array-length v2, p1

    .line 49
    sub-int/2addr v2, p2

    .line 50
    new-array v3, v2, [B

    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 59
    move-result-object v2

    .line 60
    goto :goto_46

    .line 61
    :cond_3c
    array-length v2, p1

    .line 62
    sub-int/2addr v2, p2

    .line 63
    invoke-static {p1, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 70
    move-result-object v2

    .line 71
    :goto_46
    array-length v3, p1

    .line 72
    sub-int/2addr v3, p2

    .line 73
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_6d

    .line 88
    sget-object v4, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 90
    const-string v5, "Decoding error:"

    .line 92
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 110
    :cond_6d
    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 113
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 116
    const-string v1, "UTF-16"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_90

    .line 124
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    const-string v1, "\ufeff"

    .line 130
    const-string v2, ""

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    const-string v1, "\ufffe"

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 144
    goto :goto_96

    .line 145
    :cond_90
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 151
    :goto_96
    array-length p1, p1

    .line 152
    sub-int/2addr p1, p2

    .line 153
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->setSize(I)V

    .line 156
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 158
    const-string p2, "Read SizeTerminatedString:"

    .line 160
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    move-result-object p2

    .line 164
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, " size:"

    .line 171
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public writeByteArray()[B
    .registers 10

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->stripTrailingNull()V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getTextEncodingCharSet()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "UTF-16"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2
    :try_end_11
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_11} :catch_76

    .line 18
    const-string v3, "UTF-16LE"

    .line 20
    if-eqz v2, :cond_16

    .line 22
    move-object v1, v3

    .line 23
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    move-result v2

    .line 27
    add-int/lit8 v2, v2, 0x3

    .line 29
    mul-int/lit8 v2, v2, 0x3

    .line 31
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    .line 38
    move-result-object v4

    .line 39
    invoke-direct {p0, v4, v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->checkTrailingNull(Ljava/util/List;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    move v5, v0

    .line 44
    :goto_2b
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 47
    move-result v6

    .line 48
    if-ge v5, v6, :cond_5f

    .line 50
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_49

    .line 62
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 65
    move-result v7

    .line 66
    invoke-direct {p0, v6, v5, v7}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->writeStringUTF16LEBOM(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 73
    goto :goto_5c

    .line 74
    :cond_49
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 81
    move-result-object v7

    .line 82
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 85
    move-result v8

    .line 86
    invoke-direct {p0, v7, v6, v5, v8}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->writeString(Ljava/nio/charset/CharsetEncoder;Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 93
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    .line 95
    goto :goto_2b

    .line 96
    :cond_5f
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 102
    move-result v1

    .line 103
    new-array v3, v1, [B

    .line 105
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 108
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 111
    move-result v4

    .line 112
    invoke-virtual {v2, v3, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->setSize(I)V
    :try_end_75
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_16 .. :try_end_75} :catch_76

    .line 118
    return-object v3

    .line 119
    :catch_76
    move-exception v0

    .line 120
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    .line 131
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 134
    throw v1
.end method
