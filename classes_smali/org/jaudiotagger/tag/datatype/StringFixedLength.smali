.class public Lorg/jaudiotagger/tag/datatype/StringFixedLength;
.super Lorg/jaudiotagger/tag/datatype/AbstractString;
.source "StringFixedLength.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    if-ltz p3, :cond_9

    .line 2
    invoke-virtual {p0, p3}, Lorg/jaudiotagger/tag/datatype/AbstractString;->setSize(I)V

    return-void

    .line 3
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size is less than zero: "

    .line 4
    invoke-static {p2, p3}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/StringFixedLength;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractString;)V

    .line 12
    iget p1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/StringFixedLength;

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
    check-cast v0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;

    .line 10
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 12
    iget v0, v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 14
    if-ne v2, v0, :cond_16

    .line 16
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_16

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_16
    return v1
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

.method public readByteArray([BI)V
    .registers 7

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
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 23
    :try_start_16
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->getTextEncodingCharSet()Ljava/lang/String;

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
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v3, "Array length is:"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    array-length v3, p1

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, "offset is:"

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "Size is:"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 76
    array-length v1, p1

    .line 77
    sub-int/2addr v1, p2

    .line 78
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 80
    if-lt v1, v2, :cond_6a

    .line 82
    invoke-static {p1, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_62

    .line 96
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 98
    goto :goto_91

    .line 99
    :cond_62
    new-instance p1, Ljava/lang/NullPointerException;

    .line 101
    const-string p2, "String is null"

    .line 103
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p1

    .line 107
    :cond_6a
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v0, "byte array is to small to retrieve string of declared length:"

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p1
    :try_end_83
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_16 .. :try_end_83} :catch_83

    .line 132
    :catch_83
    move-exception p1

    .line 133
    sget-object p2, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 142
    const-string p1, ""

    .line 144
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 146
    :goto_91
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 148
    const-string p2, "Read StringFixedLength:"

    .line 150
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object p2

    .line 154
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public writeByteArray()[B
    .registers 9

    .line 1
    const-string v0, "using default value instead"

    .line 3
    const-string v1, ":"

    .line 5
    const-string v2, "There was a problem writing the following StringFixedlength Field:"

    .line 7
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 9
    const/16 v4, 0x20

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v3, :cond_22

    .line 14
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 16
    const-string v1, "Value of StringFixedlength Field is null using default value instead"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 23
    new-array v0, v0, [B

    .line 25
    :goto_18
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 27
    if-ge v5, v1, :cond_21

    .line 29
    aput-byte v4, v0, v5

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 33
    goto :goto_18

    .line 34
    :cond_21
    return-object v0

    .line 35
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->getTextEncodingCharSet()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    const-string v6, "UTF-16"

    .line 41
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_57

    .line 47
    const-string v3, "UTF-16LE"

    .line 49
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 56
    move-result-object v3

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const v7, 0xfeff

    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget-object v7, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 70
    check-cast v7, Ljava/lang/String;

    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    invoke-static {v6}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 86
    move-result-object v3

    .line 87
    goto :goto_6b

    .line 88
    :cond_57
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 95
    move-result-object v3

    .line 96
    iget-object v6, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 98
    check-cast v6, Ljava/lang/String;

    .line 100
    invoke-static {v6}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 107
    move-result-object v3
    :try_end_6b
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_22 .. :try_end_6b} :catch_12a

    .line 108
    :goto_6b
    if-eqz v3, :cond_102

    .line 110
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 113
    move-result v0

    .line 114
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 116
    if-ne v0, v1, :cond_83

    .line 118
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 121
    move-result v0

    .line 122
    new-array v0, v0, [B

    .line 124
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 127
    move-result v1

    .line 128
    invoke-virtual {v3, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 131
    return-object v0

    .line 132
    :cond_83
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 135
    move-result v0

    .line 136
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 138
    const-string v6, " but field was defined with length of:"

    .line 140
    const-string v7, " when converted to bytes has length of:"

    .line 142
    if-le v0, v1, :cond_c0

    .line 144
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 146
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-result-object v1

    .line 150
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 161
    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v2, " too long so stripping extra length"

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 187
    new-array v1, v0, [B

    .line 189
    invoke-virtual {v3, v1, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 192
    return-object v1

    .line 193
    :cond_c0
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 195
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    move-result-object v1

    .line 199
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 210
    move-result v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, " too short so padding with spaces to make up extra length"

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 234
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 236
    new-array v0, v0, [B

    .line 238
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 241
    move-result v1

    .line 242
    invoke-virtual {v3, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 248
    move-result v1

    .line 249
    :goto_f8
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 251
    if-ge v1, v2, :cond_101

    .line 253
    aput-byte v4, v0, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 257
    goto :goto_f8

    .line 258
    :cond_101
    return-object v0

    .line 259
    :cond_102
    sget-object v2, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 261
    const-string v3, "There was a serious problem writing the following StringFixedlength Field:"

    .line 263
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    move-result-object v3

    .line 267
    iget-object v6, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 269
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 287
    new-array v0, v0, [B

    .line 289
    :goto_120
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 291
    if-ge v5, v1, :cond_129

    .line 293
    aput-byte v4, v0, v5

    .line 295
    add-int/lit8 v5, v5, 0x1

    .line 297
    goto :goto_120

    .line 298
    :cond_129
    return-object v0

    .line 299
    :catch_12a
    move-exception v3

    .line 300
    sget-object v6, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 302
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    move-result-object v2

    .line 306
    iget-object v7, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 308
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v6, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 333
    new-array v0, v0, [B

    .line 335
    :goto_14e
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 337
    if-ge v5, v1, :cond_157

    .line 339
    aput-byte v4, v0, v5

    .line 341
    add-int/lit8 v5, v5, 0x1

    .line 343
    goto :goto_14e

    .line 344
    :cond_157
    return-object v0
.end method
