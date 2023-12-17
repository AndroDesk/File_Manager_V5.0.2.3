.class public Lorg/jaudiotagger/tag/id3/ID3v22Frame;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.source "ID3v22Frame.java"


# static fields
.field public static final FRAME_HEADER_SIZE:I = 0x6

.field public static final FRAME_ID_SIZE:I = 0x3

.field public static final FRAME_SIZE_SIZE:I = 0x3

.field private static validFrameIdentifier:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "[A-Z][0-9A-Z]{2}"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

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
    .registers 7

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 4
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating empty frame of type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 7
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->forceFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_50

    :cond_28
    const-string v0, "CRM"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_50

    :cond_31
    const-string v0, "TYE"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "TIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_4d

    .line 10
    :cond_42
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 11
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4d
    :goto_4d
    const-string v0, "TDRC"

    goto :goto_51

    :cond_50
    :goto_50
    move-object v0, p1

    .line 12
    :goto_51
    :try_start_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.jaudiotagger.tag.id3.framebody.FrameBody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_6e} :catch_93
    .catch Ljava/lang/InstantiationException; {:try_start_51 .. :try_end_6e} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_6e} :catch_6f

    goto :goto_a6

    :catch_6f
    move-exception p1

    .line 14
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_81
    move-exception p1

    .line 16
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_93
    move-exception v1

    .line 18
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    new-instance v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 20
    :goto_a6
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 21
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Created empty frame of type"

    .line 22
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "with frame body of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, ""

    .line 43
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 41
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 30
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating frame from a frame of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    if-nez v0, :cond_31

    .line 32
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_1b

    .line 33
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 34
    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->createV22FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    goto :goto_24

    .line 35
    :cond_1b
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_24

    .line 36
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->createV22FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    .line 37
    :cond_24
    :goto_24
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 38
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v0, "Created frame from a frame of a different version"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v22Frame;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 28
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v0, "Creating frame from a frame of same version"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method

