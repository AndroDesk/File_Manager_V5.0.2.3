.class public Landroidx/appcompat/widget/AppCompatCheckBox;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"


# instance fields
.field private mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/d;

.field private final mCompoundButtonHelper:Landroidx/appcompat/widget/f;

.field private final mTextHelper:Landroidx/appcompat/widget/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    new-instance p1, Landroidx/appcompat/widget/f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/f;

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/f;->b(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 10
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->f(Landroid/util/AttributeSet;I)V

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/j;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/j;

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j;-><init>(Landroid/widget/TextView;)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

    .line 14
    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->b()V

    .line 18
    :cond_11
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/f;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :cond_b
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/f;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/f;->b:Landroid/content/res/ColorStateList;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/f;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/f;->c:Landroid/graphics/PorterDuff$Mode;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->e()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/j;->b()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setAllCaps(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

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
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setButtonDrawable(I)V
    .registers 3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/f;

    if-eqz p1, :cond_15

    .line 3
    iget-boolean v0, p1, Landroidx/appcompat/widget/f;->f:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Landroidx/appcompat/widget/f;->f:Z

    goto :goto_15

    :cond_f
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Landroidx/appcompat/widget/f;->f:Z

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/widget/f;->a()V

    :cond_15
    :goto_15
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    :cond_a
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

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
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

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
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/f;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iput-object p1, v0, Landroidx/appcompat/widget/f;->b:Landroid/content/res/ColorStateList;

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/widget/f;->d:Z

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->a()V

    .line 13
    :cond_c
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/f;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iput-object p1, v0, Landroidx/appcompat/widget/f;->c:Landroid/graphics/PorterDuff$Mode;

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/widget/f;->e:Z

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->a()V

    .line 13
    :cond_c
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->l(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->m(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method
