.class Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
.source "ID3v23Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/ID3v23Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusFlags"
.end annotation


# static fields
.field public static final MASK_FILE_ALTER_PRESERVATION:I = 0x40

.field public static final MASK_READ_ONLY:I = 0x20

.field public static final MASK_TAG_ALTER_PRESERVATION:I = 0x80

.field public static final TYPE_FILEALTERPRESERVATION:Ljava/lang/String; = "typeFileAlterPreservation"

.field public static final TYPE_READONLY:Ljava/lang/String; = "typeReadOnly"

.field public static final TYPE_TAGALTERPRESERVATION:Ljava/lang/String; = "typeTagAlterPreservation"


# instance fields
.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    const/4 p1, 0x0

    .line 2
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 3
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;B)V
    .registers 3

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 5
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 6
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;)V
    .registers 3

    .line 8
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 9
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result p1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->convertV4ToV3Flags(B)B

    move-result p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 10
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 11
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method private convertV4ToV3Flags(B)B
    .registers 4

    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x40

    if-eqz v0, :cond_8

    int-to-byte v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    and-int/2addr p1, v1

    if-eqz p1, :cond_f

    or-int/lit8 p1, v0, -0x80

    int-to-byte v0, p1

    :cond_f
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
    and-int/lit16 v2, v2, 0x80

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
    and-int/lit8 v2, v2, 0x40

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
    and-int/lit8 v2, v2, 0x20

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
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

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
    or-int/lit8 v0, v0, 0x40

    .line 21
    int-to-byte v0, v0

    .line 22
    and-int/lit8 v0, v0, 0x7f

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
    and-int/lit8 v0, v0, -0x41

    .line 32
    int-to-byte v0, v0

    .line 33
    and-int/lit8 v0, v0, 0x7f

    .line 35
    int-to-byte v0, v0

    .line 36
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 38
    :goto_25
    return-void
.end method
