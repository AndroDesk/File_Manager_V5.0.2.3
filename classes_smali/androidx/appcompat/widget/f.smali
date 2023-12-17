.class public final Landroidx/appcompat/widget/f;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# instance fields
.field public final a:Landroid/widget/CompoundButton;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroid/content/res/ColorStateList;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/f;->c:Landroid/graphics/PorterDuff$Mode;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/widget/f;->d:Z

    .line 12
    iput-boolean v0, p0, Landroidx/appcompat/widget/f;->e:Z

    .line 14
    iput-object p1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 3
    invoke-static {v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3a

    .line 9
    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->d:Z

    .line 11
    if-nez v1, :cond_10

    .line 13
    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->e:Z

    .line 15
    if-eqz v1, :cond_3a

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->d:Z

    .line 23
    if-eqz v1, :cond_1d

    .line 25
    iget-object v1, p0, Landroidx/appcompat/widget/f;->b:Landroid/content/res/ColorStateList;

    .line 27
    invoke-static {v0, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 30
    :cond_1d
    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->e:Z

    .line 32
    if-eqz v1, :cond_26

    .line 34
    iget-object v1, p0, Landroidx/appcompat/widget/f;->c:Landroid/graphics/PorterDuff$Mode;

    .line 36
    invoke-static {v0, v1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 39
    :cond_26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_35

    .line 45
    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 54
    :cond_35
    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_3a
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget-object v3, Lh/j;->CompoundButton:[I

    .line 9
    invoke-static {v0, p1, v3, p2}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

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
    sget p1, Lh/j;->CompoundButton_buttonCompat:I

    .line 28
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 31
    move-result p2

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p2, :cond_37

    .line 35
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 38
    move-result p1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_81

    .line 39
    if-eqz p1, :cond_37

    .line 41
    :try_start_28
    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_35} :catch_37
    .catchall {:try_start_28 .. :try_end_35} :catchall_81

    .line 54
    const/4 p1, 0x1

    .line 55
    goto :goto_38

    .line 56
    :catch_37
    :cond_37
    move p1, v1

    .line 57
    :goto_38
    if-nez p1, :cond_55

    .line 59
    :try_start_3a
    sget p1, Lh/j;->CompoundButton_android_button:I

    .line 61
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_55

    .line 67
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_55

    .line 73
    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_55
    sget p1, Lh/j;->CompoundButton_buttonTint:I

    .line 88
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_66

    .line 94
    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 96
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {p2, p1}, Landroidx/core/widget/b;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 103
    :cond_66
    sget p1, Lh/j;->CompoundButton_buttonTintMode:I

    .line 105
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_7d

    .line 111
    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    .line 113
    const/4 v1, -0x1

    .line 114
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 117
    move-result p1

    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-static {p1, v1}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 122
    move-result-object p1

    .line 123
    invoke-static {p2, p1}, Landroidx/core/widget/b;->d(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_7d
    .catchall {:try_start_3a .. :try_end_7d} :catchall_81

    .line 126
    :cond_7d
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    .line 129
    return-void

    .line 130
    :catchall_81
    move-exception p1

    .line 131
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    .line 134
    throw p1
.end method
