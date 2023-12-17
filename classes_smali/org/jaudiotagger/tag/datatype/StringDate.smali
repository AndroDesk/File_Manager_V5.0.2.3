.class public Lorg/jaudiotagger/tag/datatype/StringDate;
.super Lorg/jaudiotagger/tag/datatype/StringFixedLength;
.source "StringDate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 4

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/StringDate;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;-><init>(Lorg/jaudiotagger/tag/datatype/StringFixedLength;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/StringDate;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->equals(Ljava/lang/Object;)Z

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

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x2d

    .line 11
    invoke-static {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->stripChar(Ljava/lang/String;C)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x2d

    .line 9
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->stripChar(Ljava/lang/String;C)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 15
    :cond_e
    return-void
.end method
