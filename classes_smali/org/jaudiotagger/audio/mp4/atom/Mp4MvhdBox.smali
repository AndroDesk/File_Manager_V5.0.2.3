.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MvhdBox.java"


# static fields
.field public static final CREATED_DATE_LONG_LENGTH:I

.field public static final CREATED_DATE_LONG_POS:I

.field public static final CREATED_DATE_SHORT_LENGTH:I

.field public static final CREATED_DATE_SHORT_POS:I

.field public static final DURATION_LONG_LENGTH:I

.field public static final DURATION_LONG_POS:I

.field public static final DURATION_SHORT_LENGTH:I

.field public static final DURATION_SHORT_POS:I

.field private static final LONG_FORMAT:I

.field public static final MODIFIED_DATE_LONG_LENGTH:I

.field public static final MODIFIED_DATE_LONG_POS:I

.field public static final MODIFIED_DATE_SHORT_LENGTH:I

.field public static final MODIFIED_DATE_SHORT_POS:I

.field public static final OTHER_FLAG_LENGTH:I

.field public static final OTHER_FLAG_POS:I

.field public static final TIMESCALE_LENGTH:I

.field public static final TIMESCALE_LONG_POS:I

.field public static final TIMESCALE_SHORT_POS:I

.field public static final VERSION_FLAG_LENGTH:I

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private timeLength:J

.field private timeScale:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->CREATED_DATE_LONG_LENGTH:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->CREATED_DATE_LONG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->CREATED_DATE_SHORT_LENGTH:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->CREATED_DATE_SHORT_POS:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->DURATION_LONG_LENGTH:I

    const v0, 0x92d8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->DURATION_LONG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->DURATION_SHORT_LENGTH:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->DURATION_SHORT_POS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->LONG_FORMAT:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->MODIFIED_DATE_LONG_LENGTH:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->MODIFIED_DATE_LONG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->MODIFIED_DATE_SHORT_LENGTH:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->MODIFIED_DATE_SHORT_POS:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->OTHER_FLAG_LENGTH:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->OTHER_FLAG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->TIMESCALE_LENGTH:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->TIMESCALE_LONG_POS:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->TIMESCALE_SHORT_POS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->VERSION_FLAG_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    const/16 p1, 0x14

    const/16 v0, 0x17

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    const/16 p1, 0x18

    const/16 v0, 0x1f

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    goto :goto_37

    :cond_22
    const/16 p1, 0xc

    const/16 v0, 0xf

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    const/16 p1, 0x10

    const/16 v0, 0x13

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    :goto_37
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 5

    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    iget v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
