.class public final Lpl/droidsonroids/gif/b;
.super Lpl/droidsonroids/gif/g;
.source "GifDrawable.java"


# instance fields
.field public final synthetic b:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->b:Lpl/droidsonroids/gif/GifDrawable;

    .line 3
    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/g;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->b:Lpl/droidsonroids/gif/GifDrawable;

    .line 3
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->p()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->b:Lpl/droidsonroids/gif/GifDrawable;

    .line 13
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->start()V

    .line 16
    :cond_f
    return-void
.end method
