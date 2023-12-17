.class Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
.source "ID3v24Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/ID3v24Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusFlags"
.end annotation


# static fields
.field public static final MASK_FILE_ALTER_PRESERVATION:I = 0x20

.field public static final MASK_READ_ONLY:I = 0x10

.field public static final MASK_TAG_ALTER_PRESERVATION:I = 0x40

.field public static final TYPE_FILEALTERPRESERVATION:Ljava/lang/String; = "typeFileAlterPreservation"

.field public static final TYPE_READONLY:Ljava/lang/String; = "typeReadOnly"

.field public static final TYPE_TAGALTERPRESERVATION:Ljava/lang/String; = "typeTagAlterPreservation"


# instance fields
.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V
    .registers 3

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 4
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 5
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;)V
    .registers 3

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 8
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result p1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->convertV3ToV4Flags(B)B

    move-result p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 9
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method private convertV3ToV4Flags(B)B
    .registers 3

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_10

    or-int/lit8 p1, v0, 0x40

    int-to-byte v0, p1

    :cond_10
    return v0
.end method


# virtual methods
.method public createStructure()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "statusFlags"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 15
    move-result-object v0

    .line 16
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 18
    and-int/lit8 v2, v2, 0x40

    .line 20
    const-string v3, "typeTagAlterPreservation"

    .line 22
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 25
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 28
    move-result-object v0

    .line 29
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 31
    and-int/lit8 v2, v2, 0x20

    .line 33
    const-string v3, "typeFileAlterPreservation"

    .line 35
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 38
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 41
    move-result-object v0

    .line 42
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 44
    and-int/lit8 v2, v2, 0x10

    .line 46
    const-string v3, "typeReadOnly"

    .line 48
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 51
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public modifyFlags()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isDiscardIfFileAltered(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1b

    .line 17
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 19
    or-int/lit8 v0, v0, 0x20

    .line 21
    int-to-byte v0, v0

    .line 22
    and-int/lit8 v0, v0, -0x41

    .line 24
    int-to-byte v0, v0

    .line 25
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 27
    goto :goto_25

    .line 28
    :cond_1b
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 30
    and-int/lit8 v0, v0, -0x21

    .line 32
    int-to-byte v0, v0

    .line 33
    and-int/lit8 v0, v0, -0x41

    .line 35
    int-to-byte v0, v0

    .line 36
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 38
    :goto_25
    return-void
.end method
