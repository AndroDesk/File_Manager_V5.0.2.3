.class public final Lpl/droidsonroids/gif/GifDrawable$a;
.super Lpl/droidsonroids/gif/g;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/GifDrawable;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable$a;->c:Lpl/droidsonroids/gif/GifDrawable;

    .line 3
    iput p3, p0, Lpl/droidsonroids/gif/GifDrawable$a;->b:I

    .line 5
    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/g;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$a;->c:Lpl/droidsonroids/gif/GifDrawable;

    .line 3
    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 5
    iget v2, p0, Lpl/droidsonroids/gif/GifDrawable$a;->b:I

    .line 7
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->f:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {v1, v0, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->s(Landroid/graphics/Bitmap;I)V

    .line 12
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 14
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 16
    const/4 v1, -0x1

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 22
    return-void
.end method
