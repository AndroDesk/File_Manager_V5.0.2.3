.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MdhdBox.java"


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
.field private samplingRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->CREATED_DATE_LONG_LENGTH:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->CREATED_DATE_LONG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->CREATED_DATE_SHORT_LENGTH:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->CREATED_DATE_SHORT_POS:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->DURATION_LONG_LENGTH:I

    const v0, 0x92d8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->DURATION_LONG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->DURATION_SHORT_LENGTH:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->DURATION_SHORT_POS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->LONG_FORMAT:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->MODIFIED_DATE_LONG_LENGTH:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->MODIFIED_DATE_LONG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->MODIFIED_DATE_SHORT_LENGTH:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->MODIFIED_DATE_SHORT_POS:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->OTHER_FLAG_LENGTH:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->OTHER_FLAG_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->TIMESCALE_LENGTH:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->TIMESCALE_LONG_POS:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->TIMESCALE_SHORT_POS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->VERSION_FLAG_LENGTH:I

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

    if-ne p1, v0, :cond_1f

    const/16 p1, 0x14

    const/16 v0, 0x17

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    const/16 p1, 0x18

    const/16 v0, 0x1f

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    goto :goto_30

    :cond_1f
    const/16 p1, 0xc

    const/16 v0, 0xf

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    const/16 p1, 0x10

    const/16 v0, 0x13

    invoke-static {p2, p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    :goto_30
    return-void
.end method


# virtual methods
.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    return v0
.end method
