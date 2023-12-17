.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTORY;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTORY.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;


# static fields
.field private static final NUMBER_OF_DIGITS_IN_YEAR:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDOR;)V
    .registers 6

    .line 4
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "TextEncoding"

    invoke-virtual {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_24

    .line 8
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_24
    const-string p1, "Text"

    .line 9
    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTORY;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "TORY"

    return-object v0
.end method
