.class public Lorg/jaudiotagger/tag/id3/ID3v22Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.source "ID3v22Tag.java"


# static fields
.field public static final MAJOR_VERSION:B = 0x2t

.field public static final MASK_V22_COMPRESSION:I = 0x40

.field public static final MASK_V22_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field public static final TYPE_COMPRESSION:Ljava/lang/String; = "compression"

.field public static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field public compression:Z

.field public unsynchronization:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 3
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, ""

    .line 32
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 29
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 30
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 14
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 17
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-eqz p1, :cond_51

    .line 18
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    if-nez v0, :cond_30

    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    if-nez v0, :cond_28

    goto :goto_30

    .line 19
    :cond_28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_30
    :goto_30
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_37

    .line 21
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    goto :goto_3d

    .line 22
    :cond_37
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 23
    :goto_3d
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 25
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 26
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v0, "Created tag from a tag of a different version"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_51
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v22Tag;)V
    .registers 4

    .line 6
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 8
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 11
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .registers 10

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
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 16
    and-int/lit8 v3, p1, 0x40

    .line 18
    if-eqz v3, :cond_15

    .line 20
    move v3, v2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v3, v1

    .line 23
    :goto_16
    iput-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 25
    if-eqz v0, :cond_2d

    .line 27
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 29
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 31
    new-array v4, v2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v4, v1

    .line 39
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    :cond_2d
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 48
    if-eqz v0, :cond_44

    .line 50
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 52
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_COMPRESSED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 54
    new-array v4, v2, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    aput-object v5, v4, v1

    .line 62
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 69
    :cond_44
    and-int/lit8 v0, p1, 0x20

    .line 71
    const/4 v3, 0x2

    .line 72
    if-eqz v0, :cond_64

    .line 74
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 76
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 78
    new-array v5, v3, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    aput-object v6, v5, v1

    .line 86
    const/16 v6, 0x20

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v6

    .line 92
    aput-object v6, v5, v2

    .line 94
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 101
    :cond_64
    and-int/lit8 v0, p1, 0x10

    .line 103
    if-eqz v0, :cond_83

    .line 105
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 107
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 109
    new-array v5, v3, [Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 115
    aput-object v6, v5, v1

    .line 117
    const/16 v6, 0x10

    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v6

    .line 123
    aput-object v6, v5, v2

    .line 125
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 132
    :cond_83
    and-int/lit8 v0, p1, 0x8

    .line 134
    const/16 v4, 0x8

    .line 136
    if-eqz v0, :cond_a2

    .line 138
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 140
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 142
    new-array v6, v3, [Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 147
    move-result-object v7

    .line 148
    aput-object v7, v6, v1

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v7

    .line 154
    aput-object v7, v6, v2

    .line 156
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 163
    :cond_a2
    and-int/lit8 v0, p1, 0x4

    .line 165
    if-eqz v0, :cond_c0

    .line 167
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 169
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 171
    new-array v6, v3, [Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 176
    move-result-object v7

    .line 177
    aput-object v7, v6, v1

    .line 179
    const/4 v7, 0x4

    .line 180
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v7

    .line 184
    aput-object v7, v6, v2

    .line 186
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 193
    :cond_c0
    and-int/lit8 v0, p1, 0x2

    .line 195
    if-eqz v0, :cond_dd

    .line 197
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 199
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 201
    new-array v6, v3, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 206
    move-result-object v7

    .line 207
    aput-object v7, v6, v1

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v7

    .line 213
    aput-object v7, v6, v2

    .line 215
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 222
    :cond_dd
    and-int/2addr p1, v2

    .line 223
    if-eqz p1, :cond_f9

    .line 225
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 227
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 229
    new-array v3, v3, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 234
    move-result-object v5

    .line 235
    aput-object v5, v3, v1

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object v1

    .line 241
    aput-object v1, v3, v2

    .line 243
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 250
    :cond_f9
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 4
    const/16 v1, 0xa

    .line 6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    .line 12
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->getMajorVersion()B

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->getRevision()B

    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 31
    if-eqz v2, :cond_23

    .line 33
    const/16 v0, -0x80

    .line 35
    int-to-byte v0, v0

    .line 36
    :cond_23
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 38
    if-eqz v2, :cond_2a

    .line 40
    or-int/lit8 v0, v0, 0x40

    .line 42
    int-to-byte v0, v0

    .line 43
    :cond_2a
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    add-int/2addr p1, p2

    .line 47
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 57
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
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->translateFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 24
    goto :goto_49

    .line 25
    :cond_18
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

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
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    .line 39
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

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
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    .line 13
    if-eqz v0, :cond_19

    .line 15
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    .line 17
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 19
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 21
    iget-boolean p1, p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 23
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 25
    goto :goto_35

    .line 26
    :cond_19
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 28
    if-eqz v0, :cond_28

    .line 30
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 32
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 34
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 36
    iget-boolean p1, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 38
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 40
    goto :goto_35

    .line 41
    :cond_28
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 43
    if-eqz v0, :cond_35

    .line 45
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 50
    iget-boolean p1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 52
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

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
    invoke-static {p2}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string p2, "ImageType"

    .line 39
    invoke-virtual {v1, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    const-string p1, "Description"

    .line 44
    const-string p2, ""

    .line 46
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

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

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImageType"

    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    const-string v2, ""

    .line 8
    invoke-virtual {v1, p1, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 5

    if-eqz p1, :cond_14

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    move-result-object p1

    return-object p1
.end method

.method public createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v22Frame;
    .registers 3

    .line 2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .registers 6

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->getIdentifier()Ljava/lang/String;

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
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 34
    const-string v4, "compression"

    .line 36
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 39
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 42
    move-result-object v0

    .line 43
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 45
    const-string v4, "unsyncronisation"

    .line 47
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 50
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 57
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 60
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 67
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

.method public deleteField(Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

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
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

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
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    .line 10
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 12
    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 19
    iget-boolean v0, v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 21
    if-ne v2, v0, :cond_1d

    .line 23
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1d

    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1d
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
    if-eqz v2, :cond_49

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
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    .line 40
    new-instance v3, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 42
    invoke-direct {v3}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    .line 45
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->getFormatType()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->getPictureType()I

    .line 59
    move-result v4

    .line 60
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    .line 63
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->getImageData()[B

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 70
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_13

    .line 74
    :cond_49
    return-object v1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;)Ljava/lang/String;
    .registers 5

    .line 1
    if-eqz p1, :cond_81

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, p0, v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;

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
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;

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
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;

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
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;

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
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getId3KeyFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_18

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

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
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "ID3v2_2.20"

    return-object v0
.end method

.method public getMajorVersion()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

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
    .registers 2

    .line 1
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0xa

    .line 7
    return v0
.end method

.method public isCompression()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 3
    return v0
.end method

.method public isUnsynchronization()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 3
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_66

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
    const-string v3, "Reading tag from file"

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 41
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 48
    move-result-object p1

    .line 49
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 51
    if-eqz v1, :cond_38

    .line 53
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    move-result-object p1

    .line 57
    :cond_38
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 60
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "Loaded Frames,there are:"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 84
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 102
    return-void

    .line 103
    :cond_66
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 105
    const-string v0, "ID3v2.20 tag not found"

    .line 107
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1
.end method

.method public readFrames(Ljava/nio/ByteBuffer;I)V
    .registers 8

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
    const-string v2, ":"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, "Start of frame body at:"

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, ",frames sizes and padding is:"

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 63
    :goto_3e
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 66
    move-result v0

    .line 67
    if-ge v0, p2, :cond_149

    .line 69
    :try_start_44
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "looking for next frame at:"

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 94
    move-result v3

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    .line 107
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, p1, v1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_78
    .catch Lorg/jaudiotagger/tag/PaddingException; {:try_start_44 .. :try_end_78} :catch_128
    .catch Lorg/jaudiotagger/tag/EmptyFrameException; {:try_start_44 .. :try_end_78} :catch_fb
    .catch Lorg/jaudiotagger/tag/InvalidFrameIdentifierException; {:try_start_44 .. :try_end_78} :catch_cf
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_44 .. :try_end_78} :catch_a2
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_44 .. :try_end_78} :catch_79

    .line 121
    goto :goto_3e

    .line 122
    :catch_79
    move-exception v0

    .line 123
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v4, ":Corrupt Frame:"

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 160
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 162
    goto :goto_3e

    .line 163
    :catch_a2
    move-exception p1

    .line 164
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "Invalid Frame:"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 200
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 202
    add-int/lit8 p1, p1, 0x1

    .line 204
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 206
    goto/16 :goto_149

    .line 208
    :catch_cf
    move-exception p1

    .line 209
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, "Invalid Frame Identifier:"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 245
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 247
    add-int/lit8 p1, p1, 0x1

    .line 249
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 251
    goto :goto_149

    .line 252
    :catch_fb
    move-exception v0

    .line 253
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    .line 257
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v4, "Empty Frame:"

    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 289
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 291
    add-int/lit8 v0, v0, 0x6

    .line 293
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 295
    goto/16 :goto_3e

    .line 297
    :catch_128
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, ":Found padding starting at:"

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 319
    move-result p1

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 330
    :cond_149
    :goto_149
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
    .registers 5

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
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2d

    .line 17
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    .line 19
    const-string v1, "TYE"

    .line 21
    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 30
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 39
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2d
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_54

    .line 56
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    .line 58
    const-string v1, "TIM"

    .line 60
    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 69
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 78
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_54
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
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 8
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 9
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

    :cond_62
    move-object v6, v0

    .line 10
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result v8

    .line 11
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    sub-int v7, v8, v0

    .line 12
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

    .line 13
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

    .line 14
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

    .line 15
    array-length v0, v6

    invoke-direct {p0, v7, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-wide v9, p2

    .line 16
    invoke-virtual/range {v3 .. v10}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .registers 7

    .line 20
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

    .line 21
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 22
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

    .line 23
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
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 24
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 25
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 26
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

    .line 27
    :cond_7e
    array-length v1, v0

    invoke-direct {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 28
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
