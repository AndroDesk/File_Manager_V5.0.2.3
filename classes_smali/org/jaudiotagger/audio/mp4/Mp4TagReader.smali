.class public Lorg/jaudiotagger/audio/mp4/Mp4TagReader;
.super Ljava/lang/Object;
.source "Mp4TagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.mp4"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMp4Field(Lorg/jaudiotagger/tag/mp4/Mp4Tag;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 13

    .line 1
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "----"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_36

    .line 15
    :try_start_e
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    .line 17
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 20
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_18

    .line 23
    goto/16 :goto_1d5

    .line 25
    :catch_18
    move-exception v0

    .line 26
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 28
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_UNABLE_READ_REVERSE_DNS_FIELD:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    aput-object v0, v2, v1

    .line 38
    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    .line 47
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 50
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 53
    goto/16 :goto_1d5

    .line 55
    :cond_36
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    .line 58
    move-result v0

    .line 59
    const/4 v3, 0x4

    .line 60
    const-string v4, "ISO-8859-1"

    .line 62
    invoke-static {p3, v3, v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    const-string v4, "data"

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v3

    .line 72
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    if-eqz v3, :cond_1b4

    .line 77
    const/16 v0, 0xb

    .line 79
    const/16 v3, 0x9

    .line 81
    invoke-static {p3, v3, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 88
    move-result-object v3

    .line 89
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 91
    const-string v5, "Box Type id:"

    .line 93
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v6, ":type:"

    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 125
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_94

    .line 135
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 137
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 140
    move-result-object p2

    .line 141
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 144
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 147
    goto/16 :goto_1d5

    .line 149
    :cond_94
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 152
    move-result-object v4

    .line 153
    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 155
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_b2

    .line 165
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 167
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 170
    move-result-object p2

    .line 171
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 174
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 177
    goto/16 :goto_1d5

    .line 179
    :cond_b2
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 182
    move-result-object v4

    .line 183
    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 185
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_d0

    .line 195
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;

    .line 197
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 200
    move-result-object p2

    .line 201
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 204
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 207
    goto/16 :goto_1d5

    .line 209
    :cond_d0
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 212
    move-result-object v4

    .line 213
    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 215
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_18e

    .line 225
    invoke-static {v3}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->isCoverArtType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Z

    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_e8

    .line 231
    goto/16 :goto_18e

    .line 233
    :cond_e8
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 235
    if-ne v3, v4, :cond_fa

    .line 237
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    .line 239
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 242
    move-result-object p2

    .line 243
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 246
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 249
    goto/16 :goto_1d5

    .line 251
    :cond_fa
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 253
    if-ne v3, v4, :cond_10c

    .line 255
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;

    .line 257
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 260
    move-result-object p2

    .line 261
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 264
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 267
    goto/16 :goto_1d5

    .line 269
    :cond_10c
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 271
    if-ne v3, v4, :cond_11e

    .line 273
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    .line 275
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 278
    move-result-object p2

    .line 279
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 282
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 285
    goto/16 :goto_1d5

    .line 287
    :cond_11e
    invoke-static {}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->values()[Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 290
    move-result-object v3

    .line 291
    array-length v4, v3

    .line 292
    move v5, v1

    .line 293
    :goto_124
    const-string v6, " with invalid field type of:"

    .line 295
    if-ge v5, v4, :cond_15e

    .line 297
    aget-object v7, v3, v5

    .line 299
    invoke-virtual {v7}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 302
    move-result-object v7

    .line 303
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    move-result v7

    .line 311
    if-eqz v7, :cond_15b

    .line 313
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 315
    const-string v3, "Known Field:"

    .line 317
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v4, " is ignored"

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 346
    move v1, v2

    .line 347
    goto :goto_15e

    .line 348
    :cond_15b
    add-int/lit8 v5, v5, 0x1

    .line 350
    goto :goto_124

    .line 351
    :cond_15e
    :goto_15e
    if-nez v1, :cond_1d5

    .line 353
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 355
    const-string v2, "UnKnown Field:"

    .line 357
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    const-string v0, " created as binary"

    .line 376
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 386
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;

    .line 388
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 391
    move-result-object p2

    .line 392
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 395
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 398
    goto :goto_1d5

    .line 399
    :cond_18e
    :goto_18e
    move v0, v1

    .line 400
    :goto_18f
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 403
    move-result v4

    .line 404
    if-ge v1, v4, :cond_1d5

    .line 406
    if-lez v0, :cond_1a4

    .line 408
    add-int/lit8 v3, v1, 0x9

    .line 410
    add-int/lit8 v4, v3, 0x3

    .line 412
    sub-int/2addr v4, v2

    .line 413
    invoke-static {p3, v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 416
    move-result v3

    .line 417
    invoke-static {v3}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 420
    move-result-object v3

    .line 421
    :cond_1a4
    new-instance v4, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    .line 423
    invoke-direct {v4, p3, v3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)V

    .line 426
    invoke-virtual {p1, v4}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 429
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getDataAndHeaderSize()I

    .line 432
    move-result v4

    .line 433
    add-int/2addr v1, v4

    .line 434
    add-int/lit8 v0, v0, 0x1

    .line 436
    goto :goto_18f

    .line 437
    :cond_1b4
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 440
    move-result-object v0

    .line 441
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 443
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->getFieldName()Ljava/lang/String;

    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_1cd

    .line 453
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    .line 455
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 458
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 461
    goto :goto_1d5

    .line 462
    :cond_1cd
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    .line 464
    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 467
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 470
    :cond_1d5
    :goto_1d5
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/mp4/Mp4Tag;
    .registers 9

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 6
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 8
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_10f

    .line 18
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x8

    .line 24
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 40
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_69

    .line 50
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 52
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_49

    .line 62
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 64
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 66
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 73
    return-object v0

    .line 74
    :cond_49
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    .line 76
    invoke-direct {v2, p1, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 79
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 82
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 84
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 91
    move-result-object p1

    .line 92
    if-nez p1, :cond_a1

    .line 94
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 96
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 98
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 105
    return-object v0

    .line 106
    :cond_69
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 108
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_81

    .line 118
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 120
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 122
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 129
    return-object v0

    .line 130
    :cond_81
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    .line 132
    invoke-direct {v2, p1, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 135
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 138
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 140
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-static {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 147
    move-result-object p1

    .line 148
    if-nez p1, :cond_a1

    .line 150
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 152
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 154
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 161
    return-object v0

    .line 162
    :cond_a1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 165
    move-result v2

    .line 166
    add-int/lit8 v2, v2, -0x8

    .line 168
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 171
    move-result-object v1

    .line 172
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 174
    const-string v4, "headerlengthsays:"

    .line 176
    const-string v5, "datalength:"

    .line 178
    invoke-static {v4, v2, v5}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 185
    move-result v5

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 196
    const/4 v3, 0x0

    .line 197
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 199
    const-string v5, "Started to read metadata fields at position is in metadata buffer:"

    .line 201
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 208
    move-result v6

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 219
    :goto_da
    if-ge v3, v2, :cond_10e

    .line 221
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    .line 224
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    .line 226
    const-string v5, "Next position is at:"

    .line 228
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 235
    move-result v6

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 249
    move-result-object v4

    .line 250
    invoke-direct {p0, v0, p1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->createMp4Field(Lorg/jaudiotagger/tag/mp4/Mp4Tag;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 253
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 256
    move-result v4

    .line 257
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 260
    move-result v5

    .line 261
    add-int/2addr v5, v4

    .line 262
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 268
    move-result v4

    .line 269
    add-int/2addr v3, v4

    .line 270
    goto :goto_da

    .line 271
    :cond_10e
    return-object v0

    .line 272
    :cond_10f
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 274
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 276
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 280
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 283
    throw p1
.end method
