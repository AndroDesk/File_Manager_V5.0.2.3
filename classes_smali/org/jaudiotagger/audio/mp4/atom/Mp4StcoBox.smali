.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4StcoBox.java"


# static fields
.field public static final NO_OF_OFFSETS_LENGTH:I = 0x4

.field public static final NO_OF_OFFSETS_POS:I = 0x4

.field public static final OFFSET_LENGTH:I = 0x4

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private firstOffSet:I

.field private noOfOffSets:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, p2, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 7
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, p2, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;I)V
    .registers 6

    .line 9
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 15
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    :goto_3a
    iget p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    if-ge v0, p1, :cond_5f

    .line 17
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    add-int/2addr p1, p3

    .line 18
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_5f
    return-void
.end method

.method public static debugShowStcoInfo(Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "This file does not appear to be an audio file"

    .line 13
    if-eqz v0, :cond_e6

    .line 15
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x8

    .line 21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MVHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 37
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_e0

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 50
    move-result-object v0

    .line 51
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;

    .line 53
    invoke-direct {v2, p0, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 56
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 63
    move-result p0

    .line 64
    add-int/2addr p0, v2

    .line 65
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 70
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 81
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 84
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 86
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 93
    move-result-object p0

    .line 94
    if-eqz p0, :cond_da

    .line 96
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 98
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 105
    move-result-object p0

    .line 106
    if-eqz p0, :cond_d4

    .line 108
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 111
    move-result v2

    .line 112
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 115
    move-result p0

    .line 116
    add-int/2addr p0, v2

    .line 117
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 122
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_ce

    .line 132
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->SMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 134
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 141
    move-result-object p0

    .line 142
    if-eqz p0, :cond_c8

    .line 144
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 147
    move-result v2

    .line 148
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 151
    move-result p0

    .line 152
    add-int/2addr p0, v2

    .line 153
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 158
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 161
    move-result-object p0

    .line 162
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 165
    move-result-object p0

    .line 166
    if-eqz p0, :cond_c2

    .line 168
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 170
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 177
    move-result-object p0

    .line 178
    if-eqz p0, :cond_bc

    .line 180
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 182
    invoke-direct {v1, p0, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 185
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->printAlloffsets()V

    .line 188
    return-void

    .line 189
    :cond_bc
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 191
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 194
    throw p0

    .line 195
    :cond_c2
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 197
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p0

    .line 201
    :cond_c8
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 203
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 206
    throw p0

    .line 207
    :cond_ce
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 209
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 212
    throw p0

    .line 213
    :cond_d4
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 215
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 218
    throw p0

    .line 219
    :cond_da
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 221
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 224
    throw p0

    .line 225
    :cond_e0
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 227
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 230
    throw p0

    .line 231
    :cond_e6
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 233
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 236
    throw p0
.end method


# virtual methods
.method public adjustOffsets(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    add-int/lit8 v1, v1, 0x3

    .line 16
    add-int/lit8 v1, v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_15
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 24
    if-ge v0, v1, :cond_3a

    .line 26
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 37
    move-result v3

    .line 38
    add-int/lit8 v3, v3, 0x4

    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 42
    invoke-static {v1, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 45
    move-result v1

    .line 46
    add-int/2addr v1, p1

    .line 47
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 49
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 58
    goto :goto_15

    .line 59
    :cond_3a
    return-void
.end method

.method public getFirstOffSet()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    .line 3
    return v0
.end method

.method public getNoOfOffSets()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 3
    return v0
.end method

.method public printAlloffsets()V
    .registers 6

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    const-string v1, "Print Offsets:start"

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 15
    const/16 v1, 0x8

    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_14
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 25
    const-string v2, "offset into audio data is:"

    .line 27
    if-ge v0, v1, :cond_52

    .line 29
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 40
    move-result v4

    .line 41
    add-int/lit8 v4, v4, 0x4

    .line 43
    add-int/lit8 v4, v4, -0x1

    .line 45
    invoke-static {v1, v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 48
    move-result v1

    .line 49
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 74
    move-result v2

    .line 75
    add-int/lit8 v2, v2, 0x4

    .line 77
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 82
    goto :goto_14

    .line 83
    :cond_52
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 88
    move-result v1

    .line 89
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 94
    move-result v3

    .line 95
    add-int/lit8 v3, v3, 0x4

    .line 97
    add-int/lit8 v3, v3, -0x1

    .line 99
    invoke-static {v0, v1, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 102
    move-result v0

    .line 103
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 125
    const-string v1, "Print Offsets:end"

    .line 127
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public printTotalOffset()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 8
    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_e
    iget v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 19
    if-ge v0, v2, :cond_37

    .line 21
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 32
    move-result v4

    .line 33
    add-int/lit8 v4, v4, 0x4

    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 37
    invoke-static {v2, v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 40
    move-result v2

    .line 41
    add-int/2addr v1, v2

    .line 42
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 47
    move-result v3

    .line 48
    add-int/lit8 v3, v3, 0x4

    .line 50
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_e

    .line 56
    :cond_37
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 61
    move-result v2

    .line 62
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 67
    move-result v3

    .line 68
    add-int/lit8 v3, v3, 0x4

    .line 70
    add-int/lit8 v3, v3, -0x1

    .line 72
    invoke-static {v0, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 75
    move-result v0

    .line 76
    add-int/2addr v0, v1

    .line 77
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v3, "Print Offset Total:"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    return-void
.end method
