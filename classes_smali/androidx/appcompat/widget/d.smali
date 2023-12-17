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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/d;->c:I

    iput-object p1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-static {}, Landroidx/appcompat/widget/g;->a()Landroidx/appcompat/widget/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/w0;

    if-nez v1, :cond_1e

    new-instance v1, Landroidx/appcompat/widget/w0;

    invoke-direct {v1}, Landroidx/appcompat/widget/w0;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/w0;

    :cond_1e
    iget-object v1, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/w0;

    const/4 v4, 0x0

    iput-object v4, v1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    iput-boolean v3, v1, Landroidx/appcompat/widget/w0;->d:Z

    iput-object v4, v1, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, v1, Landroidx/appcompat/widget/w0;->c:Z

    iget-object v4, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lm0/g0$i;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_37

    iput-boolean v2, v1, Landroidx/appcompat/widget/w0;->d:Z

    iput-object v4, v1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    :cond_37
    iget-object v4, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-static {v4}, Lm0/g0$i;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_43

    iput-boolean v2, v1, Landroidx/appcompat/widget/w0;->c:Z

    iput-object v4, v1, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_43
    iget-boolean v4, v1, Landroidx/appcompat/widget/w0;->d:Z

    if-nez v4, :cond_4e

    iget-boolean v4, v1, Landroidx/appcompat/widget/w0;->c:Z

    if-eqz v4, :cond_4c

    goto :goto_4e

    :cond_4c
    move v2, v3

    goto :goto_57

    :cond_4e
    :goto_4e
    iget-object v3, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    :goto_57
    if-eqz v2, :cond_5a

    return-void

    :cond_5a
    iget-object v1, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    if-eqz v1, :cond_68

    iget-object v2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    goto :goto_75

    :cond_68
    iget-object v1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    if-eqz v1, :cond_75

    iget-object v2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    :cond_75
    :goto_75
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lh/j;->ViewBackgroundHelper:[I

    invoke-static {v0, p1, v3, p2}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v0, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    :try_start_19
    sget p1, Lh/j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_43

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/d;->c:I

    iget-object p1, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/g;

    iget-object p2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Landroidx/appcompat/widget/d;->c:I

    monitor-enter p1
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_6e

    :try_start_33
    iget-object v3, p1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    invoke-virtual {v3, p2, v2}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_40

    :try_start_39
    monitor-exit p1

    if-eqz p2, :cond_43

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/d;->g(Landroid/content/res/ColorStateList;)V

    goto :goto_43

    :catchall_40
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_43
    :goto_43
    sget p1, Lh/j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_54

    iget-object p2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p2, p1}, Lm0/g0$i;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_54
    sget p1, Lh/j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_6a

    iget-object p2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p2, p1}, Lm0/g0$i;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_6a
    .catchall {:try_start_39 .. :try_end_6a} :catchall_6e

    :cond_6a
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    return-void

    :catchall_6e
    move-exception p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    throw p1
.end method

.method public final e()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/d;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/d;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    return-void
.end method

.method public final f(I)V
    .registers 5

    iput p1, p0, Landroidx/appcompat/widget/d;->c:I

    iget-object v0, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/g;

    if-eqz v0, :cond_18

    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_d
    iget-object v2, v0, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    monitor-exit v0

    goto :goto_19

    :catchall_15
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_d

    new-instance v0, Landroidx/appcompat/widget/w0;

    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    iput-object p1, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->d:Z

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/w0;

    :goto_18
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/w0;

    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    iput-object p1, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/w0;

    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/w0;

    iput-object p1, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    return-void
.end method
