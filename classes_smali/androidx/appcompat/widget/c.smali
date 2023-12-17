.class public Landroidx/appcompat/widget/c;
.super Landroid/widget/AutoCompleteTextView;
.source "AppCompatAutoCompleteTextView.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/d;

.field private final mTextHelper:Landroidx/appcompat/widget/v;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x1010176

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Landroidx/appcompat/widget/c;->TINT_ATTRS:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/widget/c;->TINT_ATTRS:[I

    invoke-static {p1, p2, v0, p3}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 7
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_25
    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->n()V

    .line 9
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 10
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 11
    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 12
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->f(Landroid/util/AttributeSet;I)V

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 14
    new-instance p1, Landroidx/appcompat/widget/i;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/i;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 15
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/i;->b(Landroid/util/AttributeSet;I)V

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c;->initEmojiKeyListener(Landroidx/appcompat/widget/i;)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->b()V

    .line 18
    :cond_11
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/widget/k;->d(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->e()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public initEmojiKeyListener(Landroidx/appcompat/widget/i;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v1, v0, Landroid/text/method/NumberKeyListener;

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 12
    if-eqz v1, :cond_33

    .line 14
    invoke-super {p0}, Landroid/view/View;->isFocusable()Z

    .line 17
    move-result v1

    .line 18
    invoke-super {p0}, Landroid/view/View;->isClickable()Z

    .line 21
    move-result v2

    .line 22
    invoke-super {p0}, Landroid/view/View;->isLongClickable()Z

    .line 25
    move-result v3

    .line 26
    invoke-super {p0}, Landroid/widget/TextView;->getInputType()I

    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    .line 33
    move-result-object p1

    .line 34
    if-ne p1, v0, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 40
    invoke-super {p0, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 43
    invoke-super {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 46
    invoke-super {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 49
    invoke-super {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 52
    :cond_33
    return-void
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    .line 5
    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    .line 7
    iget-object v0, v0, Lu0/a$a;->b:Lu0/g;

    .line 9
    iget-boolean v0, v0, Lu0/g;->d:Z

    .line 11
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, La/b;->S(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/c;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 10
    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/widget/i;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object p1, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    :cond_a
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroidx/core/widget/k;->e(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 8
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->d(Z)V

    .line 6
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    .line 6
    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 10
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->l(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->m(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->g(Landroid/content/Context;I)V

    .line 11
    :cond_a
    return-void
.end method
