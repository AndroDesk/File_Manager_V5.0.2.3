.class public final Lpl/droidsonroids/gif/b;
.super Lpl/droidsonroids/gif/g;
.source "GifDrawable.java"


# instance fields
.field public final synthetic b:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 3

    iput-object p1, p0, Lpl/droidsonroids/gif/b;->b:Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/g;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lpl/droidsonroids/gif/b;->b:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lpl/droidsonroids/gif/b;->b:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->start()V

    :cond_f
    return-void
.end method
