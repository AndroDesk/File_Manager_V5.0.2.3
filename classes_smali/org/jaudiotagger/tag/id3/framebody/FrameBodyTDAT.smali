.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTDAT.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;


# instance fields
.field private monthOnly:Z


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

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "TDAT"

    return-object v0
.end method

.method public isMonthOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->monthOnly:Z

    .line 3
    return v0
.end method

.method public setMonthOnly(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->monthOnly:Z

    .line 3
    return-void
.end method
