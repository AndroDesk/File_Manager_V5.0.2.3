.class Lmiuix/graphics/gif/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/gif/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 6
    iput p2, p0, Lmiuix/graphics/gif/GifDecoder$GifFrame;->delay:I

    .line 8
    return-void
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_f

    .line 11
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    :cond_f
    return-void
.end method
