.class public Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;
.super Lorg/jaudiotagger/tag/id3/AbstractTagFrame;
.source "Lyrics3v2Field.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 5

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USLT"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_23

    .line 8
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V

    goto/16 :goto_f7

    :cond_23
    const-string v1, "SYLT"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 12
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V

    goto/16 :goto_f7

    :cond_3d
    const-string v1, "COMM"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 14
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_f7

    :cond_58
    const-string v1, "TCOM"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 18
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    if-eqz p1, :cond_f7

    .line 19
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f7

    .line 20
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_f7

    :cond_86
    const-string v1, "TALB"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 22
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_f7

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f7

    .line 24
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_f7

    :cond_ac
    const-string v1, "TPE1"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 26
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_f7

    .line 27
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f7

    .line 28
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_f7

    :cond_d2
    const-string v1, "TIT2"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 30
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_f7

    .line 31
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f7

    .line 32
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    :cond_f7
    :goto_f7
    return-void

    .line 33
    :cond_f8
    new-instance p1, Lorg/jaudiotagger/tag/TagException;

    const-string v0, "Cannot createField Lyrics3v2 field from given ID3v2 frame"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method

.method private readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
    .registers 4

    .line 1
    const-string v0, "AUT"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    .line 11
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/nio/ByteBuffer;)V

    .line 14
    goto :goto_75

    .line 15
    :cond_e
    const-string v0, "EAL"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1c

    .line 23
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;

    .line 25
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/nio/ByteBuffer;)V

    .line 28
    goto :goto_75

    .line 29
    :cond_1c
    const-string v0, "EAR"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2a

    .line 37
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;

    .line 39
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/nio/ByteBuffer;)V

    .line 42
    goto :goto_75

    .line 43
    :cond_2a
    const-string v0, "ETT"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_38

    .line 51
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;

    .line 53
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/nio/ByteBuffer;)V

    .line 56
    goto :goto_75

    .line 57
    :cond_38
    const-string v0, "IMG"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_46

    .line 65
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIMG;

    .line 67
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIMG;-><init>(Ljava/nio/ByteBuffer;)V

    .line 70
    goto :goto_75

    .line 71
    :cond_46
    const-string v0, "IND"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_54

    .line 79
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;

    .line 81
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;-><init>(Ljava/nio/ByteBuffer;)V

    .line 84
    goto :goto_75

    .line 85
    :cond_54
    const-string v0, "INF"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_62

    .line 93
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;

    .line 95
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/nio/ByteBuffer;)V

    .line 98
    goto :goto_75

    .line 99
    :cond_62
    const-string v0, "LYR"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_70

    .line 107
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 109
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/nio/ByteBuffer;)V

    .line 112
    goto :goto_75

    .line 113
    :cond_70
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    .line 115
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;-><init>(Ljava/nio/ByteBuffer;)V

    .line 118
    :goto_75
    return-object p1
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getSize()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x5

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 4
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 16
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 24
    new-instance v3, Ljava/lang/String;

    .line 26
    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 29
    invoke-static {v3}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_29

    .line 35
    invoke-direct {p0, v3, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 41
    return-void

    .line 42
    :cond_29
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    .line 44
    const-string v0, " is not a valid ID3v2.4 frame"

    .line 46
    invoke-static {v3, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_12

    .line 9
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3SaveEmptyField()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_32

    .line 19
    :cond_12
    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [B

    .line 22
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    move-result v4

    .line 32
    if-ge v3, v4, :cond_2b

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 37
    move-result v4

    .line 38
    int-to-byte v4, v4

    .line 39
    aput-byte v4, v0, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 51
    :cond_32
    return-void
.end method
