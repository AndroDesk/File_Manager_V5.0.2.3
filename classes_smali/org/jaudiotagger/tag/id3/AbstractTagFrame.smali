.class public abstract Lorg/jaudiotagger/tag/id3/AbstractTagFrame;
.super Lorg/jaudiotagger/tag/id3/AbstractTagItem;
.source "AbstractTagFrame.java"


# instance fields
.field public frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;-><init>()V

    .line 3
    iget-object p1, p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2b

    .line 27
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 29
    iget-object v3, p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 31
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2b

    .line 37
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v0, v2

    .line 45
    :goto_2c
    return v0
.end method

.method public getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_13

    .line 12
    move-object v3, p1

    .line 13
    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 15
    iget-object v3, v3, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 17
    if-nez v3, :cond_13

    .line 19
    return v2

    .line 20
    :cond_13
    if-eqz v0, :cond_2a

    .line 22
    move-object v3, p1

    .line 23
    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;

    .line 25
    iget-object v3, v3, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 27
    if-nez v3, :cond_1d

    .line 29
    goto :goto_2a

    .line 30
    :cond_1d
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2a

    .line 36
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->isSubsetOf(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2a

    .line 42
    move v1, v2

    .line 43
    :cond_2a
    :goto_2a
    return v1
.end method

.method public setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 6
    return-void
.end method
