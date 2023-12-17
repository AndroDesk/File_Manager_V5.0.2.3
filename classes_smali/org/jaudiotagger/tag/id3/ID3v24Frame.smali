.class public Lorg/jaudiotagger/tag/id3/ID3v24Frame;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.source "ID3v24Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;,
        Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;
    }
.end annotation


# static fields
.field public static final FRAME_DATA_LENGTH_SIZE:I = 0x4

.field public static final FRAME_ENCRYPTION_INDICATOR_SIZE:I = 0x1

.field public static final FRAME_FLAGS_SIZE:I = 0x2

.field public static final FRAME_GROUPING_INDICATOR_SIZE:I = 0x1

.field public static final FRAME_HEADER_SIZE:I = 0xa

.field public static final FRAME_ID_SIZE:I = 0x4

.field public static final FRAME_SIZE_SIZE:I = 0x4

.field private static validFrameIdentifier:Ljava/util/regex/Pattern;


# instance fields
.field private encryptionMethod:I

.field private groupIdentifier:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "[A-Z][0-9A-Z]{3}"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {p1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 4
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-direct {p1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, ""

    .line 72
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 70
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 9
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-nez v0, :cond_50

    .line 10
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_28

    .line 11
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 12
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    goto :goto_36

    .line 13
    :cond_28
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {v1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 14
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-direct {v1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    :goto_36
    if-eqz v0, :cond_3e

    .line 15
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    goto :goto_4a

    .line 16
    :cond_3e
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_4a

    .line 17
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 18
    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    .line 19
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void

    .line 20
    :cond_50
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V
    .registers 4

    .line 5
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 6
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 7
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .registers 14

    .line 21
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IND"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_111

    const-string v1, "LYR"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ENG"

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_61

    .line 25
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 26
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    move-result p1

    .line 28
    new-instance v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    new-array v11, v4, [B

    const-string v7, "ENG"

    const-string v10, ""

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;-><init>(ILjava/lang/String;IILjava/lang/String;[B)V

    .line 29
    new-instance v5, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-direct {v5, v4, v2, v3, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    if-eqz p1, :cond_4d

    goto :goto_3e

    .line 32
    :cond_4d
    invoke-virtual {v5, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->addLyric(Lorg/jaudiotagger/tag/datatype/Lyrics3Line;)V

    goto :goto_3e

    :cond_51
    if-eqz p1, :cond_5a

    .line 33
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 34
    invoke-virtual {v1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_f2

    .line 35
    :cond_5a
    iput-object v5, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 36
    invoke-virtual {v5, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_f2

    :cond_61
    const-string v1, "INF"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 38
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;->getAdditionalInformation()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-direct {v0, v4, v2, v3, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 40
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_f2

    :cond_7f
    const-string v1, "AUT"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 42
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;->getAuthor()Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCOM;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 44
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_f2

    :cond_9c
    const-string v1, "EAL"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 46
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;->getAlbum()Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 48
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_f2

    :cond_b9
    const-string v1, "EAR"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 50
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;->getArtist()Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 52
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_f2

    :cond_d6
    const-string v1, "ETT"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 54
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 56
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    :goto_f2
    return-void

    :cond_f3
    const-string p1, "IMG"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 58
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v0, "Cannot create ID3v2.40 frame from Lyrics3 image field."

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_103
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v1, "Cannot caret ID3v2.40 frame from "

    const-string v2, " Lyrics3 field"

    .line 60
    invoke-static {v1, v0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_111
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v0, "Cannot create ID3v2.40 frame from Lyrics3 indications field."

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 3
    const/16 v1, 0x7f

    .line 5
    if-le v0, v1, :cond_16a

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 14
    move-result v1

    .line 15
    sub-int v1, v0, v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 27
    move-result v2

    .line 28
    sub-int v2, v0, v2

    .line 30
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->isBufferNotSyncSafe(Ljava/nio/ByteBuffer;)Z

    .line 36
    move-result v2

    .line 37
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    const-string v3, ":"

    .line 42
    if-eqz v2, :cond_92

    .line 44
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v4, "Frame size is NOT stored as a sync safe integer:"

    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    .line 85
    move-result v0

    .line 86
    neg-int v0, v0

    .line 87
    sub-int/2addr p1, v0

    .line 88
    if-gt v1, p1, :cond_5d

    .line 90
    iput v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 92
    goto/16 :goto_16a

    .line 94
    :cond_5d
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "Invalid Frame size larger than size before mp3 audio:"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 128
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 137
    const-string v2, " is invalid frame"

    .line 139
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p1

    .line 147
    :cond_92
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 150
    move-result v2

    .line 151
    new-array v2, v2, [B

    .line 153
    iget v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 155
    add-int/2addr v4, v0

    .line 156
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    .line 159
    move-result v5

    .line 160
    add-int/2addr v5, v4

    .line 161
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 167
    move-result v4

    .line 168
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 171
    move-result v5

    .line 172
    if-ge v4, v5, :cond_b2

    .line 174
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    goto/16 :goto_16a

    .line 179
    :cond_b2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 182
    move-result v4

    .line 183
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p1, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    new-instance v4, Ljava/lang/String;

    .line 192
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 195
    invoke-virtual {p0, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_ca

    .line 201
    goto/16 :goto_16a

    .line 203
    :cond_ca
    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_d2

    .line 209
    goto/16 :goto_16a

    .line 211
    :cond_d2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 214
    move-result v2

    .line 215
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    .line 218
    move-result v4

    .line 219
    sub-int/2addr v2, v4

    .line 220
    if-le v1, v2, :cond_e2

    .line 222
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    goto/16 :goto_16a

    .line 227
    :cond_e2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 230
    move-result v2

    .line 231
    new-array v2, v2, [B

    .line 233
    add-int v4, v0, v1

    .line 235
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    .line 238
    move-result v6

    .line 239
    add-int/2addr v6, v4

    .line 240
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 246
    move-result v4

    .line 247
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 250
    move-result v6

    .line 251
    if-lt v4, v6, :cond_15f

    .line 253
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 256
    move-result v4

    .line 257
    invoke-virtual {p1, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 260
    new-instance v4, Ljava/lang/String;

    .line 262
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 265
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    invoke-virtual {p0, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    .line 271
    move-result p1

    .line 272
    const-string v0, "Assuming frame size is NOT stored as a sync safe integer:"

    .line 274
    if-eqz p1, :cond_136

    .line 276
    iput v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 278
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 310
    goto :goto_16a

    .line 311
    :cond_136
    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    .line 314
    move-result p1

    .line 315
    if-eqz p1, :cond_16a

    .line 317
    iput v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 319
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 341
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 351
    goto :goto_16a

    .line 352
    :cond_15f
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 355
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 358
    move-result p1

    .line 359
    if-nez p1, :cond_16a

    .line 361
    iput v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 363
    :cond_16a
    :goto_16a
    return-void
.end method

.method private createV24FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 11
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 13
    const-string v1, "Creating V24frame from v23:"

    .line 15
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, ":"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 46
    move-result-object v0

    .line 47
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 49
    const-string v1, ":New id is:"

    .line 51
    if-eqz v0, :cond_6a

    .line 53
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 55
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 61
    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    .line 64
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 66
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 69
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 75
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 77
    const-string v2, "V3:UnsupportedBody:Orig id is:"

    .line 79
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 105
    goto/16 :goto_182

    .line 107
    :cond_6a
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 109
    const-string v2, "V3:Orig id is:"

    .line 111
    if-eqz v0, :cond_d5

    .line 113
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    const-string v3, "TXXX"

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_a8

    .line 125
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 131
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    const-string v3, "MOOD"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_a8

    .line 143
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMOO;

    .line 145
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 151
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMOO;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;)V

    .line 154
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 156
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 159
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 161
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 167
    goto/16 :goto_182

    .line 169
    :cond_a8
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 171
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 200
    move-result-object p1

    .line 201
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 207
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 209
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 212
    goto/16 :goto_182

    .line 214
    :cond_d5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_14e

    .line 224
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->forceFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 234
    if-eqz v0, :cond_119

    .line 236
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 238
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 272
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 275
    move-result-object p1

    .line 276
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 278
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 281
    goto :goto_182

    .line 282
    :cond_119
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 284
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 290
    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 293
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 295
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 298
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 302
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 304
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 306
    const-string v2, "V3:Deprecated:Orig id is:"

    .line 308
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 324
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 334
    goto :goto_182

    .line 335
    :cond_14e
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 337
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 340
    move-result-object v2

    .line 341
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 343
    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    .line 346
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 348
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 351
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 354
    move-result-object v0

    .line 355
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 357
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 359
    const-string v2, "V3:Unknown:Orig id is:"

    .line 361
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 377
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object p1

    .line 384
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 387
    :goto_182
    return-void
.end method

.method private getFrameSize(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 7
    const-string v1, " is invalid frame"

    .line 9
    const-string v2, ":"

    .line 11
    if-ltz v0, :cond_88

    .line 13
    if-eqz v0, :cond_4d

    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 18
    move-result v3

    .line 19
    add-int/lit8 v3, v3, -0x2

    .line 21
    if-gt v0, v3, :cond_1a

    .line 23
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V

    .line 26
    return-void

    .line 27
    :cond_1a
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "Invalid Frame size larger than size before mp3 audio:"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 61
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 70
    invoke-static {v0, v2, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_4d
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "Empty Frame:"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 118
    new-instance p1, Lorg/jaudiotagger/tag/EmptyFrameException;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 127
    const-string v2, " is empty frame"

    .line 129
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/EmptyFrameException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1

    .line 137
    :cond_88
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v2, "Invalid Frame size:"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 171
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 180
    invoke-static {v0, v2, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p1
.end method


# virtual methods
.method public createStructure()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "frame"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 20
    const-string v3, "frameSize"

    .line 22
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 25
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 27
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->createStructure()V

    .line 30
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 32
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->createStructure()V

    .line 35
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 37
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->createStructure()V

    .line 40
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 13
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 15
    iget-object v3, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 17
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_27

    .line 23
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 25
    iget-object v3, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 27
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_27

    .line 33
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v0, v2

    .line 41
    :goto_28
    return v0
.end method

.method public getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 3
    return-object v0
.end method

.method public getEncryptionMethod()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    .line 3
    return v0
.end method

.method public getFrameFlagsSize()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getFrameHeaderSize()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getFrameIdSize()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getFrameSizeSize()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getGroupIdentifier()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    .line 3
    return v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0xa

    .line 9
    return v0
.end method

.method public getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 3
    return-object v0
.end method

.method public isBinary()Z
    .registers 3

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isBinary(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isCommon()Z
    .registers 3

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isCommon(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 11

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, ":"

    .line 12
    if-eqz v1, :cond_142

    .line 14
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameSize(Ljava/nio/ByteBuffer;)V

    .line 17
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 22
    move-result v4

    .line 23
    invoke-direct {v1, p0, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    .line 26
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 28
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 33
    move-result v4

    .line 34
    invoke-direct {v1, p0, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    .line 37
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, -0x1

    .line 41
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isGrouping()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_35

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 50
    move-result v1

    .line 51
    iput v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v2, v4

    .line 55
    :goto_36
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 57
    check-cast v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 59
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_48

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 70
    move-result v1

    .line 71
    iput v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    .line 73
    :cond_48
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 75
    check-cast v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 77
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isDataLengthIndicator()Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_82

    .line 83
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 86
    move-result v5

    .line 87
    add-int/lit8 v2, v2, 0x4

    .line 89
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, "Frame Size Is:"

    .line 108
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v6, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v6, " Data Length Size:"

    .line 118
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 131
    :cond_82
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 133
    sub-int/2addr v1, v2

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 141
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 143
    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 145
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isUnsynchronised()Z

    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_bf

    .line 151
    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 158
    move-result v4

    .line 159
    sget-object v6, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v8, "Frame Size After Syncing is:"

    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 191
    goto :goto_c0

    .line 192
    :cond_bf
    move v4, v1

    .line 193
    :goto_c0
    :try_start_c0
    iget-object v6, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 195
    check-cast v6, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 197
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isCompression()Z

    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_d9

    .line 203
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    invoke-static {v0, v2, p1, v5, v1}, Lorg/jaudiotagger/tag/id3/ID3Compression;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p0, v0, v2, v5}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 214
    move-result-object v2

    .line 215
    iput-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 217
    goto :goto_f9

    .line 218
    :cond_d9
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 220
    check-cast v5, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 222
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_f3

    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 235
    iget v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 237
    invoke-virtual {p0, v0, p1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 240
    move-result-object v2

    .line 241
    iput-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 243
    goto :goto_f9

    .line 244
    :cond_f3
    invoke-virtual {p0, v0, v2, v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 247
    move-result-object v2

    .line 248
    iput-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 250
    :goto_f9
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 252
    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;

    .line 254
    if-nez v2, :cond_12f

    .line 256
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v3, "Converted frame body with:"

    .line 275
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v0, " to deprecated framebody"

    .line 283
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 293
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 295
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 297
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 299
    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 302
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_12f
    .catchall {:try_start_c0 .. :try_end_12f} :catchall_138

    .line 304
    :cond_12f
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 307
    move-result v0

    .line 308
    add-int/2addr v0, v1

    .line 309
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    return-void

    .line 313
    :catchall_138
    move-exception v0

    .line 314
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 317
    move-result v2

    .line 318
    add-int/2addr v2, v1

    .line 319
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    throw v0

    .line 323
    :cond_142
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v5, "Invalid identifier:"

    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 358
    move-result v1

    .line 359
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    .line 362
    move-result v4

    .line 363
    sub-int/2addr v4, v2

    .line 364
    sub-int/2addr v1, v4

    .line 365
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 368
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 372
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v0, ":is not a valid ID3v2.30 frame"

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 397
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    .line 400
    throw p1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_1c

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x4

    .line 16
    if-ge p1, v1, :cond_1c

    .line 18
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 29
    :cond_1c
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing frame to file:"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 23
    const/16 v0, 0xa

    .line 25
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 31
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 36
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 38
    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 44
    move-result-object v1

    .line 45
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v2, :cond_3f

    .line 56
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3f

    .line 62
    const/4 v2, 0x1

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v2, v3

    .line 65
    :goto_40
    if-eqz v2, :cond_59

    .line 67
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    .line 70
    move-result-object v1

    .line 71
    sget-object v4, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 73
    const-string v5, "bodybytebuffer:sizeafterunsynchronisation:"

    .line 75
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object v5

    .line 79
    array-length v6, v1

    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 90
    :cond_59
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 97
    move-result v4

    .line 98
    const/4 v5, 0x3

    .line 99
    if-ne v4, v5, :cond_79

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/16 v5, 0x20

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v4

    .line 120
    iput-object v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 122
    :cond_79
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 126
    const-string v5, "ISO-8859-1"

    .line 128
    invoke-static {v4, v5}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 131
    move-result-object v4

    .line 132
    const/4 v5, 0x4

    .line 133
    invoke-virtual {v0, v4, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 136
    array-length v3, v1

    .line 137
    sget-object v4, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v6, "Frame Size Is:"

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 159
    invoke-static {v3}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 168
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    .line 171
    move-result v3

    .line 172
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 175
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 177
    check-cast v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 179
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetNonStandardFlags()V

    .line 182
    if-eqz v2, :cond_bf

    .line 184
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 186
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 188
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->setUnsynchronised()V

    .line 191
    goto :goto_c6

    .line 192
    :cond_bf
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 194
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 196
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetUnsynchronised()V

    .line 199
    :goto_c6
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 201
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 203
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetCompression()V

    .line 206
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 208
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 210
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetDataLengthIndicator()V

    .line 213
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 215
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    .line 218
    move-result v2

    .line 219
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    :try_start_dd
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 229
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 231
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 233
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_f3

    .line 239
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    .line 241
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 244
    :cond_f3
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 246
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    .line 248
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isGrouping()Z

    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_102

    .line 254
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    .line 256
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 259
    :cond_102
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_105} :catch_106

    .line 262
    return-void

    .line 263
    :catch_106
    move-exception p1

    .line 264
    new-instance v0, Ljava/lang/RuntimeException;

    .line 266
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 269
    throw v0
.end method
