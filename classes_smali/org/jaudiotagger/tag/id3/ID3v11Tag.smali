.class public Lorg/jaudiotagger/tag/id3/ID3v11Tag;
.super Lorg/jaudiotagger/tag/id3/ID3v1Tag;
.source "ID3v11Tag.java"


# static fields
.field public static final FIELD_COMMENT_LENGTH:I = 0x1c

.field public static final FIELD_COMMENT_POS:I = 0x61

.field public static final FIELD_TRACK_INDICATOR_LENGTH:I = 0x1

.field public static final FIELD_TRACK_INDICATOR_POS:I = 0x7d

.field public static final FIELD_TRACK_LENGTH:I = 0x1

.field public static final FIELD_TRACK_POS:I = 0x7e

.field private static final MAJOR_VERSION:B = 0x1t

.field private static final RELEASE:B = 0x1t

.field private static final REVISION:B = 0x0t

.field public static final TRACK_MAX_VALUE:I = 0xff

.field public static final TRACK_MIN_VALUE:I = 0x1

.field public static final TRACK_UNDEFINED:I = 0x0

.field public static final TYPE_TRACK:Ljava/lang/String; = "track"


# instance fields
.field public track:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    const-string v0, ""

    .line 65
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .registers 8

    .line 56
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 58
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    const/16 p2, 0x80

    .line 59
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 60
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x80

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 62
    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 63
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 7

    .line 6
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-eqz p1, :cond_15e

    .line 8
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_34

    .line 9
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    if-nez v0, :cond_2c

    .line 10
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 11
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 16
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    goto/16 :goto_15e

    .line 17
    :cond_2c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_34
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-nez v0, :cond_3e

    .line 19
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    goto :goto_41

    .line 20
    :cond_3e
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    :goto_41
    const-string p1, "TIT2"

    .line 21
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x1e

    if-eqz v1, :cond_61

    .line 22
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    :cond_61
    const-string p1, "TPE1"

    .line 25
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 26
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 27
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    :cond_7f
    const-string p1, "TALB"

    .line 29
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 30
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 31
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    :cond_9d
    const-string p1, "TDRC"

    .line 33
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 34
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 35
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    .line 36
    invoke-static {p1, v1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    :cond_bc
    const-string p1, "COMM"

    .line 37
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 38
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    .line 39
    :goto_ca
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 41
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_ca

    :cond_f1
    const/16 p1, 0x1c

    .line 43
    invoke-static {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    :cond_f9
    const-string p1, "TCON"

    .line 44
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 45
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 46
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    .line 47
    :try_start_111
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->findNumber(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B
    :try_end_119
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_111 .. :try_end_119} :catch_11a

    goto :goto_13f

    :catch_11a
    move-exception p1

    .line 48
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Unable to convert TCON frame to format suitable for v11 tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 49
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    :cond_13f
    :goto_13f
    const-string p1, "TRCK"

    .line 50
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 51
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 52
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    :cond_15e
    :goto_15e
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v11Tag;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    const/4 v0, 0x0

    .line 4
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 5
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    return-void
.end method


# virtual methods
.method public addTrack(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->setTrack(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public createStructure()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getIdentifier()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "tag"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 20
    const-string v3, "title"

    .line 22
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 31
    const-string v3, "artist"

    .line 33
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 42
    const-string v3, "album"

    .line 44
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 53
    const-string v3, "year"

    .line 55
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 64
    const-string v3, "comment"

    .line 66
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 72
    move-result-object v0

    .line 73
    iget-byte v1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 75
    const-string v3, "track"

    .line 77
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 80
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 83
    move-result-object v0

    .line 84
    iget-byte v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 86
    const-string v3, "genre"

    .line 88
    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 91
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    .line 12
    :goto_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

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
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    .line 10
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 12
    iget-byte v0, v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 14
    if-ne v2, v0, :cond_16

    .line 16
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->equals(Ljava/lang/Object;)Z

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

.method public getFieldCount()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .registers 3
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

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    if-ne p1, v0, :cond_9

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getTrack()Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag$1;->$SwitchMap$org$jaudiotagger$tag$FieldKey:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    packed-switch p1, :pswitch_data_32

    .line 12
    const-string p1, ""

    .line 14
    return-object p1

    .line 15
    :pswitch_e  #0x7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstComment()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_13  #0x6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstTrack()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_18  #0x5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstYear()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :pswitch_1d  #0x4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstGenre()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_22  #0x3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstTitle()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :pswitch_27  #0x2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :pswitch_2c  #0x1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_27  #00000002
        :pswitch_22  #00000003
        :pswitch_1d  #00000004
        :pswitch_18  #00000005
        :pswitch_13  #00000006
        :pswitch_e  #00000007
    .end packed-switch
.end method

.method public getFirstComment()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_22

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getTrack()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_20

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_20

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    .line 32
    return-object p1

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :cond_22
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public getFirstTrack()Ljava/lang/String;
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getMajorVersion()B
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRelease()B
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRevision()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTrack()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_20

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    .line 15
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v2, v0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 3
    if-gtz v0, :cond_c

    .line 5
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_df

    .line 7
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 9
    const-string v1, "Reading v1.1 tag"

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 14
    const/16 v0, 0x80

    .line 16
    new-array v1, v0, [B

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 25
    const/4 p1, 0x3

    .line 26
    const/16 v0, 0x1e

    .line 28
    const-string v3, "ISO-8859-1"

    .line 30
    invoke-static {v1, p1, v0, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 40
    sget-object v4, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 42
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3f

    .line 52
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 57
    move-result p1

    .line 58
    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 64
    :cond_3f
    const/16 p1, 0x21

    .line 66
    invoke-static {v1, p1, v0, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 76
    sget-object v4, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 78
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_63

    .line 88
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 93
    move-result p1

    .line 94
    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 100
    :cond_63
    const/16 p1, 0x3f

    .line 102
    invoke-static {v1, p1, v0, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 112
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 114
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_87

    .line 124
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 129
    move-result p1

    .line 130
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 136
    :cond_87
    const/16 p1, 0x5d

    .line 138
    const/4 v0, 0x4

    .line 139
    invoke-static {v1, p1, v0, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 149
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 151
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_ac

    .line 161
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 166
    move-result p1

    .line 167
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 173
    :cond_ac
    const/16 p1, 0x61

    .line 175
    const/16 v0, 0x1c

    .line 177
    invoke-static {v1, p1, v0, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 187
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 189
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_d2

    .line 199
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 204
    move-result p1

    .line 205
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 211
    :cond_d2
    const/16 p1, 0x7e

    .line 213
    aget-byte p1, v1, p1

    .line 215
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 217
    const/16 p1, 0x7f

    .line 219
    aget-byte p1, v1, p1

    .line 221
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 223
    return-void

    .line 224
    :cond_df
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 226
    const-string v0, "ID3v1 tag not found"

    .line 228
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 231
    throw p1
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [B

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    const/16 v0, 0x7d

    .line 19
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    return v2

    .line 29
    :cond_1c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_23

    .line 35
    const/4 v2, 0x1

    .line 36
    :cond_23
    return v2
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const/16 v0, 0x1c

    .line 5
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 16
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 4

    .line 1
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 11
    if-ne v0, v1, :cond_14

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->setTrack(Ljava/lang/String;)V

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 24
    :goto_17
    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 5
    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_6

    .line 6
    goto :goto_7

    .line 7
    :catch_6
    move v1, v0

    .line 8
    :goto_7
    const/16 v2, 0xff

    .line 10
    if-gt v1, v2, :cond_17

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ge v1, v2, :cond_f

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    int-to-byte p1, p1

    .line 21
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    :goto_17
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 26
    :goto_19
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Saving ID3v11 tag to file"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    const/16 v0, 0x80

    .line 10
    new-array v0, v0, [B

    .line 12
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 15
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveTitle()Z

    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x1e

    .line 39
    if-eqz v1, :cond_41

    .line 41
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 43
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    move v4, v3

    .line 48
    :goto_2f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    move-result v5

    .line 52
    if-ge v4, v5, :cond_41

    .line 54
    add-int/lit8 v5, v4, 0x3

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    move-result v6

    .line 60
    int-to-byte v6, v6

    .line 61
    aput-byte v6, v0, v5

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_2f

    .line 66
    :cond_41
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveArtist()Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_64

    .line 76
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 78
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    move v4, v3

    .line 83
    :goto_52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    move-result v5

    .line 87
    if-ge v4, v5, :cond_64

    .line 89
    add-int/lit8 v5, v4, 0x21

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 94
    move-result v6

    .line 95
    int-to-byte v6, v6

    .line 96
    aput-byte v6, v0, v5

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_52

    .line 101
    :cond_64
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveAlbum()Z

    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_87

    .line 111
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 113
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    move v2, v3

    .line 118
    :goto_75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 121
    move-result v4

    .line 122
    if-ge v2, v4, :cond_87

    .line 124
    add-int/lit8 v4, v2, 0x3f

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 129
    move-result v5

    .line 130
    int-to-byte v5, v5

    .line 131
    aput-byte v5, v0, v4

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_75

    .line 136
    :cond_87
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveYear()Z

    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_ab

    .line 146
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 148
    const/4 v2, 0x4

    .line 149
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    move v2, v3

    .line 154
    :goto_99
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 157
    move-result v4

    .line 158
    if-ge v2, v4, :cond_ab

    .line 160
    add-int/lit8 v4, v2, 0x5d

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 165
    move-result v5

    .line 166
    int-to-byte v5, v5

    .line 167
    aput-byte v5, v0, v4

    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_99

    .line 172
    :cond_ab
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveComment()Z

    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_cf

    .line 182
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 184
    const/16 v2, 0x1c

    .line 186
    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    :goto_bd
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 193
    move-result v2

    .line 194
    if-ge v3, v2, :cond_cf

    .line 196
    add-int/lit8 v2, v3, 0x61

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 201
    move-result v4

    .line 202
    int-to-byte v4, v4

    .line 203
    aput-byte v4, v0, v2

    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 207
    goto :goto_bd

    .line 208
    :cond_cf
    const/16 v1, 0x7e

    .line 210
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 212
    aput-byte v2, v0, v1

    .line 214
    const/16 v1, 0x7f

    .line 216
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveGenre()Z

    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_e5

    .line 226
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 228
    aput-byte v2, v0, v1

    .line 230
    :cond_e5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 233
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 235
    const-string v0, "Saved ID3v11 tag to file"

    .line 237
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 240
    return-void
.end method
