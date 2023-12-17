.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MdhdBox.java"


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
.field private samplingRate:I


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
    if-ne p1, v0, :cond_1f

    .line 14
    const/16 p1, 0x14

    .line 16
    const/16 v0, 0x17

    .line 18
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    .line 24
    const/16 p1, 0x18

    .line 26
    const/16 v0, 0x1f

    .line 28
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    .line 31
    goto :goto_30

    .line 32
    :cond_1f
    const/16 p1, 0xc

    .line 34
    const/16 v0, 0xf

    .line 36
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    .line 42
    const/16 p1, 0x10

    .line 44
    const/16 v0, 0x13

    .line 46
    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 49
    :goto_30
    return-void
.end method


# virtual methods
.method public getSampleRate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    .line 3
    return v0
.end method
