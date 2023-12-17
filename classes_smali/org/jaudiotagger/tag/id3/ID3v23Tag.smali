.class public Lorg/jaudiotagger/tag/id3/ID3v23Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.source "ID3v23Tag.java"


# static fields
.field public static FIELD_TAG_EXT_SIZE_LENGTH:I = 0x4

.field public static final MAJOR_VERSION:B = 0x3t

.field public static final MASK_V23_CRC_DATA_PRESENT:I = 0x80

.field public static final MASK_V23_EMBEDDED_INFO_FLAG:I = 0x2

.field public static final MASK_V23_EXPERIMENTAL:I = 0x20

.field public static final MASK_V23_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V23_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field public static TAG_EXT_HEADER_CRC_LENGTH:I = 0x4

.field public static TAG_EXT_HEADER_DATA_LENGTH:I = 0x0

.field public static TAG_EXT_HEADER_LENGTH:I = 0xa

.field public static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field public static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field public static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field public static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field public static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field public compression:Z

.field private crc32:I

.field public crcDataFlag:Z

.field public experimental:Z

.field public extended:Z

.field private paddingSize:I

.field public unsynchronization:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x4

    .line 2
    rsub-int/lit8 v0, v0, 0xa

    .line 4
    sput v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 3
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 4
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 5
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 6
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 7
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, ""

    .line 48
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 41
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 42
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 43
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 44
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 45
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 46
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 22
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 23
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 24
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 25
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 26
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 27
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    if-eqz p1, :cond_55

    .line 30
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    if-nez v0, :cond_4d

    .line 31
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_32

    .line 32
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    goto :goto_38

    .line 33
    :cond_32
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 34
    :goto_38
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 36
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 37
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v0, "Created tag from a tag of a different version"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_55

    .line 38
    :cond_4d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    :goto_55
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Tag;)V
    .registers 4

    .line 10
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 12
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 13
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 14
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 15
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 16
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 17
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 19
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 4
    move-result p2

    .line 5
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne p2, v0, :cond_55

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    move-result p2

    .line 16
    and-int/lit16 p2, p2, 0x80

    .line 18
    if-eqz p2, :cond_15

    .line 20
    move p2, v2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move p2, v3

    .line 23
    :goto_16
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 25
    if-eqz p2, :cond_2d

    .line 27
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 29
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 31
    new-array v4, v2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v4, v3

    .line 39
    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 46
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 55
    if-lez p1, :cond_fa

    .line 57
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 59
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 61
    new-array v0, v1, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    aput-object v1, v0, v3

    .line 69
    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v1

    .line 75
    aput-object v1, v0, v2

    .line 77
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 84
    goto/16 :goto_fa

    .line 86
    :cond_55
    sget v4, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 88
    add-int/2addr v0, v4

    .line 89
    if-ne p2, v0, :cond_d7

    .line 91
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 93
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 95
    new-array v4, v2, [Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    aput-object v5, v4, v3

    .line 103
    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 113
    move-result p2

    .line 114
    and-int/lit16 p2, p2, 0x80

    .line 116
    if-eqz p2, :cond_77

    .line 118
    move p2, v2

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move p2, v3

    .line 121
    :goto_78
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 123
    if-nez p2, :cond_8f

    .line 125
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 127
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 129
    new-array v4, v2, [Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 134
    move-result-object v5

    .line 135
    aput-object v5, v4, v3

    .line 137
    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 144
    :cond_8f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 150
    move-result p2

    .line 151
    iput p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 153
    if-lez p2, :cond_b5

    .line 155
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 157
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 159
    new-array v4, v1, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 164
    move-result-object v5

    .line 165
    aput-object v5, v4, v3

    .line 167
    iget v5, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v5

    .line 173
    aput-object v5, v4, v2

    .line 175
    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 182
    :cond_b5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 185
    move-result p1

    .line 186
    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 188
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 190
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 192
    new-array v0, v1, [Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    aput-object v1, v0, v3

    .line 200
    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v1

    .line 206
    aput-object v1, v0, v2

    .line 208
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 215
    goto :goto_fa

    .line 216
    :cond_d7
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 218
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 220
    new-array v1, v1, [Ljava/lang/Object;

    .line 222
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 225
    move-result-object v5

    .line 226
    aput-object v5, v1, v3

    .line 228
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object p2

    .line 232
    aput-object p2, v1, v2

    .line 234
    invoke-virtual {v4, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 244
    move-result p2

    .line 245
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    .line 247
    sub-int/2addr p2, v0

    .line 248
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    :cond_fa
    :goto_fa
    return-void
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result p1

    .line 5
    and-int/lit16 v0, p1, 0x80

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_c

    .line 11
    move v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 16
    and-int/lit8 v0, p1, 0x40

    .line 18
    if-eqz v0, :cond_15

    .line 20
    move v0, v2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v1

    .line 23
    :goto_16
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 25
    and-int/lit8 v0, p1, 0x20

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    move v0, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v0, v1

    .line 32
    :goto_1f
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 34
    and-int/lit8 v0, p1, 0x10

    .line 36
    const/4 v3, 0x2

    .line 37
    if-eqz v0, :cond_41

    .line 39
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 41
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 43
    new-array v5, v3, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 48
    move-result-object v6

    .line 49
    aput-object v6, v5, v1

    .line 51
    const/16 v6, 0x10

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v6

    .line 57
    aput-object v6, v5, v2

    .line 59
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 66
    :cond_41
    and-int/lit8 v0, p1, 0x8

    .line 68
    if-eqz v0, :cond_60

    .line 70
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 72
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 74
    new-array v5, v3, [Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    aput-object v6, v5, v1

    .line 82
    const/16 v6, 0x8

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v6

    .line 88
    aput-object v6, v5, v2

    .line 90
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 97
    :cond_60
    and-int/lit8 v0, p1, 0x4

    .line 99
    if-eqz v0, :cond_7e

    .line 101
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 103
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 105
    new-array v5, v3, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 110
    move-result-object v6

    .line 111
    aput-object v6, v5, v1

    .line 113
    const/4 v6, 0x4

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v6

    .line 118
    aput-object v6, v5, v2

    .line 120
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 127
    :cond_7e
    and-int/lit8 v0, p1, 0x2

    .line 129
    if-eqz v0, :cond_9b

    .line 131
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 133
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 135
    new-array v5, v3, [Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 140
    move-result-object v6

    .line 141
    aput-object v6, v5, v1

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v6

    .line 147
    aput-object v6, v5, v2

    .line 149
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 156
    :cond_9b
    and-int/2addr p1, v2

    .line 157
    if-eqz p1, :cond_b7

    .line 159
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 161
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 163
    new-array v3, v3, [Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 169
    aput-object v4, v3, v1

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v4

    .line 175
    aput-object v4, v3, v2

    .line 177
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 184
    :cond_b7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_d0

    .line 190
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 192
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 194
    new-array v3, v2, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 199
    move-result-object v4

    .line 200
    aput-object v4, v3, v1

    .line 202
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 209
    :cond_d0
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 211
    if-eqz p1, :cond_e7

    .line 213
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 215
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 217
    new-array v3, v2, [Ljava/lang/Object;

    .line 219
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 222
    move-result-object v4

    .line 223
    aput-object v4, v3, v1

    .line 225
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 232
    :cond_e7
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 234
    if-eqz p1, :cond_fe

    .line 236
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 238
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 240
    new-array v2, v2, [Ljava/lang/Object;

    .line 242
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 245
    move-result-object v3

    .line 246
    aput-object v3, v2, v1

    .line 248
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 255
    :cond_fe
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 4
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 6
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 8
    sget v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 10
    add-int/lit8 v1, v1, 0xa

    .line 12
    sget v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 14
    add-int/2addr v1, v2

    .line 15
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    .line 21
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getMajorVersion()B

    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getRevision()B

    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    .line 41
    move-result v2

    .line 42
    const/16 v3, 0x80

    .line 44
    if-eqz v2, :cond_2f

    .line 46
    int-to-byte v2, v3

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v2, v0

    .line 49
    :goto_30
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 51
    if-eqz v4, :cond_37

    .line 53
    or-int/lit8 v2, v2, 0x40

    .line 55
    int-to-byte v2, v2

    .line 56
    :cond_37
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 58
    if-eqz v4, :cond_3e

    .line 60
    or-int/lit8 v2, v2, 0x20

    .line 62
    int-to-byte v2, v2

    .line 63
    :cond_3e
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 66
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 68
    if-eqz v2, :cond_50

    .line 70
    sget v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 72
    add-int/2addr v2, v0

    .line 73
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 75
    if-eqz v4, :cond_51

    .line 77
    sget v4, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 79
    add-int/2addr v2, v4

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v2, v0

    .line 82
    :cond_51
    :goto_51
    add-int/2addr p2, p1

    .line 83
    add-int/2addr p2, v2

    .line 84
    invoke-static {p2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 91
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 93
    if-eqz p2, :cond_8a

    .line 95
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 97
    if-eqz p2, :cond_7c

    .line 99
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    .line 101
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 103
    add-int/2addr p1, p2

    .line 104
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 107
    int-to-byte p1, v3

    .line 108
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 116
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 121
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    goto :goto_8a

    .line 125
    :cond_7c
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    .line 127
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 139
    :cond_8a
    :goto_8a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 142
    return-object v1
.end method


# virtual methods
.method public addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TDRC"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_18

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 19
    if-eqz v0, :cond_18

    .line 21
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->translateFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 24
    goto :goto_49

    .line 25
    :cond_18
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 27
    if-eqz v0, :cond_24

    .line 29
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 36
    goto :goto_49

    .line 37
    :cond_24
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 39
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 42
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_30
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_30} :catch_31

    .line 49
    goto :goto_49

    .line 50
    :catch_31
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 52
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 54
    const-string v2, "Unable to convert frame:"

    .line 56
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 74
    :goto_49
    return-void
.end method

.method public copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Copying primitives"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 11
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 13
    if-eqz v0, :cond_24

    .line 15
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 17
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 19
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 21
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 23
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 25
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 27
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 29
    iget v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 31
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 33
    iget p1, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 35
    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 37
    :cond_24
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 21
    const-string v2, "PictureData"

    .line 23
    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 28
    const-string v2, "PictureType"

    .line 30
    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string p1, "MIMEType"

    .line 35
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string p1, "Description"

    .line 40
    const-string p2, ""

    .line 42
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    move-result-object v2

    const-string v3, "PictureData"

    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getPictureType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PictureType"

    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MIMEType"

    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    const-string v2, ""

    .line 8
    invoke-virtual {v1, p1, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 5

    if-eqz p1, :cond_14

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 2
    :cond_14
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    return-object p1
.end method

.method public createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;
    .registers 3

    .line 2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .registers 6

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "tag"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 17
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "header"

    .line 23
    const-string v3, ""

    .line 25
    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    .line 35
    move-result v3

    .line 36
    const-string v4, "unsyncronisation"

    .line 38
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 41
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 44
    move-result-object v0

    .line 45
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 47
    const-string v4, "extended"

    .line 49
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 52
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 55
    move-result-object v0

    .line 56
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 58
    const-string v4, "experimental"

    .line 60
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 63
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 66
    move-result-object v0

    .line 67
    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 69
    const-string v4, "crcdata"

    .line 71
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 74
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 77
    move-result-object v0

    .line 78
    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 80
    const-string v4, "paddingsize"

    .line 82
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 85
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 95
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .registers 4

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 2
    :cond_13
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

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
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 10
    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 12
    iget v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 19
    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 21
    if-eq v2, v3, :cond_17

    .line 23
    return v1

    .line 24
    :cond_17
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 26
    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 28
    if-eq v2, v3, :cond_1e

    .line 30
    return v1

    .line 31
    :cond_1e
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 33
    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 35
    if-eq v2, v3, :cond_25

    .line 37
    return v1

    .line 38
    :cond_25
    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 40
    iget v0, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 42
    if-ne v2, v0, :cond_32

    .line 44
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_32

    .line 50
    const/4 v1, 0x1

    .line 51
    :cond_32
    return v1
.end method

.method public getArtworkList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Artwork;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_57

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 32
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 34
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 40
    new-instance v3, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 42
    invoke-direct {v3}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    .line 45
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    .line 59
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4c

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setLinked(Z)V

    .line 69
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->setImageUrl(Ljava/lang/String;)V

    .line 76
    goto :goto_53

    .line 77
    :cond_4c
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 84
    :goto_53
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    goto :goto_13

    .line 88
    :cond_57
    return-object v1
.end method

.method public getCrc32()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 3
    return v0
.end method

.method public getFirst(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)Ljava/lang/String;
    .registers 5

    .line 1
    if-eqz p1, :cond_81

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, p0, v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;

    .line 18
    if-ne p1, v1, :cond_2a

    .line 20
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 34
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2a
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;

    .line 45
    if-ne p1, v1, :cond_45

    .line 47
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 61
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_45
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;

    .line 72
    if-ne p1, v1, :cond_60

    .line 74
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 88
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :cond_60
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;

    .line 99
    if-ne p1, v1, :cond_7b

    .line 101
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 115
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :cond_7b
    const/4 p1, 0x0

    .line 125
    invoke-super {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    :cond_81
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 132
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 135
    throw p1
.end method

.method public getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getId3KeyFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_18

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p0, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-object v0

    .line 25
    :cond_18
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 27
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 30
    throw p1
.end method

.method public getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "ID3v2.30"

    return-object v0
.end method

.method public getMajorVersion()B
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getPaddingSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 3
    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRelease()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getRevision()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 3
    const/16 v1, 0xa

    .line 5
    if-eqz v0, :cond_10

    .line 7
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 12
    if-eqz v0, :cond_10

    .line 14
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 16
    add-int/2addr v1, v0

    .line 17
    :cond_10
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    .line 20
    move-result v0

    .line 21
    add-int/2addr v1, v0

    .line 22
    return v1
.end method

.method public isUnsynchronization()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 3
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_88

    .line 7
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ":"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "Reading ID3v23 tag"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 41
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 44
    move-result v0

    .line 45
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 47
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->ID_TAG_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 49
    const/4 v3, 0x2

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    aput-object v5, v3, v4

    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v3, v4

    .line 66
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 75
    if-eqz v1, :cond_4f

    .line 77
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    .line 80
    :cond_4f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5d

    .line 90
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 93
    move-result-object p1

    .line 94
    :cond_5d
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 97
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ":Loaded Frames,there are:"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 118
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 136
    return-void

    .line 137
    :cond_88
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, " tag not found"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1
.end method

.method public readFrames(Ljava/nio/ByteBuffer;I)V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 15
    iput p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 17
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, ":Start of frame body at:"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, ",frames data size is:"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 58
    :goto_39
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 61
    move-result v0

    .line 62
    if-ge v0, p2, :cond_137

    .line 64
    :try_start_3f
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, ":Looking for next frame at:"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 99
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, p1, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_70
    .catch Lorg/jaudiotagger/tag/PaddingException; {:try_start_3f .. :try_end_70} :catch_116
    .catch Lorg/jaudiotagger/tag/EmptyFrameException; {:try_start_3f .. :try_end_70} :catch_ec
    .catch Lorg/jaudiotagger/tag/InvalidFrameIdentifierException; {:try_start_3f .. :try_end_70} :catch_c3
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_3f .. :try_end_70} :catch_9a
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_3f .. :try_end_70} :catch_71

    .line 113
    goto :goto_39

    .line 114
    :catch_71
    move-exception v0

    .line 115
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, ":Corrupt Frame:"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 152
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 154
    goto :goto_39

    .line 155
    :catch_9a
    move-exception p1

    .line 156
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ":Invalid Frame:"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 189
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 191
    add-int/lit8 p1, p1, 0x1

    .line 193
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 195
    goto :goto_137

    .line 196
    :catch_c3
    move-exception p1

    .line 197
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ":Invalid Frame Identifier:"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 230
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 232
    add-int/lit8 p1, p1, 0x1

    .line 234
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 236
    goto :goto_137

    .line 237
    :catch_ec
    move-exception v0

    .line 238
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v3, ":Empty Frame:"

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 273
    add-int/lit8 v0, v0, 0xa

    .line 275
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 277
    goto/16 :goto_39

    .line 279
    :catch_116
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, ":Found padding starting at:"

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 301
    move-result p1

    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 312
    :cond_137
    :goto_137
    return-void
.end method

.method public readSize(Ljava/nio/ByteBuffer;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 7
    move-result p1

    .line 8
    add-int/lit8 p1, p1, 0xa

    .line 10
    return p1
.end method

.method public translateFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, ""

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    const-string v2, "Adding Frame:"

    .line 19
    if-nez v0, :cond_45

    .line 21
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 23
    const-string v3, "TYER"

    .line 25
    invoke-direct {v0, v3}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;

    .line 34
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 41
    sget-object v3, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 43
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 63
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_45
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_8d

    .line 80
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 82
    const-string v3, "TDAT"

    .line 84
    invoke-direct {v0, v3}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;

    .line 93
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;

    .line 106
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    .line 109
    move-result v4

    .line 110
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->setMonthOnly(Z)V

    .line 113
    sget-object v3, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 115
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 135
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_8d
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_d5

    .line 152
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 154
    const-string v1, "TIME"

    .line 156
    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;

    .line 165
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;

    .line 178
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    .line 181
    move-result p1

    .line 182
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;->setHoursOnly(Z)V

    .line 185
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 187
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 207
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_d5
    return-void
.end method

.method public write(Ljava/io/File;J)V
    .registers 15

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing tag to file:"

    .line 3
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 6
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 9
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 10
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_80
    move-object v6, v0

    .line 11
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result v8

    .line 12
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    sub-int v7, v8, v0

    .line 13
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Current audiostart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Size including padding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Padding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 16
    array-length v0, v6

    invoke-direct {p0, v7, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-wide v9, p2

    .line 17
    invoke-virtual/range {v3 .. v10}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .registers 7

    .line 21
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Writing tag to channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 23
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 25
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 26
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 27
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 28
    :cond_7e
    array-length v1, v0

    invoke-direct {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 29
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 30
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
