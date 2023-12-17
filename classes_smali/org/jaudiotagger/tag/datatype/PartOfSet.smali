.class public Lorg/jaudiotagger/tag/datatype/PartOfSet;
.super Lorg/jaudiotagger/tag/datatype/AbstractString;
.source "PartOfSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/PartOfSet;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractString;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p1, p0, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/PartOfSet;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/datatype/PartOfSet;

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 17
    invoke-static {v0, p1}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
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

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet;->getValue()Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;
    .registers 2

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    return-object v0
.end method

.method public readByteArray([BI)V
    .registers 8

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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet;->getTextEncodingCharSet()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 34
    move-result-object v0

    .line 35
    array-length v1, p1

    .line 36
    sub-int/2addr v1, p2

    .line 37
    invoke-static {p1, p2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 44
    move-result-object v1

    .line 45
    array-length v2, p1

    .line 46
    sub-int/2addr v2, p2

    .line 47
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_56

    .line 65
    sget-object v3, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 67
    const-string v4, "Decoding error:"

    .line 69
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 87
    :cond_56
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 90
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 99
    invoke-direct {v1, v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    .line 102
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 104
    array-length p1, p1

    .line 105
    sub-int/2addr p1, p2

    .line 106
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->setSize(I)V

    .line 109
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 111
    const-string p2, "Read SizeTerminatedString:"

    .line 113
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-result-object p2

    .line 117
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, " size:"

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet;->getValue()Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    :try_start_8
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isRemoveTrailingTerminatorOnWrite()Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_2f

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    move-result v1

    .line 24
    if-lez v1, :cond_2f

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2f

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    move-result v1

    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet;->getTextEncodingCharSet()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    const-string v3, "UTF-16"

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_6d

    .line 60
    const-string v1, "UTF-16LE"

    .line 62
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 69
    move-result-object v1

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const v4, 0xfeff

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 99
    move-result v1

    .line 100
    new-array v1, v1, [B

    .line 102
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 105
    move-result v3

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 109
    goto :goto_8a

    .line 110
    :cond_6d
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 129
    move-result v1

    .line 130
    new-array v1, v1, [B

    .line 132
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 135
    move-result v3

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_8a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_8 .. :try_end_8a} :catch_8f

    .line 139
    :goto_8a
    array-length v0, v1

    .line 140
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->setSize(I)V

    .line 143
    return-object v1

    .line 144
    :catch_8f
    move-exception v0

    .line 145
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    .line 156
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 159
    throw v1
.end method
