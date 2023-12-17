.class public abstract Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3Tag;
.source "AbstractID3v2Tag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    }
.end annotation


# static fields
.field public static final FIELD_TAGID_LENGTH:I = 0x3

.field public static final FIELD_TAGID_POS:I = 0x0

.field public static final FIELD_TAG_FLAG_LENGTH:I = 0x1

.field public static final FIELD_TAG_FLAG_POS:I = 0x5

.field public static final FIELD_TAG_MAJOR_VERSION_LENGTH:I = 0x1

.field public static final FIELD_TAG_MAJOR_VERSION_POS:I = 0x3

.field public static final FIELD_TAG_MINOR_VERSION_LENGTH:I = 0x1

.field public static final FIELD_TAG_MINOR_VERSION_POS:I = 0x4

.field public static final FIELD_TAG_SIZE_LENGTH:I = 0x4

.field public static final FIELD_TAG_SIZE_POS:I = 0x6

.field private static final MAXIMUM_WRITABLE_CHUNK_SIZE:J = 0x989680L

.field public static final TAG_HEADER_LENGTH:I = 0xa

.field public static final TAG_ID:[B

.field public static final TAG_SIZE_INCREMENT:I = 0x64

.field public static final TYPE_BODY:Ljava/lang/String; = "body"

.field public static final TYPE_DUPLICATEBYTES:Ljava/lang/String; = "duplicateBytes"

.field public static final TYPE_DUPLICATEFRAMEID:Ljava/lang/String; = "duplicateFrameId"

.field public static final TYPE_EMPTYFRAMEBYTES:Ljava/lang/String; = "emptyFrameBytes"

.field public static final TYPE_FILEREADSIZE:Ljava/lang/String; = "fileReadSize"

.field public static final TYPE_HEADER:Ljava/lang/String; = "header"

.field public static final TYPE_INVALIDFRAMES:Ljava/lang/String; = "invalidFrames"


# instance fields
.field public duplicateBytes:I

.field public duplicateFrameId:Ljava/lang/String;

.field public emptyFrameBytes:I

.field public encryptedFrameMap:Ljava/util/HashMap;

.field public fileReadSize:I

.field public frameMap:Ljava/util/HashMap;

.field public invalidFrames:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 6
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 7
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 8
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;-><init>()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 14
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 15
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 16
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    return-void
.end method

.method private addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;",
            "Ljava/util/HashMap;",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 7
    if-eqz v0, :cond_24

    .line 9
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 15
    if-nez v0, :cond_24

    .line 17
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 23
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 29
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->addTextValue(Ljava/lang/String;)V

    .line 36
    goto :goto_73

    .line 37
    :cond_24
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 40
    move-result-object v0

    .line 41
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 43
    if-eqz v0, :cond_40

    .line 45
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 51
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 57
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getText()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->addPair(Ljava/lang/String;)V

    .line 64
    goto :goto_73

    .line 65
    :cond_40
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 68
    move-result-object v0

    .line 69
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 71
    if-eqz v0, :cond_5c

    .line 73
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 79
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 85
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getText()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->addPair(Ljava/lang/String;)V

    .line 92
    goto :goto_73

    .line 93
    :cond_5c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_70

    .line 99
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    goto :goto_73

    .line 113
    :cond_70
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_73
    return-void
.end method

.method private getTextValueForFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getUserFriendlyValue()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public static getV2TagSizeIfExists(Ljava/io/File;)J
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_57

    .line 7
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 10
    move-result-object v0

    .line 11
    const/16 p0, 0xa

    .line 13
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 20
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 26
    move-result v3
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_55

    .line 27
    const-wide/16 v4, 0x0

    .line 29
    if-ge v3, p0, :cond_25

    .line 31
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 34
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 37
    return-wide v4

    .line 38
    :cond_25
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 44
    const/4 v0, 0x3

    .line 45
    new-array v1, v0, [B

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 51
    sget-object v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    .line 53
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3b

    .line 59
    return-wide v4

    .line 60
    :cond_3b
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 63
    move-result v1

    .line 64
    const/4 v3, 0x2

    .line 65
    if-eq v1, v3, :cond_48

    .line 67
    if-eq v1, v0, :cond_48

    .line 69
    const/4 v0, 0x4

    .line 70
    if-eq v1, v0, :cond_48

    .line 72
    return-wide v4

    .line 73
    :cond_48
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 76
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 79
    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 82
    move-result v0

    .line 83
    add-int/2addr v0, p0

    .line 84
    int-to-long v0, v0

    .line 85
    return-wide v0

    .line 86
    :catchall_55
    move-exception p0

    .line 87
    goto :goto_59

    .line 88
    :catchall_57
    move-exception p0

    .line 89
    move-object v1, v0

    .line 90
    :goto_59
    if-eqz v0, :cond_5e

    .line 92
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 95
    :cond_5e
    if-eqz v1, :cond_63

    .line 97
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 100
    :cond_63
    throw p0
.end method

.method private replaceFile(Ljava/io/File;Ljava/io/File;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ".old"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x1

    .line 40
    move v2, v1

    .line 41
    :goto_28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_57

    .line 47
    new-instance v0, Ljava/io/File;

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    add-int/2addr v2, v1

    .line 87
    goto :goto_28

    .line 88
    :cond_57
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x2

    .line 93
    const/4 v4, 0x0

    .line 94
    if-eqz v2, :cond_e8

    .line 96
    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_ce

    .line 102
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_7e

    .line 108
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 110
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 112
    new-array v6, v1, [Ljava/lang/Object;

    .line 114
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    move-result-object v7

    .line 118
    aput-object v7, v6, v4

    .line 120
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 127
    :cond_7e
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_9d

    .line 133
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 135
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_BACKUP_TO_ORIGINAL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 137
    new-array v6, v3, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    aput-object v0, v6, v4

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    aput-object v0, v6, v1

    .line 151
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 158
    :cond_9d
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 160
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 162
    new-array v5, v3, [Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 167
    move-result-object v6

    .line 168
    aput-object v6, v5, v4

    .line 170
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 173
    move-result-object v6

    .line 174
    aput-object v6, v5, v1

    .line 176
    invoke-virtual {v2, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;

    .line 185
    new-array v3, v3, [Ljava/lang/Object;

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    aput-object p1, v3, v4

    .line 193
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    aput-object p1, v3, v1

    .line 199
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 203
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;-><init>(Ljava/lang/String;)V

    .line 206
    throw v0

    .line 207
    :cond_ce
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_e7

    .line 213
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 215
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_WARNING_UNABLE_TO_DELETE_BACKUP_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    aput-object v0, v1, v4

    .line 225
    invoke-virtual {p2, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 232
    :cond_e7
    return-void

    .line 233
    :cond_e8
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 235
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 237
    new-array v5, v3, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 242
    move-result-object v6

    .line 243
    aput-object v6, v5, v4

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 248
    move-result-object v6

    .line 249
    aput-object v6, v5, v1

    .line 251
    invoke-virtual {v2, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {p2, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 258
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;

    .line 260
    new-array v3, v3, [Ljava/lang/Object;

    .line 262
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 265
    move-result-object p1

    .line 266
    aput-object p1, v3, v4

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 271
    move-result-object p1

    .line 272
    aput-object p1, v3, v1

    .line 274
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 278
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;-><init>(Ljava/lang/String;)V

    .line 281
    throw p2
.end method

.method private writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getPreferredFrameOrderComparator()Ljava/util/Comparator;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_52

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 33
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 39
    if-eqz v2, :cond_35

    .line 41
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 43
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 53
    goto :goto_14

    .line 54
    :cond_35
    check-cast v1, Ljava/util/List;

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v1

    .line 60
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_14

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 72
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 82
    goto :goto_3b

    .line 83
    :cond_52
    return-void
.end method


# virtual methods
.method public addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3
    :cond_3
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v0, :cond_3a

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 5
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_20

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 7
    :cond_20
    instance-of p1, v1, Ljava/util/List;

    if-eqz p1, :cond_2d

    .line 8
    check-cast v1, Ljava/util/List;

    .line 9
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_39

    .line 10
    :cond_2d
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    :goto_39
    return-void

    .line 13
    :cond_3a
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not of type AbstractID3v2Frame"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 2

    .line 14
    invoke-interface {p0, p1}, Lorg/jaudiotagger/tag/Tag;->createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public abstract addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
.end method

.method public adjustPadding(Ljava/io/File;IJ)V
    .registers 33

    .line 1
    move-object/from16 v1, p1

    .line 3
    const-string v8, "Problem closing channels and locks:"

    .line 5
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 7
    const-string v2, "Need to move audio file to accomodate tag"

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 12
    move/from16 v0, p2

    .line 14
    new-array v0, v0, [B

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 19
    move-result-object v0

    .line 20
    const/4 v9, 0x2

    .line 21
    :try_start_14
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/generic/Utils;->getMinBaseFilenameAllowedForTempFile(Ljava/io/File;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, ".new"

    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 30
    move-result-object v4

    .line 31
    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 34
    move-result-object v10

    .line 35
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v4, "Created temp file:"

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, " for "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_48} :catch_23e

    .line 73
    :try_start_48
    new-instance v2, Ljava/io/FileOutputStream;

    .line 75
    invoke-direct {v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 81
    move-result-object v14
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_51} :catch_1f4

    .line 82
    const/4 v2, 0x0

    .line 83
    :try_start_52
    new-instance v3, Ljava/io/FileInputStream;

    .line 85
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 88
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 91
    move-result-object v17
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_1be

    .line 92
    :try_start_5b
    invoke-virtual {v14, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 95
    move-result v0

    .line 96
    int-to-long v12, v0

    .line 97
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v3, "Copying:"

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    .line 112
    move-result-wide v3

    .line 113
    sub-long v3, v3, p3

    .line 115
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    const-string v3, "bytes"

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    .line 133
    move-result-wide v2
    :try_end_85
    .catchall {:try_start_5b .. :try_end_85} :catchall_1b7

    .line 134
    sub-long v18, v2, p3

    .line 136
    const-wide/32 v2, 0x989680

    .line 139
    cmp-long v0, v18, v2

    .line 141
    const-string v15, " Data:"

    .line 143
    const-string v11, "Written padding:"

    .line 145
    if-gtz v0, :cond_df

    .line 147
    move-object/from16 v2, v17

    .line 149
    move-wide/from16 v3, p3

    .line 151
    move-wide/from16 v5, v18

    .line 153
    move-object v7, v14

    .line 154
    :try_start_99
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 157
    move-result-wide v2

    .line 158
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 184
    cmp-long v0, v2, v18

    .line 186
    if-nez v0, :cond_be

    .line 188
    move-object v3, v14

    .line 189
    goto/16 :goto_145

    .line 191
    :cond_be
    new-instance v0, Ljava/lang/RuntimeException;

    .line 193
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_UNABLE_TO_ADJUST_PADDING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 195
    new-array v4, v9, [Ljava/lang/Object;

    .line 197
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 200
    move-result-object v5

    .line 201
    const/4 v6, 0x0

    .line 202
    aput-object v5, v4, v6

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    move-result-object v2

    .line 208
    const/4 v3, 0x1

    .line 209
    aput-object v2, v4, v3

    .line 211
    invoke-virtual {v1, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 218
    throw v0

    .line 219
    :goto_da
    move-object/from16 v6, p0

    .line 221
    move-object v3, v14

    .line 222
    goto/16 :goto_1ba

    .line 224
    :cond_df
    div-long v4, v18, v2

    .line 226
    rem-long v6, v18, v2
    :try_end_e3
    .catchall {:try_start_99 .. :try_end_e3} :catchall_1b7

    .line 228
    const-wide/16 v20, 0x0

    .line 230
    const/4 v0, 0x0

    .line 231
    :goto_e6
    int-to-long v2, v0

    .line 232
    cmp-long v9, v2, v4

    .line 234
    if-gez v9, :cond_10f

    .line 236
    const-wide/32 v22, 0x989680

    .line 239
    mul-long v2, v2, v22

    .line 241
    add-long v2, v2, p3

    .line 243
    const-wide/32 v24, 0x989680

    .line 246
    move-object v9, v11

    .line 247
    move-object/from16 v11, v17

    .line 249
    move-wide/from16 v26, v12

    .line 251
    move-wide v12, v2

    .line 252
    move-object v3, v14

    .line 253
    move-object v2, v15

    .line 254
    move-wide/from16 v14, v24

    .line 256
    move-object/from16 v16, v3

    .line 258
    :try_start_101
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 261
    move-result-wide v11

    .line 262
    add-long v20, v20, v11

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 266
    move-object v15, v2

    .line 267
    move-object v14, v3

    .line 268
    move-object v11, v9

    .line 269
    move-wide/from16 v12, v26

    .line 271
    goto :goto_e6

    .line 272
    :cond_10f
    move-object v9, v11

    .line 273
    move-wide/from16 v26, v12

    .line 275
    move-object v3, v14

    .line 276
    move-object v2, v15

    .line 277
    const-wide/32 v11, 0x989680

    .line 280
    mul-long/2addr v4, v11

    .line 281
    add-long v12, v4, p3

    .line 283
    move-object/from16 v11, v17

    .line 285
    move-wide v14, v6

    .line 286
    move-object/from16 v16, v3

    .line 288
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 291
    move-result-wide v4

    .line 292
    add-long v4, v20, v4

    .line 294
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    move-wide/from16 v11, v26

    .line 306
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 322
    cmp-long v0, v4, v18

    .line 324
    if-nez v0, :cond_192

    .line 326
    :goto_145
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    .line 329
    move-result-wide v4

    .line 330
    if-eqz v17, :cond_154

    .line 332
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_154

    .line 338
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 341
    :cond_154
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_15d

    .line 347
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_15d
    .catchall {:try_start_101 .. :try_end_15d} :catchall_1b3

    .line 350
    :cond_15d
    move-object/from16 v6, p0

    .line 352
    :try_start_15f
    invoke-direct {v6, v1, v10}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->replaceFile(Ljava/io/File;Ljava/io/File;)V

    .line 355
    invoke-virtual {v10, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_165
    .catchall {:try_start_15f .. :try_end_165} :catchall_1b1

    .line 358
    if-eqz v17, :cond_170

    .line 360
    :try_start_167
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_170

    .line 366
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 369
    :cond_170
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_191

    .line 375
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_179} :catch_17a

    .line 378
    goto :goto_191

    .line 379
    :catch_17a
    move-exception v0

    .line 380
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 382
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 384
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    move-result-object v3

    .line 399
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    :cond_191
    :goto_191
    return-void

    .line 403
    :cond_192
    move-object/from16 v6, p0

    .line 405
    :try_start_194
    new-instance v0, Ljava/lang/RuntimeException;

    .line 407
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_UNABLE_TO_ADJUST_PADDING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 409
    const/4 v2, 0x2

    .line 410
    new-array v2, v2, [Ljava/lang/Object;

    .line 412
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 415
    move-result-object v7

    .line 416
    const/4 v9, 0x0

    .line 417
    aput-object v7, v2, v9

    .line 419
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 422
    move-result-object v4

    .line 423
    const/4 v5, 0x1

    .line 424
    aput-object v4, v2, v5

    .line 426
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    move-result-object v1

    .line 430
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 433
    throw v0
    :try_end_1b1
    .catchall {:try_start_194 .. :try_end_1b1} :catchall_1b1

    .line 434
    :catchall_1b1
    move-exception v0

    .line 435
    goto :goto_1ba

    .line 436
    :catchall_1b3
    move-exception v0

    .line 437
    move-object/from16 v6, p0

    .line 439
    goto :goto_1ba

    .line 440
    :catchall_1b7
    move-exception v0

    .line 441
    goto/16 :goto_da

    .line 443
    :goto_1ba
    move-object v1, v0

    .line 444
    move-object/from16 v2, v17

    .line 446
    goto :goto_1c3

    .line 447
    :catchall_1be
    move-exception v0

    .line 448
    move-object/from16 v6, p0

    .line 450
    move-object v3, v14

    .line 451
    move-object v1, v0

    .line 452
    :goto_1c3
    if-eqz v2, :cond_1d1

    .line 454
    :try_start_1c5
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 457
    move-result v0

    .line 458
    if-eqz v0, :cond_1d1

    .line 460
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 463
    goto :goto_1d1

    .line 464
    :catch_1cf
    move-exception v0

    .line 465
    goto :goto_1dd

    .line 466
    :cond_1d1
    :goto_1d1
    if-eqz v3, :cond_1f3

    .line 468
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_1f3

    .line 474
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1dc} :catch_1cf

    .line 477
    goto :goto_1f3

    .line 478
    :goto_1dd
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 480
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 482
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    move-result-object v4

    .line 497
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :cond_1f3
    :goto_1f3
    throw v1

    .line 501
    :catch_1f4
    move-exception v0

    .line 502
    move-object/from16 v6, p0

    .line 504
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 506
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 508
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 511
    move-result-object v4

    .line 512
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 517
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_MODIFY_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 519
    const/4 v3, 0x2

    .line 520
    new-array v4, v3, [Ljava/lang/Object;

    .line 522
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 525
    move-result-object v5

    .line 526
    const/4 v7, 0x0

    .line 527
    aput-object v5, v4, v7

    .line 529
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 532
    move-result-object v5

    .line 533
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 536
    move-result-object v5

    .line 537
    const/4 v8, 0x1

    .line 538
    aput-object v5, v4, v8

    .line 540
    invoke-virtual {v2, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 543
    move-result-object v4

    .line 544
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 547
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;

    .line 549
    new-array v3, v3, [Ljava/lang/Object;

    .line 551
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 554
    move-result-object v4

    .line 555
    aput-object v4, v3, v7

    .line 557
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 564
    move-result-object v1

    .line 565
    aput-object v1, v3, v8

    .line 567
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 570
    move-result-object v1

    .line 571
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    .line 574
    throw v0

    .line 575
    :catch_23e
    move-exception v0

    .line 576
    move-object/from16 v6, p0

    .line 578
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 580
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 582
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 585
    move-result-object v4

    .line 586
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 592
    move-result-object v0

    .line 593
    sget-object v2, Lorg/jaudiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/jaudiotagger/logging/FileSystemMessage;

    .line 595
    invoke-virtual {v2}, Lorg/jaudiotagger/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    .line 598
    move-result-object v2

    .line 599
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_298

    .line 605
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 607
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 609
    const/4 v3, 0x2

    .line 610
    new-array v4, v3, [Ljava/lang/Object;

    .line 612
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 615
    move-result-object v5

    .line 616
    const/4 v7, 0x0

    .line 617
    aput-object v5, v4, v7

    .line 619
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 622
    move-result-object v5

    .line 623
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 626
    move-result-object v5

    .line 627
    const/4 v8, 0x1

    .line 628
    aput-object v5, v4, v8

    .line 630
    invoke-virtual {v2, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 633
    move-result-object v4

    .line 634
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 637
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    .line 639
    new-array v3, v3, [Ljava/lang/Object;

    .line 641
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 644
    move-result-object v4

    .line 645
    aput-object v4, v3, v7

    .line 647
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 650
    move-result-object v1

    .line 651
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 654
    move-result-object v1

    .line 655
    aput-object v1, v3, v8

    .line 657
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 660
    move-result-object v1

    .line 661
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    .line 664
    throw v0

    .line 665
    :cond_298
    const/4 v0, 0x2

    .line 666
    const/4 v2, 0x0

    .line 667
    const/4 v3, 0x1

    .line 668
    sget-object v4, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 670
    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 672
    new-array v7, v0, [Ljava/lang/Object;

    .line 674
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 677
    move-result-object v8

    .line 678
    aput-object v8, v7, v2

    .line 680
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 683
    move-result-object v8

    .line 684
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 687
    move-result-object v8

    .line 688
    aput-object v8, v7, v3

    .line 690
    invoke-virtual {v5, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 693
    move-result-object v7

    .line 694
    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 697
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    .line 699
    new-array v0, v0, [Ljava/lang/Object;

    .line 701
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 704
    move-result-object v7

    .line 705
    aput-object v7, v0, v2

    .line 707
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 710
    move-result-object v1

    .line 711
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 714
    move-result-object v1

    .line 715
    aput-object v1, v0, v3

    .line 717
    invoke-virtual {v5, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 720
    move-result-object v0

    .line 721
    invoke-direct {v4, v0}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    .line 724
    throw v4
.end method

.method public calculateTagSize(II)I
    .registers 3

    if-gt p1, p2, :cond_3

    return p2

    :cond_3
    add-int/lit8 p1, p1, 0x64

    return p1
.end method

.method public copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_37

    .line 13
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 25
    if-eqz v0, :cond_31

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 42
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    check-cast p1, Ljava/util/List;

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_40

    .line 56
    :cond_37
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 58
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_40
    return-void
.end method

.method public copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .registers 5

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
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4e

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 37
    iget-object v2, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 45
    if-eqz v2, :cond_34

    .line 47
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 49
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 52
    goto :goto_18

    .line 53
    :cond_34
    instance-of v2, v1, Ljava/util/ArrayList;

    .line 55
    if-eqz v2, :cond_18

    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v1

    .line 63
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_18

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 75
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 78
    goto :goto_3e

    .line 79
    :cond_4e
    return-void
.end method

.method public copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Copying Primitives"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 12
    iget v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 14
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 16
    iget v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 18
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 20
    iget v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 22
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 24
    iget p1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 26
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 28
    return-void
.end method

.method public createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 5

    .line 1
    if-eqz p1, :cond_83

    .line 3
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 9
    if-ne p1, v1, :cond_24

    .line 11
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result p2

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setTrackNo(Ljava/lang/Integer;)V

    .line 36
    return-object p1

    .line 37
    :cond_24
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 39
    if-ne p1, v1, :cond_42

    .line 41
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    move-result p2

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setTrackTotal(Ljava/lang/Integer;)V

    .line 66
    return-object p1

    .line 67
    :cond_42
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    .line 69
    if-ne p1, v1, :cond_60

    .line 71
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    move-result p2

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->setDiscNo(Ljava/lang/Integer;)V

    .line 96
    return-object p1

    .line 97
    :cond_60
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 99
    if-ne p1, v1, :cond_7e

    .line 101
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    move-result p2

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->setDiscTotal(Ljava/lang/Integer;)V

    .line 126
    return-object p1

    .line 127
    :cond_7e
    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :cond_83
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 134
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 137
    throw p1
.end method

.method public abstract createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.end method

.method public createLinkedArtworkField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 10

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 18
    move-result-object v1

    .line 19
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 21
    const-string v2, ""

    .line 23
    const-string v3, "Description"

    .line 25
    const-string v4, "-->"

    .line 27
    const-string v5, "PictureType"

    .line 29
    const-string v6, "ISO-8859-1"

    .line 31
    const-string v7, "PictureData"

    .line 33
    if-eqz v1, :cond_3d

    .line 35
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 41
    invoke-static {p1, v6}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, v7, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v1, v5, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string p1, "MIMEType"

    .line 55
    invoke-virtual {v1, p1, v4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    goto :goto_5f

    .line 62
    :cond_3d
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 65
    move-result-object v1

    .line 66
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    .line 68
    if-eqz v1, :cond_5f

    .line 70
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    .line 76
    invoke-static {p1, v6}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, v7, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 85
    invoke-virtual {v1, v5, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string p1, "ImageType"

    .line 90
    invoke-virtual {v1, p1, v4}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public createStructure()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 7
    return-void
.end method

.method public createStructureBody()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "body"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3f

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 34
    if-eqz v3, :cond_29

    .line 36
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 38
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->createStructure()V

    .line 41
    goto :goto_15

    .line 42
    :cond_29
    check-cast v2, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 47
    move-result-object v2

    .line 48
    :goto_2f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_15

    .line 54
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 60
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->createStructure()V

    .line 63
    goto :goto_2f

    .line 64
    :cond_3f
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public createStructureHeader()V
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 7
    const-string v2, "duplicateBytes"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 12
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 18
    const-string v2, "duplicateFrameId"

    .line 20
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 29
    const-string v2, "emptyFrameBytes"

    .line 31
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 34
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 40
    const-string v2, "fileReadSize"

    .line 42
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 45
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 51
    const-string v2, "invalidFrames"

    .line 53
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public delete(Ljava/io/RandomAccessFile;)V
    .registers 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    .line 11
    const/16 v2, 0xa

    .line 13
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 16
    move-result-object v2

    .line 17
    const-wide/16 v3, 0x0

    .line 19
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 22
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_24

    .line 31
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 37
    :cond_24
    return-void
.end method

.method public deleteArtworkField()V
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    .line 6
    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 13
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 16
    throw p1
.end method

.method public doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 12
    move-result-object v1

    .line 13
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 15
    if-eqz v1, :cond_36

    .line 17
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->setOwner(Ljava/lang/String;)V

    .line 30
    :try_start_1d
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 36
    const-string v1, "ISO-8859-1"

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->setUniqueIdentifier([B)V
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_2c} :catch_2e

    .line 45
    goto/16 :goto_13f

    .line 47
    :catch_2e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    const-string p2, "When encoding UFID charset ISO-8859-1 was deemed unsupported"

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    :cond_36
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 58
    move-result-object v1

    .line 59
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 61
    if-eqz v1, :cond_56

    .line 63
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 69
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->setDescription(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 82
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 85
    goto/16 :goto_13f

    .line 87
    :cond_56
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 90
    move-result-object v1

    .line 91
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 93
    if-eqz v1, :cond_76

    .line 95
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 101
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->setDescription(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 114
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->setUrlLink(Ljava/lang/String;)V

    .line 117
    goto/16 :goto_13f

    .line 119
    :cond_76
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 122
    move-result-object v1

    .line 123
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 125
    if-eqz v1, :cond_b3

    .line 127
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_a8

    .line 133
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 139
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->setDescription(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 152
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->isMediaMonkeyFrame()Z

    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_a8

    .line 158
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 164
    const-string v1, "XXX"

    .line 166
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->setLanguage(Ljava/lang/String;)V

    .line 169
    :cond_a8
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 175
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->setText(Ljava/lang/String;)V

    .line 178
    goto/16 :goto_13f

    .line 180
    :cond_b3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 183
    move-result-object v1

    .line 184
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    .line 186
    if-eqz v1, :cond_d0

    .line 188
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    .line 194
    const-string v1, ""

    .line 196
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->setDescription(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    .line 205
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->setLyric(Ljava/lang/String;)V

    .line 208
    goto :goto_13f

    .line 209
    :cond_d0
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 212
    move-result-object v1

    .line 213
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAR;

    .line 215
    if-eqz v1, :cond_e2

    .line 217
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAR;

    .line 223
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->setUrlLink(Ljava/lang/String;)V

    .line 226
    goto :goto_13f

    .line 227
    :cond_e2
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 230
    move-result-object v1

    .line 231
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 233
    if-eqz v1, :cond_f4

    .line 235
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 241
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 244
    goto :goto_13f

    .line 245
    :cond_f4
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 248
    move-result-object v1

    .line 249
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    .line 251
    if-eqz v1, :cond_106

    .line 253
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    .line 259
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->parseString(Ljava/lang/String;)V

    .line 262
    goto :goto_13f

    .line 263
    :cond_106
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 266
    move-result-object v1

    .line 267
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 269
    const-string v2, "Text"

    .line 271
    if-eqz v1, :cond_124

    .line 273
    new-instance v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 275
    invoke-direct {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 278
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1, v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    goto :goto_13f

    .line 293
    :cond_124
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 296
    move-result-object v1

    .line 297
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 299
    if-eqz v1, :cond_140

    .line 301
    new-instance v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 303
    invoke-direct {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 306
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1, v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    :goto_13f
    return-object v0

    .line 321
    :cond_140
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 324
    move-result-object v1

    .line 325
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 327
    if-nez v1, :cond_167

    .line 329
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 332
    move-result-object v0

    .line 333
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    .line 335
    if-eqz v0, :cond_151

    .line 337
    goto :goto_167

    .line 338
    :cond_151
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    .line 340
    const-string v1, "Field with key of:"

    .line 342
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 349
    move-result-object p1

    .line 350
    const-string v2, ":does not accept cannot parse data:"

    .line 352
    invoke-static {v1, p1, v2, p2}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    move-result-object p1

    .line 356
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    .line 359
    throw v0

    .line 360
    :cond_167
    :goto_167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 362
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 364
    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 367
    move-result-object p2

    .line 368
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 371
    throw p1
.end method

.method public doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    .line 14
    goto/16 :goto_141

    .line 16
    :cond_f
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 27
    move-result-object v1

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_141

    .line 34
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 40
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 43
    move-result-object v2

    .line 44
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v3, :cond_52

    .line 49
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 51
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1b

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    move-result v2

    .line 69
    if-ne v2, v4, :cond_4e

    .line 71
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    .line 78
    goto :goto_1b

    .line 79
    :cond_4e
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 82
    goto :goto_1b

    .line 83
    :cond_52
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 85
    if-eqz v3, :cond_78

    .line 87
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 89
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_1b

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    move-result v2

    .line 107
    if-ne v2, v4, :cond_74

    .line 109
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    .line 116
    goto :goto_1b

    .line 117
    :cond_74
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 120
    goto :goto_1b

    .line 121
    :cond_78
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 123
    if-eqz v3, :cond_a4

    .line 125
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 127
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 138
    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_1b

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 148
    move-result v2

    .line 149
    if-ne v2, v4, :cond_9f

    .line 151
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    .line 158
    goto/16 :goto_1b

    .line 160
    :cond_9f
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 163
    goto/16 :goto_1b

    .line 165
    :cond_a4
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 167
    if-eqz v3, :cond_e7

    .line 169
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 171
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 182
    move-result-object v3

    .line 183
    :cond_b6
    :goto_b6
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_d4

    .line 189
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 192
    move-result-object v4

    .line 193
    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 195
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_b6

    .line 209
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 212
    goto :goto_b6

    .line 213
    :cond_d4
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 216
    move-result-object v2

    .line 217
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_1b

    .line 223
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    .line 230
    goto/16 :goto_1b

    .line 232
    :cond_e7
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 234
    if-eqz v3, :cond_12a

    .line 236
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 238
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 245
    move-result-object v3

    .line 246
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 249
    move-result-object v3

    .line 250
    :cond_f9
    :goto_f9
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_117

    .line 256
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 262
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_f9

    .line 276
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 279
    goto :goto_f9

    .line 280
    :cond_117
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 283
    move-result-object v2

    .line 284
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_1b

    .line 290
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    .line 297
    goto/16 :goto_1b

    .line 299
    :cond_12a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 301
    const-string v0, "Need to implement getFields(FieldKey genericKey) for:"

    .line 303
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 318
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 321
    throw p1

    .line 322
    :cond_141
    :goto_141
    return-void
.end method

.method public doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 7
    if-nez v0, :cond_22

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    if-le v0, p2, :cond_21

    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 29
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getTextValueForFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    return-object v1

    .line 35
    :cond_22
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_13c

    .line 58
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 64
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 67
    move-result-object v3

    .line 68
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 70
    if-eqz v4, :cond_5f

    .line 72
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 74
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_33

    .line 88
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_33

    .line 96
    :cond_5f
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 98
    if-eqz v4, :cond_7b

    .line 100
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 102
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_33

    .line 116
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_33

    .line 124
    :cond_7b
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 126
    if-eqz v4, :cond_97

    .line 128
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 130
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_33

    .line 144
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_33

    .line 152
    :cond_97
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 154
    if-eqz v4, :cond_bd

    .line 156
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 158
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 169
    move-result-object v5

    .line 170
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_33

    .line 176
    new-instance v4, Ljava/lang/String;

    .line 178
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    .line 181
    move-result-object v3

    .line 182
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 185
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    goto/16 :goto_33

    .line 190
    :cond_bd
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 192
    if-eqz v4, :cond_f1

    .line 194
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 196
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 203
    move-result-object v3

    .line 204
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    move-result-object v3

    .line 208
    :cond_cf
    :goto_cf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_33

    .line 214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 220
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_cf

    .line 234
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    goto :goto_cf

    .line 242
    :cond_f1
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 244
    if-eqz v4, :cond_125

    .line 246
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 248
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    .line 255
    move-result-object v3

    .line 256
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    move-result-object v3

    .line 260
    :cond_103
    :goto_103
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_33

    .line 266
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 272
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_103

    .line 286
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    goto :goto_103

    .line 294
    :cond_125
    new-instance p1, Ljava/lang/RuntimeException;

    .line 296
    const-string p2, "Need to implement getFields(FieldKey genericKey) for:"

    .line 298
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    move-result-object p2

    .line 302
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object p2

    .line 313
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 316
    throw p1

    .line 317
    :cond_13c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 320
    move-result p1

    .line 321
    if-le p1, p2, :cond_149

    .line 323
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 326
    move-result-object p1

    .line 327
    check-cast p1, Ljava/lang/String;

    .line 329
    return-object p1

    .line 330
    :cond_149
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

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
    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 12
    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTag;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public getDuplicateBytes()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 3
    return v0
.end method

.method public getDuplicateFrameId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEmptyFrameBytes()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 3
    return v0
.end method

.method public getEncryptedFrame(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getFieldCount()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lorg/jaudiotagger/tag/TagField;
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_b} :catch_e

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_5

    .line 15
    :catch_e
    return v1
.end method

.method public getFieldCountIncludingSubValues()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 12
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 14
    if-eqz v3, :cond_2d

    .line 16
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 18
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 21
    move-result-object v3

    .line 22
    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 24
    if-eqz v3, :cond_2d

    .line 26
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 29
    move-result-object v3

    .line 30
    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 32
    if-nez v3, :cond_2d

    .line 34
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 40
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getNumberOfValues()I

    .line 43
    move-result v2
    :try_end_2b
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_2b} :catch_30

    .line 44
    add-int/2addr v1, v2

    .line 45
    goto :goto_5

    .line 46
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_5

    .line 49
    :catch_30
    return v1
.end method

.method public getFields()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 11
    new-instance v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_13

    .line 4
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 5
    :cond_13
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v0, :cond_22

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 8
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found entry in frameMap that was not a frame or a list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_10d

    .line 12
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10c

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 17
    move-object v3, v2

    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    .line 18
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v4, :cond_48

    .line 19
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 21
    :cond_48
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v4, :cond_60

    .line 22
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 24
    :cond_60
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v4, :cond_78

    .line 25
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 27
    :cond_78
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    if-eqz v4, :cond_94

    .line 28
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 30
    :cond_94
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v4, :cond_c4

    .line 31
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a6
    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 32
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 34
    :cond_c4
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v4, :cond_f4

    .line 35
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d6
    :goto_d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 36
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 38
    :cond_f4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Need to implement getFields(FieldKey genericKey) for:"

    .line 39
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10b
    return-object v1

    :cond_10c
    return-object v0

    .line 41
    :cond_10d
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "locking fileChannel for "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    :try_start_16
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 26
    move-result-object p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_2f

    .line 27
    if-eqz p1, :cond_1d

    .line 29
    return-object p1

    .line 30
    :cond_1d
    new-instance p1, Ljava/io/IOException;

    .line 32
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 34
    const/4 v1, 0x1

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object p2, v1, v2

    .line 40
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1

    .line 48
    :catch_2f
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public getFileReadBytes()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 3
    return v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, ""

    return-object p1

    .line 2
    :cond_9
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getTextValueForFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 3

    .line 1
    invoke-interface {p0}, Lorg/jaudiotagger/tag/Tag;->getArtworkList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_12

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 18
    return-object v0

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public bridge synthetic getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
    .registers 3

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_16

    .line 7
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    return-object p1

    .line 8
    :cond_16
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    return-object p1
.end method

.method public getFrame(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public abstract getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
.end method

.method public getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2b

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_f

    .line 34
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_f

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public abstract getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;
.end method

.method public getInvalidFrames()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 3
    return v0
.end method

.method public abstract getPreferredFrameOrderComparator()Ljava/util/Comparator;
.end method

.method public getSize()I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3a

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 24
    if-eqz v3, :cond_22

    .line 26
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 28
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->getSize()I

    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v1

    .line 33
    move v1, v2

    .line 34
    goto :goto_b

    .line 35
    :cond_22
    check-cast v2, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 40
    move-result-object v2

    .line 41
    :goto_28
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_b

    .line 47
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 53
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->getSize()I

    .line 56
    move-result v3

    .line 57
    add-int/2addr v1, v3

    .line 58
    goto :goto_28

    .line 59
    :cond_3a
    return v1
.end method

.method public getSubValue(Lorg/jaudiotagger/tag/FieldKey;II)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    move-result p2

    .line 13
    if-le p2, p3, :cond_15

    .line 15
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 21
    return-object p1

    .line 22
    :cond_15
    const-string p1, ""

    .line 24
    return-object p1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .registers 7

    .line 1
    if-eqz p1, :cond_81

    .line 3
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, ""

    .line 13
    if-eqz v1, :cond_80

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    if-le v3, p2, :cond_80

    .line 21
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 27
    if-eqz v1, :cond_80

    .line 29
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 31
    if-ne p1, v2, :cond_2f

    .line 33
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 39
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2f
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 50
    if-ne p1, v2, :cond_42

    .line 52
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 58
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_42
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    .line 69
    if-ne p1, v2, :cond_55

    .line 71
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 77
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_55
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 88
    if-ne p1, v2, :cond_68

    .line 90
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 96
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_68
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    .line 107
    if-ne p1, v2, :cond_7b

    .line 109
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    .line 115
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->getRating()J

    .line 118
    move-result-wide p1

    .line 119
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :cond_7b
    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :cond_80
    return-object v2

    .line 130
    :cond_81
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 132
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 135
    throw p1
.end method

.method public hasCommonFields()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

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

.method public hasFrame(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasFrameAndBody(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_19

    .line 16
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 18
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 21
    move-result-object p1

    .line 22
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 24
    xor-int/2addr p1, v1

    .line 25
    return p1

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public hasFrameOfType(Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_21

    .line 18
    if-nez v1, :cond_21

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_b

    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_b

    .line 34
    :cond_21
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEncrypted;

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 17
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 20
    :goto_13
    return-void
.end method

.method public loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 7

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_8c

    .line 11
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_8c

    .line 21
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    goto :goto_8c

    .line 32
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_72

    .line 38
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v0, "Ignoring Duplicate Frame"

    .line 47
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 65
    move-result p1

    .line 66
    if-lez p1, :cond_52

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    iget-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 75
    const-string v0, ";"

    .line 77
    invoke-static {p1, p3, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 83
    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 90
    invoke-static {p1, p3, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 96
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 98
    iget-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 100
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 106
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->getSize()I

    .line 109
    move-result p2

    .line 110
    add-int/2addr p2, p1

    .line 111
    iput p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 113
    goto/16 :goto_f6

    .line 115
    :cond_72
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v2, "Adding Frame"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    goto :goto_f6

    .line 141
    :cond_8c
    :goto_8c
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_dd

    .line 147
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 151
    instance-of v1, v0, Ljava/util/ArrayList;

    .line 153
    if-eqz v1, :cond_b6

    .line 155
    check-cast v0, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v0, "Adding Multi Frame(1)"

    .line 169
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 182
    goto :goto_f6

    .line 183
    :cond_b6
    new-instance v1, Ljava/util/ArrayList;

    .line 185
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 190
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 201
    new-instance p3, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    const-string v0, "Adding Multi Frame(2)"

    .line 208
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object p2

    .line 218
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 221
    goto :goto_f6

    .line 222
    :cond_dd
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    const-string v2, "Adding Multi FrameList(3)"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_f6
    return-void
.end method

.method public mergeDuplicateFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1d8

    .line 11
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 20
    move-result-object v2

    .line 21
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 23
    if-eqz v2, :cond_3f

    .line 25
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 31
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 41
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 51
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 56
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void

    .line 64
    :cond_3f
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 67
    move-result-object v2

    .line 68
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 70
    if-eqz v2, :cond_6e

    .line 72
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 78
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 88
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 98
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 103
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void

    .line 111
    :cond_6e
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 114
    move-result-object v2

    .line 115
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 117
    if-eqz v2, :cond_9d

    .line 119
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 125
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 135
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_4

    .line 145
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 150
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void

    .line 158
    :cond_9d
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 161
    move-result-object v2

    .line 162
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 164
    if-eqz v2, :cond_cc

    .line 166
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 172
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    .line 182
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_4

    .line 192
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 197
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void

    .line 205
    :cond_cc
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 208
    move-result-object v2

    .line 209
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    .line 211
    if-eqz v2, :cond_fb

    .line 213
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    .line 219
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->getDescription()Ljava/lang/String;

    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    .line 229
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->getDescription()Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_4

    .line 239
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 244
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void

    .line 252
    :cond_fb
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 255
    move-result-object v2

    .line 256
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    .line 258
    if-eqz v2, :cond_12a

    .line 260
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    .line 266
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->getEmailToUser()Ljava/lang/String;

    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    .line 276
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->getEmailToUser()Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_4

    .line 286
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 291
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void

    .line 299
    :cond_12a
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 302
    move-result-object v2

    .line 303
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 305
    if-eqz v2, :cond_16d

    .line 307
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 313
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 319
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    .line 322
    move-result-object v0

    .line 323
    if-eqz v0, :cond_155

    .line 325
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 332
    move-result v0

    .line 333
    if-lez v0, :cond_155

    .line 335
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setTrackNo(Ljava/lang/Integer;)V

    .line 342
    :cond_155
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    .line 345
    move-result-object v0

    .line 346
    if-eqz v0, :cond_16c

    .line 348
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 355
    move-result v0

    .line 356
    if-lez v0, :cond_16c

    .line 358
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setTrackTotal(Ljava/lang/Integer;)V

    .line 365
    :cond_16c
    return-void

    .line 366
    :cond_16d
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 369
    move-result-object v2

    .line 370
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 372
    if-eqz v2, :cond_1a0

    .line 374
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 377
    move-result-object p1

    .line 378
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 380
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 383
    move-result-object p2

    .line 384
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 386
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    .line 389
    move-result-object v0

    .line 390
    if-eqz v0, :cond_190

    .line 392
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 395
    move-result v1

    .line 396
    if-lez v1, :cond_190

    .line 398
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->setDiscNo(Ljava/lang/Integer;)V

    .line 401
    :cond_190
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    .line 404
    move-result-object p1

    .line 405
    if-eqz p1, :cond_19f

    .line 407
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 410
    move-result v0

    .line 411
    if-lez v0, :cond_19f

    .line 413
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->setDiscTotal(Ljava/lang/Integer;)V

    .line 416
    :cond_19f
    return-void

    .line 417
    :cond_1a0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 420
    move-result-object v2

    .line 421
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 423
    if-eqz v2, :cond_1bc

    .line 425
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 431
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 434
    move-result-object p2

    .line 435
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    .line 437
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getText()Ljava/lang/String;

    .line 440
    move-result-object p1

    .line 441
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->addPair(Ljava/lang/String;)V

    .line 444
    return-void

    .line 445
    :cond_1bc
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 448
    move-result-object v2

    .line 449
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 451
    if-eqz v2, :cond_4

    .line 453
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 456
    move-result-object p1

    .line 457
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 459
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 462
    move-result-object p2

    .line 463
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 465
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getText()Ljava/lang/String;

    .line 468
    move-result-object p1

    .line 469
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->addPair(Ljava/lang/String;)V

    .line 472
    return-void

    .line 473
    :cond_1d8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;

    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    .line 484
    move-result v0

    .line 485
    if-nez v0, :cond_1f0

    .line 487
    iget-object p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 489
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    goto :goto_1fc

    .line 497
    :cond_1f0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 502
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 505
    move-result-object p1

    .line 506
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :goto_1fc
    return-void
.end method

.method public removeFrame(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Removing frame with identifier:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public removeFrameOfType(Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_25

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_f

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_f

    .line 38
    :cond_25
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 42
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_59

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 54
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v4, "Removing frame with identifier:"

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "because starts with:"

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 86
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    goto :goto_29

    .line 90
    :cond_59
    return-void
.end method

.method public removeUnsupportedFrames()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_36

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 17
    if-eqz v2, :cond_4

    .line 19
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 21
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 24
    move-result-object v2

    .line 25
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 27
    if-eqz v2, :cond_4

    .line 29
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 31
    const-string v3, "Removing frame"

    .line 33
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 54
    goto :goto_4

    .line 55
    :cond_36
    return-void
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 6
    const-string v1, "ByteBuffer pos:"

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, ":limit"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, ":cap"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x3

    .line 51
    new-array v1, v0, [B

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 57
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    .line 59
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_41

    .line 65
    return v2

    .line 66
    :cond_41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getMajorVersion()B

    .line 73
    move-result v1

    .line 74
    if-eq v0, v1, :cond_4c

    .line 76
    return v2

    .line 77
    :cond_4c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getRevision()B

    .line 84
    move-result v0

    .line 85
    if-ne p1, v0, :cond_57

    .line 87
    const/4 v2, 0x1

    .line 88
    :cond_57
    return v2
.end method

.method public setEncoding(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Not Implemented Yet"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 5

    .line 3
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v0, :cond_39

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 5
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 7
    :cond_1d
    instance-of p1, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz p1, :cond_2f

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->mergeDuplicateFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V

    goto :goto_38

    .line 11
    :cond_2f
    instance-of p1, v1, Ljava/util/List;

    if-eqz p1, :cond_38

    .line 12
    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->mergeDuplicateFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V

    :cond_38
    :goto_38
    return-void

    .line 13
    :cond_39
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not of type AbstractID3v2Frame"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 2

    .line 14
    invoke-interface {p0, p1}, Lorg/jaudiotagger/tag/Tag;->createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setFrame(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Adding "

    .line 3
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frames for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(Ljava/io/File;J)V
    .registers 4

    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 2

    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .registers 2

    return-void
.end method

.method public writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V
    .registers 11

    .line 1
    int-to-long v0, p5

    .line 2
    cmp-long v0, v0, p6

    .line 4
    if-lez v0, :cond_f

    .line 6
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 8
    const-string v1, "Adjusting Padding"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1, p5, p6, p7}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->adjustPadding(Ljava/io/File;IJ)V

    .line 16
    :cond_f
    const/4 p5, 0x0

    .line 17
    const/4 p6, 0x0

    .line 18
    const/4 p7, 0x1

    .line 19
    :try_start_12
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 21
    const-string v1, "rws"

    .line 23
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 29
    move-result-object v0
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1d} :catch_dd
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_53
    .catchall {:try_start_12 .. :try_end_1d} :catchall_4f

    .line 30
    :try_start_1d
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;

    .line 37
    move-result-object p5

    .line 38
    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 41
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 48
    new-array p2, p4, [B

    .line 50
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_38} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_38} :catch_46
    .catchall {:try_start_1d .. :try_end_38} :catchall_41

    .line 57
    if-eqz p5, :cond_3d

    .line 59
    invoke-virtual {p5}, Ljava/nio/channels/FileLock;->release()V

    .line 62
    :cond_3d
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 65
    return-void

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    move-object p3, p5

    .line 68
    move-object p5, v0

    .line 69
    goto/16 :goto_158

    .line 71
    :catch_46
    move-exception p2

    .line 72
    move-object p3, p5

    .line 73
    move-object p5, v0

    .line 74
    goto :goto_55

    .line 75
    :catch_4a
    move-exception p2

    .line 76
    move-object p3, p5

    .line 77
    move-object p5, v0

    .line 78
    goto/16 :goto_df

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    move-object p3, p5

    .line 82
    goto/16 :goto_158

    .line 84
    :catch_53
    move-exception p2

    .line 85
    move-object p3, p5

    .line 86
    :goto_55
    :try_start_55
    sget-object p4, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 88
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p4, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 120
    sget-object p4, Lorg/jaudiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/jaudiotagger/logging/FileSystemMessage;

    .line 122
    invoke-virtual {p4}, Lorg/jaudiotagger/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    .line 125
    move-result-object p4

    .line 126
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_b0

    .line 132
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 134
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 136
    new-array v0, p7, [Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    aput-object v1, v0, p6

    .line 148
    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 155
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;

    .line 157
    new-array p7, p7, [Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    aput-object p1, p7, p6

    .line 169
    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p2

    .line 177
    :cond_b0
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 179
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 181
    new-array v0, p7, [Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    aput-object v1, v0, p6

    .line 193
    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 200
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    .line 202
    new-array p7, p7, [Ljava/lang/Object;

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    aput-object p1, p7, p6

    .line 214
    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 218
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    .line 221
    throw p2

    .line 222
    :catch_dd
    move-exception p2

    .line 223
    move-object p3, p5

    .line 224
    :goto_df
    sget-object p4, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 226
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {p4, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 257
    move-result-object p2

    .line 258
    sget-object p4, Lorg/jaudiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/jaudiotagger/logging/FileSystemMessage;

    .line 260
    invoke-virtual {p4}, Lorg/jaudiotagger/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    .line 263
    move-result-object p4

    .line 264
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_132

    .line 270
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 272
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 274
    new-array v0, p7, [Ljava/lang/Object;

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    aput-object v1, v0, p6

    .line 282
    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 289
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;

    .line 291
    new-array p7, p7, [Ljava/lang/Object;

    .line 293
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 296
    move-result-object p1

    .line 297
    aput-object p1, p7, p6

    .line 299
    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    move-result-object p1

    .line 303
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    .line 306
    throw p2

    .line 307
    :cond_132
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 309
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 311
    new-array v0, p7, [Ljava/lang/Object;

    .line 313
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 316
    move-result-object v1

    .line 317
    aput-object v1, v0, p6

    .line 319
    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 326
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    .line 328
    new-array p7, p7, [Ljava/lang/Object;

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 333
    move-result-object p1

    .line 334
    aput-object p1, p7, p6

    .line 336
    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 339
    move-result-object p1

    .line 340
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    .line 343
    throw p2
    :try_end_157
    .catchall {:try_start_55 .. :try_end_157} :catchall_157

    .line 344
    :catchall_157
    move-exception p1

    .line 345
    :goto_158
    if-eqz p5, :cond_162

    .line 347
    if-eqz p3, :cond_15f

    .line 349
    invoke-virtual {p3}, Ljava/nio/channels/FileLock;->release()V

    .line 352
    :cond_15f
    invoke-virtual {p5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 355
    :cond_162
    throw p1
.end method

.method public writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 8
    invoke-direct {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    .line 11
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 13
    invoke-direct {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    .line 16
    return-object v0
.end method
