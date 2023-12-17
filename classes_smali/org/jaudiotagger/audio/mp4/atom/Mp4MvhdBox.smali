.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MvhdBox.java"


# static fields
.field public static final CREATED_DATE_LONG_LENGTH:I = 0x8

.field public static final CREATED_DATE_LONG_POS:I = 0x4

.field public static final CREATED_DATE_SHORT_LENGTH:I = 0x4

.field public static final CREATED_DATE_SHORT_POS:I = 0x4

.field public static final DURATION_LONG_LENGTH:I = 0x8

.field public static final DURATION_LONG_POS:I = 0x18

.field public static final DURATION_SHORT_LENGTH:I = 0x4

.field public static final DURATION_SHORT_POS:I = 0x10

.field private static final LONG_FORMAT:I = 0x1

.field public static final MODIFIED_DATE_LONG_LENGTH:I = 0x8

.field public static final MODIFIED_DATE_LONG_POS:I = 0xc

.field public static final MODIFIED_DATE_SHORT_LENGTH:I = 0x4

.field public static final MODIFIED_DATE_SHORT_POS:I = 0x8

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final TIMESCALE_LENGTH:I = 0x4

.field public static final TIMESCALE_LONG_POS:I = 0x14

.field public static final TIMESCALE_SHORT_POS:I = 0xc

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private timeLength:J

.field private timeScale:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_22

    .line 14
    const/16 p1, 0x14

    .line 16
    const/16 v0, 0x17

    .line 18
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    .line 24
    const/16 p1, 0x18

    .line 26
    const/16 v0, 0x1f

    .line 28
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    .line 34
    goto :goto_37

    .line 35
    :cond_22
    const/16 p1, 0xc

    .line 37
    const/16 v0, 0xf

    .line 39
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    .line 45
    const/16 p1, 0x10

    .line 47
    const/16 v0, 0x13

    .line 49
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 52
    move-result p1

    .line 53
    int-to-long p1, p1

    .line 54
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    .line 56
    :goto_37
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    .line 3
    iget v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    .line 5
    int-to-long v2, v2

    .line 6
    div-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    return v0
.end method
