.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4StsdBox.java"


# static fields
.field public static final NO_OF_DESCRIPTIONS_POS:I

.field public static final NO_OF_DESCRIPTIONS_POS_LENGTH:I

.field public static final OTHER_FLAG_LENGTH:I

.field public static final OTHER_FLAG_POS:I

.field public static final VERSION_FLAG_LENGTH:I

.field public static final VERSION_FLAG_POS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->NO_OF_DESCRIPTIONS_POS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->NO_OF_DESCRIPTIONS_POS_LENGTH:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->OTHER_FLAG_LENGTH:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->OTHER_FLAG_POS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->VERSION_FLAG_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    iput-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public processData()V
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
