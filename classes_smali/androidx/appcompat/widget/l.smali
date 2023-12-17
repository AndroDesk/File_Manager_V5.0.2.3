.class public final Landroidx/appcompat/widget/l;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Landroidx/appcompat/widget/w0;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/l;->c:I

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-static {v0}, Landroidx/appcompat/widget/e0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_b
    if-eqz v0, :cond_1a

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 16
    if-eqz v1, :cond_1a

    .line 18
    iget-object v2, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    .line 27
    :cond_1a
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget-object v3, Lh/j;->AppCompatImageView:[I

    .line 9
    invoke-static {v0, p1, v3, p2}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

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
    iget-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p1

    .line 32
    const/4 p2, -0x1

    .line 33
    if-nez p1, :cond_3b

    .line 35
    sget v1, Lh/j;->AppCompatImageView_srcCompat:I

    .line 37
    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 40
    move-result v1

    .line 41
    if-eq v1, p2, :cond_3b

    .line 43
    iget-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1, v1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3b

    .line 55
    iget-object v1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_3b
    if-eqz p1, :cond_40

    .line 62
    invoke-static {p1}, Landroidx/appcompat/widget/e0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_40
    sget p1, Lh/j;->AppCompatImageView_tint:I

    .line 67
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_51

    .line 73
    iget-object v1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {v1, p1}, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 82
    :cond_51
    sget p1, Lh/j;->AppCompatImageView_tintMode:I

    .line 84
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_67

    .line 90
    iget-object v1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 95
    move-result p1

    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-static {p1, p2}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 100
    move-result-object p1

    .line 101
    invoke-static {v1, p1}, Landroidx/core/widget/e;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_67
    .catchall {:try_start_19 .. :try_end_67} :catchall_6b

    .line 104
    :cond_67
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    .line 107
    return-void

    .line 108
    :catchall_6b
    move-exception p1

    .line 109
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    .line 112
    throw p1
.end method

.method public final c(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_17

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_11

    .line 15
    invoke-static {p1}, Landroidx/appcompat/widget/e0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    iget-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :goto_1d
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->a()V

    .line 33
    return-void
.end method
