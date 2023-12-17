.class Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
.super Ljava/lang/Object;
.source "AbstractID3v2Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodingFlags"
.end annotation


# static fields
.field public static final TYPE_FLAGS:Ljava/lang/String; = "encodingFlags"


# instance fields
.field public flags:B

.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->resetFlags()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;B)V
    .registers 3

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->setFlags(B)V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .registers 1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    .line 16
    move-result v0

    .line 17
    int-to-long v0, v0

    .line 18
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    .line 21
    move-result p1

    .line 22
    int-to-long v2, p1

    .line 23
    invoke-static {v0, v1, v2, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public getFlags()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    return v0
.end method

.method public resetFlags()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->setFlags(B)V

    .line 5
    return-void
.end method

.method public setFlags(B)V
    .registers 2

    .line 1
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    return-void
.end method
