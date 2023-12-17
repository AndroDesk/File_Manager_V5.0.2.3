.class public abstract Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.super Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
.source "AbstractID3v2FrameBody.java"


# static fields
.field public static final TYPE_BODY:Ljava/lang/String; = "body"


# instance fields
.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;-><init>()V

    .line 4
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->setSize(I)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .registers 4

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
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_21

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 30
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->createStructure()V

    .line 33
    goto :goto_11

    .line 34
    :cond_21
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->equals(Ljava/lang/Object;)Z

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

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    .line 3
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getSize()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 7
    const-string v2, "Reading body for"

    .line 9
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, ":"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 35
    new-array v1, v0, [B

    .line 37
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 40
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p1

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_82

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 59
    sget-object v4, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v6, "offset:"

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 81
    if-gt v2, v0, :cond_73

    .line 83
    :try_start_52
    invoke-virtual {v3, v1, v2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V
    :try_end_55
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_52 .. :try_end_55} :catch_5b

    .line 86
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getSize()I

    .line 89
    move-result v3

    .line 90
    add-int/2addr v2, v3

    .line 91
    goto :goto_2e

    .line 92
    :catch_5b
    move-exception p1

    .line 93
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 95
    const-string v1, "Problem reading datatype within Frame Body:"

    .line 97
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 115
    throw p1

    .line 116
    :cond_73
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 118
    const-string v0, "Invalid Size for FrameBody"

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 123
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 125
    const-string v0, "Invalid size for Frame Body"

    .line 127
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p1

    .line 131
    :cond_82
    return-void
.end method

.method public setSize()V
    .registers 4

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    .line 3
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 4
    iget v2, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getSize()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public setSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing frame body for"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, ":Est Size:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_43

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 51
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->writeByteArray()[B

    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_26

    .line 57
    :try_start_38
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_26

    .line 61
    :catch_3c
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 67
    throw v0

    .line 68
    :cond_43
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->setSize()V

    .line 71
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 73
    const-string v0, "Written frame body for"

    .line 75
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ":Real Size:"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 103
    return-void
.end method
