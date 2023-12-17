.class public abstract Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.super Lorg/jaudiotagger/tag/id3/AbstractTagFrame;
.source "AbstractID3v2Frame.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;,
        Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    }
.end annotation


# static fields
.field public static final TYPE_FRAME:Ljava/lang/String; = "frame"

.field public static final TYPE_FRAME_SIZE:Ljava/lang/String; = "frameSize"

.field public static final UNSUPPORTED_ID:Ljava/lang/String; = "Unsupported"


# instance fields
.field public encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

.field public frameSize:I

.field public identifier:Ljava/lang/String;

.field private loggingFilename:Ljava/lang/String;

.field public statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    .line 18
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 22
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 23
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating empty frame of type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 25
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.jaudiotagger.tag.id3.framebody.FrameBody"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_43} :catch_82
    .catch Ljava/lang/InstantiationException; {:try_start_26 .. :try_end_43} :catch_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_43} :catch_44

    goto :goto_93

    :catch_44
    move-exception v0

    .line 27
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_63
    move-exception v0

    .line 29
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantiationException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_82
    move-exception v0

    .line 31
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 33
    :goto_93
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 34
    instance-of v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_aa

    .line 35
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v24DefaultTextEncoding()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    goto :goto_bb

    .line 36
    :cond_aa
    instance-of v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_bb

    .line 37
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 38
    :cond_bb
    :goto_bb
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created empty frame of type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 10
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 15
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 16
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 17
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method


# virtual methods
.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 2

    return-void
.end method

.method public createStructure()V
    .registers 4

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
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 13
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getUserFriendlyValue()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 3
    return-object v0
.end method

.method public abstract getFrameHeaderSize()I
.end method

.method public abstract getFrameIdSize()I
.end method

.method public abstract getFrameSizeSize()I
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLoggingFilename()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRawContent()[B
    .registers 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 3
    return-object v0
.end method

.method public isBinary(Z)V
    .registers 2

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public isPadding([B)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    .line 4
    if-nez v1, :cond_15

    .line 6
    const/4 v1, 0x1

    .line 7
    aget-byte v2, p1, v1

    .line 9
    if-nez v2, :cond_15

    .line 11
    const/4 v2, 0x2

    .line 12
    aget-byte v2, p1, v2

    .line 14
    if-nez v2, :cond_15

    .line 16
    const/4 v2, 0x3

    .line 17
    aget-byte p1, p1, v2

    .line 19
    if-nez p1, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    return v0
.end method

.method public readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .registers 11

    const-string v0, ":"

    .line 1
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v2, "Creating framebody:start"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 2
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.jaudiotagger.tag.id3.framebody.FrameBody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "java.nio.ByteBuffer"

    .line 3
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_43} :catch_151
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_43} :catch_d8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_43} :catch_a7
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_43} :catch_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_43} :catch_45

    goto/16 :goto_17b

    :catch_45
    move-exception p1

    .line 7
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Illegal access exception :"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_76
    move-exception p1

    .line 9
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Instantiation exception:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_a7
    move-exception p1

    .line 11
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "No such method:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_d8
    move-exception p2

    .line 13
    sget-object p3, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "An error occurred within abstractID3v2FrameBody for identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Error;

    if-nez p1, :cond_14a

    .line 15
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-nez p1, :cond_143

    .line 16
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    if-nez p1, :cond_13c

    .line 17
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    if-eqz p1, :cond_12e

    .line 18
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    throw p1

    .line 19
    :cond_12e
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_13c
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    throw p1

    .line 21
    :cond_143
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 22
    :cond_14a
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 23
    :catch_151
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Identifier not recognised:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using FrameBodyUnsupported"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 24
    :try_start_176
    new-instance v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v1, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_17b
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_176 .. :try_end_17b} :catch_1ae
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_176 .. :try_end_17b} :catch_1a3

    .line 25
    :goto_17b
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Created framebody:end"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-object v1

    :catch_1a3
    move-exception p1

    .line 27
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1ae
    move-exception p1

    .line 28
    throw p1
.end method

.method public readBody(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .registers 9

    const-string v0, "FrameBody"

    .line 29
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.jaudiotagger.tag.id3.framebody.FrameBody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2f} :catch_117
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2f} :catch_e3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2f} :catch_8f
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2f} :catch_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2f} :catch_49

    .line 33
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string p2, "frame Body created"

    .line 34
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 35
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-object v1

    :catch_49
    move-exception p1

    .line 37
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Illegal access exception :"

    .line 38
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_6c
    move-exception p1

    .line 41
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Instantiation exception:"

    .line 42
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_8f
    move-exception p1

    .line 45
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v0, "An error occurred within abstractID3v2FrameBody"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 46
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Invocation target exception:"

    .line 47
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Error;

    if-nez p2, :cond_dc

    .line 50
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_ce

    .line 51
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 52
    :cond_ce
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_dc
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :catch_e3
    move-exception v1

    .line 54
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "No such method:"

    .line 55
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    new-instance v1, Lorg/jaudiotagger/tag/InvalidFrameException;

    const-string v2, " does not have a constructor that takes:"

    .line 58
    invoke-static {v0, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :catch_117
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifier not recognised:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unable to create framebody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 61
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    const-string v1, " does not exist"

    .line 62
    invoke-static {v0, p1, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEncrypted;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEncrypted;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V

    .line 6
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V
    :try_end_8
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    move-exception p1

    .line 11
    new-instance p2, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 13
    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    throw p2
.end method

.method public readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameHeaderSize()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 19
    move-result v1

    .line 20
    const-string v3, ":"

    .line 22
    if-ge v2, v1, :cond_6c

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->isPadding([B)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_51

    .line 38
    new-instance p1, Ljava/lang/String;

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 43
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 45
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "Identifier is"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 81
    return-object p1

    .line 82
    :cond_51
    new-instance p1, Lorg/jaudiotagger/tag/PaddingException;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ":only padding found"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/PaddingException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1

    .line 109
    :cond_6c
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "No space to find another frame:"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 138
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "No space to find another frame"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 167
    throw p1
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Not implemeneted please use the generic tag methods for setting content"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setLoggingFilename(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public abstract write(Ljava/io/ByteArrayOutputStream;)V
.end method
