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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/widget/f;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/f;->d:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/f;->e:Z

    iput-object p1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->d:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->e:Z

    if-eqz v1, :cond_3a

    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroidx/appcompat/widget/f;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1d
    iget-boolean v1, p0, Landroidx/appcompat/widget/f;->e:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroidx/appcompat/widget/f;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_35
    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3a
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lh/j;->CompoundButton:[I

    invoke-static {v0, p1, v3, p2}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v0, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    :try_start_19
    sget p1, Lh/j;->CompoundButton_buttonCompat:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_37

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_81

    if-eqz p1, :cond_37

    :try_start_28
    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_35} :catch_37
    .catchall {:try_start_28 .. :try_end_35} :catchall_81

    const/4 p1, 0x1

    goto :goto_38

    :catch_37
    :cond_37
    move p1, v1

    :goto_38
    if-nez p1, :cond_55

    :try_start_3a
    sget p1, Lh/j;->CompoundButton_android_button:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p1

    if-eqz p1, :cond_55

    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_55
    sget p1, Lh/j;->CompoundButton_buttonTint:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/widget/b;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_66
    sget p1, Lh/j;->CompoundButton_buttonTintMode:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_7d

    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/widget/CompoundButton;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/widget/b;->d(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_7d
    .catchall {:try_start_3a .. :try_end_7d} :catchall_81

    :cond_7d
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    return-void

    :catchall_81
    move-exception p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    throw p1
.end method
