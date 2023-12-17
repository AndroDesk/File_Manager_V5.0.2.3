.class public Lorg/jaudiotagger/audio/mp4/atom/NullPadding;
.super Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
.source "NullPadding.java"


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 7
    sub-long/2addr p3, p1

    .line 8
    long-to-int p1, p3

    .line 9
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 11
    return-void
.end method
