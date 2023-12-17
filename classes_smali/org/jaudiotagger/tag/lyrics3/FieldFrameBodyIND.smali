.class public Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyIND.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Lyrics Present"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "Timestamp Present"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

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

    const-string v0, "IND"

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
    new-instance v1, Lorg/jaudiotagger/tag/datatype/BooleanString;

    .line 5
    const-string v2, "Lyrics Present"

    .line 7
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/BooleanString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Lorg/jaudiotagger/tag/datatype/BooleanString;

    .line 17
    const-string v2, "Timestamp Present"

    .line 19
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/BooleanString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
