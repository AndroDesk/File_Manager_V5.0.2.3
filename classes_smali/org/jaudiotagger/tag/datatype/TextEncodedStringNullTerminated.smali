.class public Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractString;
.source "TextEncodedStringNullTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractString;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
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

.method public readByteArray([BI)V
    .registers 11

    .line 1
    array-length v0, p1

    .line 2
    const-string v1, "Unable to find null terminated string"

    .line 4
    if-ge p2, v0, :cond_17d

    .line 6
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "Reading from array starting from offset:"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getTextEncodingCharSet()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 39
    move-result-object v2

    .line 40
    array-length v3, p1

    .line 41
    sub-int/2addr v3, p2

    .line 42
    invoke-static {p1, p2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 45
    move-result-object v3

    .line 46
    const-string v4, "ISO-8859-1"

    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x1

    .line 54
    if-nez v4, :cond_42

    .line 56
    const-string v4, "UTF-8"

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_40

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    move v0, v5

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    :goto_42
    move v0, v6

    .line 68
    :cond_43
    :goto_43
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_d7

    .line 74
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_ca

    .line 80
    if-eqz v0, :cond_75

    .line 82
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 88
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 91
    move-result v3

    .line 92
    add-int/lit8 v3, v3, -0x1

    .line 94
    sget-object v4, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v7, "Null terminator found starting at:"

    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 116
    :goto_73
    move v5, v3

    .line 117
    goto :goto_c7

    .line 118
    :cond_75
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_a4

    .line 124
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_43

    .line 130
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 133
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 136
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 139
    move-result v3

    .line 140
    add-int/lit8 v3, v3, -0x2

    .line 142
    sget-object v4, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const-string v7, "UTF16:Null terminator found starting  at:"

    .line 151
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 164
    goto :goto_73

    .line 165
    :cond_a4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 168
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 174
    move-result v3

    .line 175
    add-int/lit8 v3, v3, -0x1

    .line 177
    sget-object v4, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string v7, "UTF16:Should be two null terminator marks but only found one starting at:"

    .line 186
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 199
    goto :goto_73

    .line 200
    :goto_c7
    move v3, v5

    .line 201
    move v5, v6

    .line 202
    goto :goto_d8

    .line 203
    :cond_ca
    if-nez v0, :cond_43

    .line 205
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_43

    .line 211
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    .line 214
    goto/16 :goto_43

    .line 216
    :cond_d7
    move v3, v5

    .line 217
    :goto_d8
    if-eqz v5, :cond_177

    .line 219
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const-string v5, "End Position is:"

    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v5, "Offset:"

    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 249
    sub-int/2addr v3, p2

    .line 250
    add-int/lit8 v1, v3, 0x1

    .line 252
    if-nez v0, :cond_ff

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 256
    :cond_ff
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->setSize(I)V

    .line 259
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    const-string v5, "Text size is:"

    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 281
    if-nez v3, :cond_11f

    .line 283
    const-string p1, ""

    .line 285
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 287
    goto :goto_15a

    .line 288
    :cond_11f
    invoke-static {p1, p2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 295
    move-result-object p1

    .line 296
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 303
    invoke-virtual {v2, p1, p2, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_14e

    .line 313
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 315
    const-string v3, "Problem decoding text encoded null terminated string:"

    .line 317
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 335
    :cond_14e
    invoke-virtual {v2, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 338
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 341
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 344
    move-result-object p1

    .line 345
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 347
    :goto_15a
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 349
    const-string p2, "Read NullTerminatedString:"

    .line 351
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    move-result-object p2

    .line 355
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 357
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    const-string v0, " size inc terminator:"

    .line 362
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 375
    return-void

    .line 376
    :cond_177
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 378
    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 381
    throw p1

    .line 382
    :cond_17d
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 384
    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 387
    throw p1
.end method

.method public writeByteArray()[B
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing NullTerminatedString."

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 21
    :try_start_14
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getTextEncodingCharSet()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "UTF-16"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_5a

    .line 34
    const-string v0, "UTF-16LE"

    .line 36
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const v3, 0xfeff

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 57
    check-cast v3, Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 80
    move-result v1

    .line 81
    new-array v1, v1, [B

    .line 83
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 86
    move-result v3

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 90
    goto :goto_8a

    .line 91
    :cond_5a
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

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
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_14 .. :try_end_8a} :catch_8f

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
