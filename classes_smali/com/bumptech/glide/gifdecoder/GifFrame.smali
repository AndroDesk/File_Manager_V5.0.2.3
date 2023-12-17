.class Lcom/bumptech/glide/gifdecoder/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# static fields
.field public static final DISPOSAL_BACKGROUND:I

.field public static final DISPOSAL_NONE:I

.field public static final DISPOSAL_PREVIOUS:I

.field public static final DISPOSAL_UNSPECIFIED:I


# instance fields
.field public bufferFrameStart:I

.field public delay:I

.field public dispose:I

.field public ih:I

.field public interlace:Z

.field public iw:I

.field public ix:I

.field public iy:I

.field public lct:[I

.field public transIndex:I

.field public transparency:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->DISPOSAL_BACKGROUND:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->DISPOSAL_NONE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->DISPOSAL_PREVIOUS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
