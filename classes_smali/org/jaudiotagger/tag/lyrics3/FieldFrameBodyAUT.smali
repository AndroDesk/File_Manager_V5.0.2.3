.class public Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyAUT.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    const-string v0, "Author"

    .line 4
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Author"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "AUT"

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "Author"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setupObjectList()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringSizeTerminated;

    .line 5
    const-string v2, "Author"

    .line 7
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/StringSizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method