.method private createV22FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID23To22(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 11
    const-string v1, ":New id is:"

    .line 13
    if-eqz v0, :cond_3a

    .line 15
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 17
    const-string v2, "V2:Orig id is:"

    .line 19
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 55
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 57
    goto/16 :goto_138

    .line 59
    :cond_3a
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_9a

    .line 69
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->forceFrameID23To22(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 79
    if-eqz v0, :cond_7e

    .line 81
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 83
    const-string v2, "V2:Force:Orig id is:"

    .line 85
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 119
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 125
    goto/16 :goto_138

    .line 127
    :cond_7e
    new-instance v0, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 129
    const-string v1, "Unable to convert v23 frame:"

    .line 131
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string p1, " to a v22 frame"

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 154
    throw v0

    .line 155
    :cond_9a
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 158
    move-result-object v0

    .line 159
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 161
    if-eqz v0, :cond_107

    .line 163
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    .line 170
    move-result v0

    .line 171
    const-string v2, "DEPRECATED:Orig id is:"

    .line 173
    if-eqz v0, :cond_d7

    .line 175
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 181
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 187
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 189
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 205
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 215
    goto :goto_138

    .line 216
    :cond_d7
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 218
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 224
    invoke-direct {v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;)V

    .line 227
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 229
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 235
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 237
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 253
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 263
    goto :goto_138

    .line 264
    :cond_107
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 266
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 272
    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    .line 275
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 277
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 280
    move-result-object v0

    .line 281
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 283
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 285
    const-string v2, "v2:UNKNOWN:Orig id is:"

    .line 287
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 303
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 313
    :goto_138
    return-void
.end method

.method private decodeSize([B)I
    .registers 5

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_2f

    .line 12
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 14
    const-string v1, "Invalid Frame Size of:"

    .line 16
    const-string v2, "Decoded from bin:"

    .line 18
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "Decoded from hex:"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 48
    :cond_2f
    return p1
.end method

.method private encodeSize(Ljava/nio/ByteBuffer;I)V
    .registers 5

    .line 1
    const/high16 v0, 0xff0000

    .line 3
    and-int/2addr v0, p2

    .line 4
    shr-int/lit8 v0, v0, 0x10

    .line 6
    int-to-byte v0, v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    const v0, 0xff00

    .line 13
    and-int/2addr v0, p2

    .line 14
    shr-int/lit8 v0, v0, 0x8

    .line 16
    int-to-byte v0, v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 20
    and-int/lit16 v0, p2, 0xff

    .line 22
    int-to-byte v0, v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 28
    const-string v0, "Frame Size Is Actual:"

    .line 30
    const-string v1, ":Encoded bin:"

    .line 32
    invoke-static {v0, p2, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ":Encoded Hex"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 62
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
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 27
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->createStructure()V

    .line 30
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 37
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
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

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

.method public getFrameHeaderSize()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getFrameIdSize()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getFrameSizeSize()I
    .registers 2

    const/4 v0, 0x3

    return v0
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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->getFrameHeaderSize()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public isBinary()Z
    .registers 3

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

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
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

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

.method public isPadding([B)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    .line 4
    if-nez v1, :cond_10

    .line 6
    const/4 v1, 0x1

    .line 7
    aget-byte v2, p1, v1

    .line 9
    if-nez v2, :cond_10

    .line 11
    const/4 v2, 0x2

    .line 12
    aget-byte p1, p1, v2

    .line 14
    if-nez p1, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    return v0
.end method

.method public isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

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
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->getFrameSizeSize()I

    .line 8
    move-result v1

    .line 9
    new-array v1, v1, [B

    .line 11
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_f1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->getFrameSizeSize()I

    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 25
    invoke-direct {p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->decodeSize([B)I

    .line 28
    move-result v1

    .line 29
    iput v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 31
    if-ltz v1, :cond_dc

    .line 33
    if-eqz v1, :cond_ba

    .line 35
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 38
    move-result v2

    .line 39
    if-gt v1, v2, :cond_98

    .line 41
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 43
    const-string v2, "Frame Size Is:"

    .line 45
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v2

    .line 49
    iget v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID22To24(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_52

    .line 67
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_52

    .line 73
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_50

    .line 79
    move-object v1, v0

    .line 80
    goto :goto_52

    .line 81
    :cond_50
    const-string v1, "Unsupported"

    .line 83
    :cond_52
    :goto_52
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v4, "Identifier was:"

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, " reading using:"

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 116
    move-result-object v0

    .line 117
    iget v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 119
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    :try_start_79
    iget v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 124
    invoke-virtual {p0, v1, v0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_8c

    .line 130
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 133
    move-result v0

    .line 134
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 136
    add-int/2addr v0, v1

    .line 137
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    return-void

    .line 141
    :catchall_8c
    move-exception v0

    .line 142
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 145
    move-result v1

    .line 146
    iget v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 148
    add-int/2addr v1, v2

    .line 149
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    throw v0

    .line 153
    :cond_98
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v2, "Invalid Frame size larger than size before mp3 audio:"

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 175
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 177
    const-string v1, " is invalid frame"

    .line 179
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 186
    throw p1

    .line 187
    :cond_ba
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v2, "Empty Frame:"

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 209
    new-instance p1, Lorg/jaudiotagger/tag/EmptyFrameException;

    .line 211
    const-string v1, " is empty frame"

    .line 213
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 217
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/EmptyFrameException;-><init>(Ljava/lang/String;)V

    .line 220
    throw p1

    .line 221
    :cond_dc
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 223
    const-string v1, " has invalid size of:"

    .line 225
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    move-result-object v0

    .line 229
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 241
    throw p1

    .line 242
    :cond_f1
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string v3, "Invalid identifier:"

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 267
    move-result v1

    .line 268
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->getFrameIdSize()I

    .line 271
    move-result v2

    .line 272
    add-int/lit8 v2, v2, -0x1

    .line 274
    sub-int/2addr v1, v2

    .line 275
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 278
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;

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
    const-string v2, ":"

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v0, ":is not a valid ID3v2.20 frame"

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object v0

    .line 309
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    .line 312
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
    const/4 v1, 0x2

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
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Write Frame to Buffer"

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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->getFrameHeaderSize()I

    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 33
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 38
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 40
    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 43
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const-string v3, "ISO-8859-1"

    .line 49
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->getFrameIdSize()I

    .line 56
    move-result v3

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v0, v2, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 63
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 66
    move-result v2

    .line 67
    invoke-direct {p0, v0, v2}, Lorg/jaudiotagger/tag/id3/ID3v22Frame;->encodeSize(Ljava/nio/ByteBuffer;I)V

    .line 70
    :try_start_45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 77
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_53} :catch_54

    .line 84
    return-void

    .line 85
    :catch_54
    move-exception p1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    throw v0
.end method
