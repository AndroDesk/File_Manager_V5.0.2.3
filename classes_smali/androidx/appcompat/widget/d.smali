.class public final Landroidx/appcompat/widget/d;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/appcompat/widget/g;

.field public c:I

.field public d:Landroidx/appcompat/widget/w0;

.field public e:Landroidx/appcompat/widget/w0;

.field public f:Landroidx/appcompat/widget/w0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/d;->c:I

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 9
    invoke-static {}, Landroidx/appcompat/widget/g;->a()Landroidx/appcompat/widget/g;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/g;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_75

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_10

    .line 15
    move v1, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v1, v3

    .line 18
    :goto_11
    if-eqz v1, :cond_5a

    .line 20
    iget-object v1, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/w0;

    .line 22
    if-nez v1, :cond_1e

    .line 24
    new-instance v1, Landroidx/appcompat/widget/w0;

    .line 26
    invoke-direct {v1}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 29
    iput-object v1, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/w0;

    .line 31
    :cond_1e
    iget-object v1, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/w0;

    .line 33
    const/4 v4, 0x0

    .line 34
    iput-object v4, v1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 36
    iput-boolean v3, v1, Landroidx/appcompat/widget/w0;->d:Z

    .line 38
    iput-object v4, v1, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 40
    iput-boolean v3, v1, Landroidx/appcompat/widget/w0;->c:Z

    .line 42
    iget-object v4, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 44
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 46
    invoke-static {v4}, Lm0/g0$i;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_37

    .line 52
    iput-boolean v2, v1, Landroidx/appcompat/widget/w0;->d:Z

    .line 54
    iput-object v4, v1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 56
    :cond_37
    iget-object v4, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 58
    invoke-static {v4}, Lm0/g0$i;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_43

    .line 64
    iput-boolean v2, v1, Landroidx/appcompat/widget/w0;->c:Z

    .line 66
    iput-object v4, v1, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 68
    :cond_43
    iget-boolean v4, v1, Landroidx/appcompat/widget/w0;->d:Z

    .line 70
    if-nez v4, :cond_4e

    .line 72
    iget-boolean v4, v1, Landroidx/appcompat/widget/w0;->c:Z

    .line 74
    if-eqz v4, :cond_4c

    .line 76
    goto :goto_4e

    .line 77
    :cond_4c
    move v2, v3

    .line 78
    goto :goto_57

    .line 79
    :cond_4e
    :goto_4e
    iget-object v3, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    .line 88
    :goto_57
    if-eqz v2, :cond_5a

    .line 90
    return-void

    .line 91
    :cond_5a
    iget-object v1, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 93
    if-eqz v1, :cond_68

    .line 95
    iget-object v2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 100
    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    .line 104
    goto :goto_75

    .line 105
    :cond_68
    iget-object v1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    .line 107
    if-eqz v1, :cond_75

    .line 109
    iget-object v2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 114
    move-result-object v2

    .line 115
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    .line 118
    :cond_75
    :goto_75
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget-object v3, Lh/j;->ViewBackgroundHelper:[I

    .line 9
    invoke-static {v0, p1, v3, p2}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    iget-object v5, v0, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    .line 21
    move-object v4, p1

    .line 22
    move v6, p2

    .line 23
    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 26
    :try_start_19
    sget p1, Lh/j;->ViewBackgroundHelper_android_background:I

    .line 28
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 31
    move-result p2

    .line 32
    const/4 v1, -0x1

    .line 33
    if-eqz p2, :cond_43

    .line 35
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 38
    move-result p1

    .line 39
    iput p1, p0, Landroidx/appcompat/widget/d;->c:I

    .line 41
    iget-object p1, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/g;

    .line 43
    iget-object p2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    iget v2, p0, Landroidx/appcompat/widget/d;->c:I

    .line 51
    monitor-enter p1
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_6e

    .line 52
    :try_start_33
    iget-object v3, p1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 54
    invoke-virtual {v3, p2, v2}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 57
    move-result-object p2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_40

    .line 58
    :try_start_39
    monitor-exit p1

    .line 59
    if-eqz p2, :cond_43

    .line 61
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/d;->g(Landroid/content/res/ColorStateList;)V

    .line 64
    goto :goto_43

    .line 65
    :catchall_40
    move-exception p2

    .line 66
    monitor-exit p1

    .line 67
    throw p2

    .line 68
    :cond_43
    :goto_43
    sget p1, Lh/j;->ViewBackgroundHelper_backgroundTint:I

    .line 70
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_54

    .line 76
    iget-object p2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 78
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p2, p1}, Lm0/g0$i;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 85
    :cond_54
    sget p1, Lh/j;->ViewBackgroundHelper_backgroundTintMode:I

    .line 87
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_6a

    .line 93
    iget-object p2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 95
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 98
    move-result p1

    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-static {p1, v1}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {p2, p1}, Lm0/g0$i;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_6a
    .catchall {:try_start_39 .. :try_end_6a} :catchall_6e

    .line 107
    :cond_6a
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    .line 110
    return-void

    .line 111
    :catchall_6e
    move-exception p1

    .line 112
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    .line 115
    throw p1
.end method

.method public final e()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/d;->c:I

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/d;->g(Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    return-void
.end method

.method public final f(I)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/d;->c:I

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/g;

    .line 5
    if-eqz v0, :cond_18

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    iget-object v2, v0, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 16
    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 19
    move-result-object p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_19

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    monitor-exit v0

    .line 24
    throw p1

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    :goto_19
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->g(Landroid/content/res/ColorStateList;)V

    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    .line 32
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_15

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    .line 5
    if-nez v0, :cond_d

    .line 7
    new-instance v0, Landroidx/appcompat/widget/w0;

    .line 9
    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 12
    iput-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    .line 16
    iput-object p1, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->d:Z

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    .line 25
    :goto_18
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    .line 28
    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/w0;

    .line 7
    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->d:Z

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    .line 22
    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/w0;

    .line 7
    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->c:Z

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    .line 22
    return-void
.end method
