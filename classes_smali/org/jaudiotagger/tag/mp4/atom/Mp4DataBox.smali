.class public Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4DataBox.java"


# static fields
.field public static final DATA_HEADER_LENGTH:I = 0x10

.field public static final IDENTIFIER:Ljava/lang/String; = "data"

.field public static final NULL_LENGTH:I = 0x4

.field public static final NUMBER_LENGTH:I = 0x2

.field public static final PRE_DATA_LENGTH:I = 0x8

.field public static final TYPE_LENGTH:I = 0x3

.field public static final TYPE_POS:I = 0x1

.field public static final TYPE_POS_INCLUDING_HEADER:I = 0x9

.field public static final VERSION_LENGTH:I = 0x1


# instance fields
.field private bytedata:[B

.field private content:Ljava/lang/String;

.field private numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "data"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_11f

    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 24
    const/4 v1, 0x3

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {v0, v2, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    .line 32
    sget-object v1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 34
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    .line 37
    move-result v1

    .line 38
    const/16 v3, 0x8

    .line 40
    if-ne v0, v1, :cond_3c

    .line 42
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 47
    move-result v0

    .line 48
    sub-int/2addr v0, v3

    .line 49
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {p2, v3, v0, p1}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    .line 59
    goto/16 :goto_11e

    .line 61
    :cond_3c
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    .line 63
    sget-object v1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 65
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    .line 68
    move-result v1

    .line 69
    const/4 v4, 0x0

    .line 70
    if-ne v0, v1, :cond_9a

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    .line 74
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 79
    :goto_4e
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 82
    move-result p2

    .line 83
    sub-int/2addr p2, v3

    .line 84
    div-int/lit8 p2, p2, 0x2

    .line 86
    if-ge v4, p2, :cond_6e

    .line 88
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 90
    mul-int/lit8 v0, v4, 0x2

    .line 92
    add-int/2addr v0, v3

    .line 93
    add-int/lit8 v1, v0, 0x1

    .line 95
    invoke-static {p2, v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getShortBE(Ljava/nio/ByteBuffer;II)S

    .line 98
    move-result p2

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 101
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 104
    move-result-object p2

    .line 105
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_4e

    .line 111
    :cond_6e
    new-instance p1, Ljava/lang/StringBuffer;

    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    iget-object p2, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 118
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 121
    move-result-object p2

    .line 122
    :cond_79
    :goto_79
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_92

    .line 128
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 135
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_79

    .line 141
    const-string v0, "/"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    goto :goto_79

    .line 147
    :cond_92
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    .line 153
    goto/16 :goto_11e

    .line 155
    :cond_9a
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    .line 157
    sget-object v1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 159
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    .line 162
    move-result v1

    .line 163
    if-ne v0, v1, :cond_103

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 175
    move-result v5

    .line 176
    sub-int/2addr v5, v2

    .line 177
    invoke-static {v1, v3, v5}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 180
    move-result v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ""

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 198
    move-result v0

    .line 199
    sub-int/2addr v0, v3

    .line 200
    new-array v0, v0, [B

    .line 202
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    .line 204
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 207
    move-result v0

    .line 208
    add-int/lit8 v1, v0, 0x8

    .line 210
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    .line 215
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    new-instance p2, Ljava/util/ArrayList;

    .line 223
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 228
    :goto_e3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 231
    move-result p2

    .line 232
    sub-int/2addr p2, v3

    .line 233
    div-int/lit8 p2, p2, 0x2

    .line 235
    if-ge v4, p2, :cond_11e

    .line 237
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 239
    mul-int/lit8 v0, v4, 0x2

    .line 241
    add-int/2addr v0, v3

    .line 242
    add-int/lit8 v1, v0, 0x1

    .line 244
    invoke-static {p2, v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getShortBE(Ljava/nio/ByteBuffer;II)S

    .line 247
    move-result p2

    .line 248
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 250
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 253
    move-result-object p2

    .line 254
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v4, v4, 0x1

    .line 259
    goto :goto_e3

    .line 260
    :cond_103
    iget p2, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    .line 262
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 264
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    .line 267
    move-result v0

    .line 268
    if-ne p2, v0, :cond_11e

    .line 270
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 272
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 275
    move-result v0

    .line 276
    sub-int/2addr v0, v3

    .line 277
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    invoke-static {p2, v3, v0, p1}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 284
    move-result-object p1

    .line 285
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    .line 287
    :cond_11e
    :goto_11e
    return-void

    .line 288
    :cond_11f
    new-instance p2, Ljava/lang/RuntimeException;

    .line 290
    const-string v0, "Unable to process data box because identifier is:"

    .line 292
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object p1

    .line 307
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 310
    throw p2
.end method


# virtual methods
.method public getByteData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    .line 3
    return v0
.end method
