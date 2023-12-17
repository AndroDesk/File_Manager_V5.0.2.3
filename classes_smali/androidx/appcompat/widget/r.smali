.class public Landroidx/appcompat/widget/r;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private final mAppCompatSeekBarHelper:Landroidx/appcompat/widget/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    new-instance p1, Landroidx/appcompat/widget/s;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/s;-><init>(Landroid/widget/SeekBar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/s;

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/s;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/r;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/s;

    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz v1, :cond_20

    .line 10
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_20

    .line 16
    iget-object v2, v0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_20

    .line 28
    iget-object v0, v0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_20
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/r;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/s;

    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 13
    :cond_c
    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/r;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/s;

    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/s;->d(Landroid/graphics/Canvas;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method
