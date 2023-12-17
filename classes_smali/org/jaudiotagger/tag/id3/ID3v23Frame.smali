.class public Lorg/jaudiotagger/tag/id3/ID3v23Frame;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.source "ID3v23Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;,
        Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;
    }
.end annotation


# static fields
.field public static final FRAME_COMPRESSION_UNCOMPRESSED_SIZE:I = 0x4

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
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

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
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {p1, p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 4
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-direct {p1, p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, ""

    .line 140
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 138
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 6

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating frame from a frame of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-nez v0, :cond_325

    .line 11
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_2e

    .line 12
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    :cond_2e
    const-string v1, "UNKNOWN:Orig id is:"

    const-string v2, ":New id is:"

    if-eqz v0, :cond_216

    .line 14
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v0, :cond_6f

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 16
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 18
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 19
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_6f
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    if-eqz v0, :cond_103

    .line 22
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DEPRECATED:Orig id is:"

    if-eqz v0, :cond_c3

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;->getOriginalFrameBody()Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 24
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 25
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v3

    invoke-static {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;B)B

    move-result v3

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 26
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 27
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 28
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_30e

    .line 30
    :cond_c3
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-direct {v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 31
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 32
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v3

    invoke-static {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;B)B

    move-result v3

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 33
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 34
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 35
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_103
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v24FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 38
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "isID3v24FrameIdentifier"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID24To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    const-string v1, "V4:Orig id is:"

    if-eqz v0, :cond_15b

    .line 40
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 41
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 44
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 45
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;B)B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    return-void

    .line 46
    :cond_15b
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->forceFrameID24To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_1a2

    .line 47
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 48
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 51
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 52
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;B)B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    return-void

    .line 53
    :cond_1a2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 55
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 56
    new-instance v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/lang/String;[B)V

    iput-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 57
    invoke-virtual {v3, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 58
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 59
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":New Id Unsupported is:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    .line 61
    :cond_1e3
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Orig id is:"

    .line 62
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Unable to create Frame Body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 65
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_216
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_30e

    .line 68
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2db

    .line 69
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_25e

    .line 70
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "V3:Orig id is:"

    .line 71
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 74
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void

    .line 75
    :cond_25e
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30e

    .line 76
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->forceFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_2a6

    .line 77
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "V22Orig id is:"

    .line 78
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 81
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void

    .line 82
    :cond_2a6
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 83
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 84
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 85
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Deprecated:V22:orig id id is:"

    .line 86
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2db
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 89
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 90
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 92
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_30e
    :goto_30e
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Frame is unknown version:"

    .line 95
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_325
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V
    .registers 4

    .line 5
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 6
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 7
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

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
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

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
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->encryptionMethod:I

    .line 3
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
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->groupIdentifier:I

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
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

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
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

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
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

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
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1df

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 14
    move-result v1

    .line 15
    iput v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 17
    const-string v2, " is invalid frame"

    .line 19
    if-ltz v1, :cond_1b8

    .line 21
    if-eqz v1, :cond_189

    .line 23
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 26
    move-result v3

    .line 27
    if-gt v1, v3, :cond_14c

    .line 29
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 34
    move-result v2

    .line 35
    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;B)V

    .line 38
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 40
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 45
    move-result v2

    .line 46
    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;B)V

    .line 49
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 51
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_42

    .line 57
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_40

    .line 63
    move-object v1, v0

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    const-string v1, "Unsupported"

    .line 67
    :cond_42
    :goto_42
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, ":Identifier was:"

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, " reading using:"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, "with frame size:"

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    .line 115
    const/4 v3, -0x1

    .line 116
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 118
    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 120
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isCompression()Z

    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_9f

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 129
    move-result v3

    .line 130
    const/4 v2, 0x4

    .line 131
    sget-object v4, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v6, ":Decompressed frame size is:"

    .line 147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    :cond_9f
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 162
    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 164
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_b1

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 175
    move-result v4

    .line 176
    iput v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->encryptionMethod:I

    .line 178
    :cond_b1
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 180
    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 182
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isGrouping()Z

    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_c3

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 193
    move-result v4

    .line 194
    iput v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->groupIdentifier:I

    .line 196
    :cond_c3
    iget v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 198
    sub-int/2addr v4, v2

    .line 199
    :try_start_c6
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 201
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 203
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isCompression()Z

    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_df

    .line 209
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 212
    move-result-object v2

    .line 213
    invoke-static {v0, v2, p1, v3, v4}, Lorg/jaudiotagger/tag/id3/ID3Compression;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {p0, v1, v2, v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 220
    move-result-object v1

    .line 221
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 223
    goto :goto_106

    .line 224
    :cond_df
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 226
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 228
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_f9

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 241
    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 243
    invoke-virtual {p0, v0, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 246
    move-result-object v1

    .line 247
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 249
    goto :goto_106

    .line 250
    :cond_f9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {p0, v1, v2, v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 260
    move-result-object v1

    .line 261
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 263
    :goto_106
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 265
    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;

    .line 267
    if-nez v1, :cond_139

    .line 269
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v3, ":Converted frameBody with:"

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v0, " to deprecated frameBody"

    .line 293
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 303
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    .line 305
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 307
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 309
    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 312
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_139
    .catchall {:try_start_c6 .. :try_end_139} :catchall_142

    .line 314
    :cond_139
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 317
    move-result v0

    .line 318
    add-int/2addr v0, v4

    .line 319
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    return-void

    .line 323
    :catchall_142
    move-exception v0

    .line 324
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 327
    move-result v1

    .line 328
    add-int/2addr v1, v4

    .line 329
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 332
    throw v0

    .line 333
    :cond_14c
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v4, ":Invalid Frame size of "

    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v4, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    const-string v4, " larger than size of"

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 365
    move-result p1

    .line 366
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    const-string p1, " before mp3 audio:"

    .line 371
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 384
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 386
    invoke-static {v0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    move-result-object v0

    .line 390
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 393
    throw p1

    .line 394
    :cond_189
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    .line 398
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v3, ":Empty Frame Size:"

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 426
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 429
    new-instance p1, Lorg/jaudiotagger/tag/EmptyFrameException;

    .line 431
    const-string v1, " is empty frame"

    .line 433
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    move-result-object v0

    .line 437
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/EmptyFrameException;-><init>(Ljava/lang/String;)V

    .line 440
    throw p1

    .line 441
    :cond_1b8
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    .line 445
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v3, ":Invalid Frame Size:"

    .line 457
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 470
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 472
    invoke-static {v0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    move-result-object v0

    .line 476
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 479
    throw p1

    .line 480
    :cond_1df
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    .line 484
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v3, ":Invalid identifier:"

    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 512
    move-result v1

    .line 513
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getFrameIdSize()I

    .line 516
    move-result v2

    .line 517
    add-int/lit8 v2, v2, -0x1

    .line 519
    sub-int/2addr v1, v2

    .line 520
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 523
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    .line 527
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v2, ":"

    .line 539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v0, ":is not a valid ID3v2.30 frame"

    .line 547
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    move-result-object v0

    .line 554
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    .line 557
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
    .registers 8

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing frame to buffer:"

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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x3

    .line 50
    if-ne v2, v3, :cond_48

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/16 v3, 0x20

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 73
    :cond_48
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    const-string v3, "ISO-8859-1"

    .line 79
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 82
    move-result-object v2

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x4

    .line 85
    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 90
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 93
    move-result v2

    .line 94
    sget-object v3, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v5, "Frame Size Is:"

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 118
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 121
    move-result v2

    .line 122
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 125
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 127
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    .line 130
    move-result v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 136
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 138
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->unsetNonStandardFlags()V

    .line 141
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 143
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 145
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->unsetCompression()V

    .line 148
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 150
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    .line 153
    move-result v2

    .line 154
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    :try_start_9c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 166
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 168
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_b2

    .line 174
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->encryptionMethod:I

    .line 176
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 179
    :cond_b2
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 181
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    .line 183
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isGrouping()Z

    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_c1

    .line 189
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->groupIdentifier:I

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 194
    :cond_c1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_c8} :catch_c9

    .line 201
    return-void

    .line 202
    :catch_c9
    move-exception p1

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    .line 205
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 208
    throw v0
.end method
