.class public final Landroidx/appcompat/widget/s;
.super Landroidx/appcompat/widget/o;
.source "AppCompatSeekBarHelper.java"


# instance fields
.field public final d:Landroid/widget/SeekBar;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/graphics/PorterDuff$Mode;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/o;-><init>(Landroid/widget/ProgressBar;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/s;->f:Landroid/content/res/ColorStateList;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/s;->g:Landroid/graphics/PorterDuff$Mode;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/widget/s;->h:Z

    .line 12
    iput-boolean v0, p0, Landroidx/appcompat/widget/s;->i:Z

    .line 14
    iput-object p1, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .registers 10

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/o;->a(Landroid/util/AttributeSet;I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    sget-object v3, Lh/j;->AppCompatSeekBar:[I

    .line 12
    invoke-static {v0, p1, v3, p2}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    iget-object v5, v0, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    .line 24
    move-object v4, p1

    .line 25
    move v6, p2

    .line 26
    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 29
    sget p1, Lh/j;->AppCompatSeekBar_android_thumb:I

    .line 31
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->f(I)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_29

    .line 37
    iget-object p2, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 39
    invoke-virtual {p2, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_29
    sget p1, Lh/j;->AppCompatSeekBar_tickMark:I

    .line 44
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 50
    if-eqz p2, :cond_37

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 56
    :cond_37
    iput-object p1, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 58
    if-eqz p1, :cond_5b

    .line 60
    iget-object p2, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 62
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    iget-object p2, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 67
    invoke-static {p2}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 70
    move-result p2

    .line 71
    invoke-static {p1, p2}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 74
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_58

    .line 80
    iget-object p2, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getDrawableState()[I

    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 89
    :cond_58
    invoke-virtual {p0}, Landroidx/appcompat/widget/s;->c()V

    .line 92
    :cond_5b
    iget-object p1, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 97
    sget p1, Lh/j;->AppCompatSeekBar_tickMarkTintMode:I

    .line 99
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 102
    move-result p2

    .line 103
    const/4 v1, 0x1

    .line 104
    if-eqz p2, :cond_78

    .line 106
    const/4 p2, -0x1

    .line 107
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 110
    move-result p1

    .line 111
    iget-object p2, p0, Landroidx/appcompat/widget/s;->g:Landroid/graphics/PorterDuff$Mode;

    .line 113
    invoke-static {p1, p2}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Landroidx/appcompat/widget/s;->g:Landroid/graphics/PorterDuff$Mode;

    .line 119
    iput-boolean v1, p0, Landroidx/appcompat/widget/s;->i:Z

    .line 121
    :cond_78
    sget p1, Lh/j;->AppCompatSeekBar_tickMarkTint:I

    .line 123
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_88

    .line 129
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p0, Landroidx/appcompat/widget/s;->f:Landroid/content/res/ColorStateList;

    .line 135
    iput-boolean v1, p0, Landroidx/appcompat/widget/s;->h:Z

    .line 137
    :cond_88
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    .line 140
    invoke-virtual {p0}, Landroidx/appcompat/widget/s;->c()V

    .line 143
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_39

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/s;->h:Z

    .line 7
    if-nez v1, :cond_c

    .line 9
    iget-boolean v1, p0, Landroidx/appcompat/widget/s;->i:Z

    .line 11
    if-eqz v1, :cond_39

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-boolean v1, p0, Landroidx/appcompat/widget/s;->h:Z

    .line 21
    if-eqz v1, :cond_1b

    .line 23
    iget-object v1, p0, Landroidx/appcompat/widget/s;->f:Landroid/content/res/ColorStateList;

    .line 25
    invoke-static {v0, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 28
    :cond_1b
    iget-boolean v0, p0, Landroidx/appcompat/widget/s;->i:Z

    .line 30
    if-eqz v0, :cond_26

    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 34
    iget-object v1, p0, Landroidx/appcompat/widget/s;->g:Landroid/graphics/PorterDuff$Mode;

    .line 36
    invoke-static {v0, v1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 39
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_39

    .line 47
    iget-object v0, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 49
    iget-object v1, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 58
    :cond_39
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_6a

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 7
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_6a

    .line 14
    iget-object v2, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 25
    move-result v3

    .line 26
    if-ltz v2, :cond_1e

    .line 28
    div-int/lit8 v2, v2, 0x2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v2, v1

    .line 32
    :goto_1f
    if-ltz v3, :cond_23

    .line 34
    div-int/lit8 v1, v3, 0x2

    .line 36
    :cond_23
    iget-object v3, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 38
    neg-int v4, v2

    .line 39
    neg-int v5, v1

    .line 40
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    iget-object v1, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 48
    move-result v1

    .line 49
    iget-object v2, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 54
    move-result v2

    .line 55
    sub-int/2addr v1, v2

    .line 56
    iget-object v2, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 61
    move-result v2

    .line 62
    sub-int/2addr v1, v2

    .line 63
    int-to-float v1, v1

    .line 64
    int-to-float v2, v0

    .line 65
    div-float/2addr v1, v2

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    move-result v2

    .line 70
    iget-object v3, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 75
    move-result v3

    .line 76
    int-to-float v3, v3

    .line 77
    iget-object v4, p0, Landroidx/appcompat/widget/s;->d:Landroid/widget/SeekBar;

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 82
    move-result v4

    .line 83
    div-int/lit8 v4, v4, 0x2

    .line 85
    int-to-float v4, v4

    .line 86
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    const/4 v3, 0x0

    .line 90
    :goto_59
    if-gt v3, v0, :cond_67

    .line 92
    iget-object v4, p0, Landroidx/appcompat/widget/s;->e:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 103
    goto :goto_59

    .line 104
    :cond_67
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 107
    :cond_6a
    return-void
.end method
