.class public Landroidx/appcompat/widget/AppCompatButton;
.super Landroid/widget/Button;
.source "AppCompatButton.java"


# instance fields
.field private mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/d;

.field private final mTextHelper:Landroidx/appcompat/widget/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->f(Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/j;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/j;

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j;-><init>(Landroid/widget/TextView;)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/j;

    .line 14
    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->b()V

    .line 18
    :cond_11
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 16
    iget v0, v0, Landroidx/appcompat/widget/z;->e:F

    .line 18
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 16
    iget v0, v0, Landroidx/appcompat/widget/z;->d:F

    .line 18
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 16
    iget v0, v0, Landroidx/appcompat/widget/z;->c:F

    .line 18
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/z;->f:[I

    .line 18
    return-object v0

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [I

    .line 22
    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 6
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_d

    .line 13
    move v1, v2

    .line 14
    :cond_d
    return v1

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 17
    if-eqz v0, :cond_17

    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 21
    iget v0, v0, Landroidx/appcompat/widget/z;->a:I

    .line 23
    return v0

    .line 24
    :cond_17
    return v1
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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

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
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/j;->b()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-class v0, Landroid/widget/Button;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const-class v0, Landroid/widget/Button;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_10

    .line 8
    sget-boolean p2, Landroidx/appcompat/widget/h1;->b:Z

    .line 10
    if-nez p2, :cond_10

    .line 12
    iget-object p1, p1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->a()V

    .line 17
    :cond_10
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    const/4 p2, 0x1

    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p1, :cond_1f

    .line 10
    sget-boolean p4, Landroidx/appcompat/widget/h1;->b:Z

    .line 12
    if-nez p4, :cond_1f

    .line 14
    iget-object p1, p1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->i()Z

    .line 19
    move-result p4

    .line 20
    if-eqz p4, :cond_1b

    .line 22
    iget p1, p1, Landroidx/appcompat/widget/z;->a:I

    .line 24
    if-eqz p1, :cond_1b

    .line 26
    move p1, p2

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move p1, p3

    .line 29
    :goto_1c
    if-eqz p1, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move p2, p3

    .line 33
    :goto_20
    if-eqz p2, :cond_29

    .line 35
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 37
    iget-object p1, p1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 39
    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->a()V

    .line 42
    :cond_29
    return-void
.end method

.method public setAllCaps(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->d(Z)V

    .line 11
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/v;->i(IIII)V

    .line 16
    :cond_f
    :goto_f
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->j([II)V

    .line 16
    :cond_f
    :goto_f
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->k(I)V

    .line 16
    :cond_f
    :goto_f
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

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

.method public setEmojiCompatEnabled(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

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
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

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

.method public setSupportAllCaps(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->l(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->m(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->g(Landroid/content/Context;I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    goto :goto_24

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 11
    if-eqz v1, :cond_24

    .line 13
    if-nez v0, :cond_24

    .line 15
    iget-object v0, v1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1c

    .line 23
    iget v0, v0, Landroidx/appcompat/widget/z;->a:I

    .line 25
    if-eqz v0, :cond_1c

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    if-nez v0, :cond_24

    .line 32
    iget-object v0, v1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 34
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/z;->f(FI)V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method
