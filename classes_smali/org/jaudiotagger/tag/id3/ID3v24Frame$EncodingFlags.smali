.class Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
.source "ID3v24Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/ID3v24Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodingFlags"
.end annotation


# static fields
.field public static final MASK_COMPRESSION:I = 0x8

.field public static final MASK_DATA_LENGTH_INDICATOR:I = 0x1

.field public static final MASK_ENCRYPTION:I = 0x4

.field public static final MASK_FRAME_UNSYNCHRONIZATION:I = 0x2

.field public static final MASK_GROUPING_IDENTITY:I = 0x40

.field public static final TYPE_COMPRESSION:Ljava/lang/String; = "compression"

.field public static final TYPE_DATALENGTHINDICATOR:Ljava/lang/String; = "dataLengthIndicator"

.field public static final TYPE_ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final TYPE_FRAMEUNSYNCHRONIZATION:Ljava/lang/String; = "frameUnsynchronisation"

.field public static final TYPE_GROUPIDENTITY:Ljava/lang/String; = "groupidentity"


# instance fields
.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V
    .registers 3

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;B)V

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->logEnabledFlags()V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "encodingFlags"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 15
    move-result-object v0

    .line 16
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 18
    and-int/lit8 v2, v2, 0x8

    .line 20
    const-string v3, "compression"

    .line 22
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 25
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 28
    move-result-object v0

    .line 29
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 31
    and-int/lit8 v2, v2, 0x4

    .line 33
    const-string v3, "encryption"

    .line 35
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 38
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 41
    move-result-object v0

    .line 42
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 44
    and-int/lit8 v2, v2, 0x40

    .line 46
    const-string v3, "groupidentity"

    .line 48
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 51
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 54
    move-result-object v0

    .line 55
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 57
    and-int/lit8 v2, v2, 0x2

    .line 59
    const-string v3, "frameUnsynchronisation"

    .line 61
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 64
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 67
    move-result-object v0

    .line 68
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 70
    and-int/lit8 v2, v2, 0x1

    .line 72
    const-string v3, "dataLengthIndicator"

    .line 74
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 77
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public getFlags()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    return v0
.end method

.method public isCompression()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isDataLengthIndicator()Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-lez v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public isEncryption()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isGrouping()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isNonStandardFlags()Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 5
    if-gtz v1, :cond_11

    .line 7
    and-int/lit8 v1, v0, 0x20

    .line 9
    if-gtz v1, :cond_11

    .line 11
    and-int/lit8 v0, v0, 0x10

    .line 13
    if-lez v0, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 19
    :goto_12
    return v0
.end method

.method public isUnsynchronised()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public logEnabledFlags()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isNonStandardFlags()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_37

    .line 7
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 16
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, ":"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 30
    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ":Unknown Encoding Flags:"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 42
    invoke-static {v2}, Lorg/jaudiotagger/logging/Hex;->asHex(B)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 56
    :cond_37
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isCompression()Z

    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x2

    .line 63
    if-eqz v0, :cond_5b

    .line 65
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 67
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_FRAME_IS_COMPRESSED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 69
    new-array v5, v3, [Ljava/lang/Object;

    .line 71
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 73
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    aput-object v6, v5, v2

    .line 79
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 81
    iget-object v6, v6, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 83
    aput-object v6, v5, v1

    .line 85
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 92
    :cond_5b
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7c

    .line 98
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 100
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_FRAME_IS_ENCRYPTED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 102
    new-array v5, v3, [Ljava/lang/Object;

    .line 104
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 106
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 110
    aput-object v6, v5, v2

    .line 112
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 114
    iget-object v6, v6, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 116
    aput-object v6, v5, v1

    .line 118
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 125
    :cond_7c
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isGrouping()Z

    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_9d

    .line 131
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 133
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_FRAME_IS_GROUPED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 135
    new-array v5, v3, [Ljava/lang/Object;

    .line 137
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 139
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 142
    move-result-object v6

    .line 143
    aput-object v6, v5, v2

    .line 145
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 147
    iget-object v6, v6, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 149
    aput-object v6, v5, v1

    .line 151
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 158
    :cond_9d
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isUnsynchronised()Z

    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_be

    .line 164
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 166
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_FRAME_IS_UNSYNCHRONISED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 168
    new-array v5, v3, [Ljava/lang/Object;

    .line 170
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 172
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 175
    move-result-object v6

    .line 176
    aput-object v6, v5, v2

    .line 178
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 180
    iget-object v6, v6, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 182
    aput-object v6, v5, v1

    .line 184
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 191
    :cond_be
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isDataLengthIndicator()Z

    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_df

    .line 197
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 199
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_FRAME_IS_DATA_LENGTH_INDICATOR:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 201
    new-array v3, v3, [Ljava/lang/Object;

    .line 203
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 205
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 208
    move-result-object v5

    .line 209
    aput-object v5, v3, v2

    .line 211
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 213
    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 215
    aput-object v2, v3, v1

    .line 217
    invoke-virtual {v4, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 224
    :cond_df
    return-void
.end method

.method public setCompression()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public setDataLengthIndicator()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public setEncryption()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public setGrouping()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public setUnsynchronised()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetCompression()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetDataLengthIndicator()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetEncryption()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetGrouping()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetNonStandardFlags()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isNonStandardFlags()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_46

    .line 7
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 16
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, ":"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 30
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ":Unsetting Unknown Encoding Flags:"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 44
    invoke-static {v2}, Lorg/jaudiotagger/logging/Hex;->asHex(B)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 58
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 60
    and-int/lit8 v0, v0, 0x7f

    .line 62
    int-to-byte v0, v0

    .line 63
    and-int/lit8 v0, v0, -0x21

    .line 65
    int-to-byte v0, v0

    .line 66
    and-int/lit8 v0, v0, -0x11

    .line 68
    int-to-byte v0, v0

    .line 69
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 71
    :cond_46
    return-void
.end method

.method public unsetUnsynchronised()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method
