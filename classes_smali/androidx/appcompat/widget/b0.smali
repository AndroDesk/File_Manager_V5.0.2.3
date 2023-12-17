.class public final Landroidx/appcompat/widget/b0;
.super Landroid/widget/ToggleButton;
.source "AppCompatToggleButton.java"


# instance fields
.field public final a:Landroidx/appcompat/widget/d;

.field public final b:Landroidx/appcompat/widget/v;

.field public c:Landroidx/appcompat/widget/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    const v0, 0x101004b

    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 14
    new-instance p1, Landroidx/appcompat/widget/d;

    .line 16
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    .line 19
    iput-object p1, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 21
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Landroidx/appcompat/widget/v;

    .line 26
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    .line 29
    iput-object p1, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 31
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/v;->f(Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/j;->c(Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->c:Landroidx/appcompat/widget/j;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/j;

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j;-><init>(Landroid/widget/TextView;)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/b0;->c:Landroidx/appcompat/widget/j;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->c:Landroidx/appcompat/widget/j;

    .line 14
    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->b()V

    .line 18
    :cond_11
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->d()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->e()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setAllCaps(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->d(Z)V

    .line 11
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/d;->e()V

    .line 11
    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    :cond_a
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    :cond_a
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->e(Z)V

    .line 8
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 8
    move-result-object p1

    .line 9
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 12
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->h(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->l(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->m(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->b:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method
