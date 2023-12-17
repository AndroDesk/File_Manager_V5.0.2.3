.class public Lmiuix/androidbasewidget/widget/ClearableEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;,
        Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I


# instance fields
.field private mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressed:Z

.field private mShown:Z

.field private mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;


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
    const v2, 0x10100a9

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/androidbasewidget/R$attr;->clearableEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    .line 6
    aget-object p1, p1, p2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    new-instance p2, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    invoke-direct {p2, p0, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;Landroid/view/View;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 9
    invoke-static {p0, p2}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    const/16 p2, 0x1d

    const/4 p3, 0x0

    if-lt p1, p2, :cond_27

    .line 10
    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setForceDarkAllowed(Z)V

    .line 11
    :cond_27
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 12
    iget-boolean p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_37

    move p3, v0

    :cond_37
    if-eq p2, p3, :cond_41

    .line 13
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_41
    return-void
.end method

.method public static synthetic access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lmiuix/androidbasewidget/widget/ClearableEditText;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/androidbasewidget/widget/ClearableEditText;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onClearButtonClick()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 3
    return-object p0
.end method

.method private dispatchWidgetTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_40

    .line 6
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    if-nez v0, :cond_b

    .line 10
    move v0, v1

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    move-result v0

    .line 16
    :goto_f
    invoke-static {p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_28

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    move-result v3

    .line 30
    add-int/2addr v3, v0

    .line 31
    int-to-float v0, v3

    .line 32
    cmpg-float v0, v2, v0

    .line 34
    if-gez v0, :cond_40

    .line 36
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 44
    move-result v2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 48
    move-result v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    move-result v4

    .line 53
    sub-int/2addr v3, v4

    .line 54
    sub-int/2addr v3, v0

    .line 55
    int-to-float v0, v3

    .line 56
    cmpl-float v0, v2, v0

    .line 58
    if-lez v0, :cond_40

    .line 60
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_40
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 67
    return v1
.end method

.method private onButtonTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_25

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p1, v0, :cond_15

    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_e

    .line 14
    goto :goto_31

    .line 15
    :cond_e
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 17
    if-eqz p1, :cond_31

    .line 19
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 21
    goto :goto_31

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_31

    .line 28
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 30
    if-eqz p1, :cond_31

    .line 32
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onClearButtonClick()V

    .line 35
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 37
    return v0

    .line 38
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_31

    .line 44
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 46
    if-eqz p1, :cond_31

    .line 48
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 50
    :cond_31
    :goto_31
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 52
    return p1
.end method

.method private onClearButtonClick()V
    .registers 3

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 8
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 10
    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 13
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 7
    if-eqz v1, :cond_10

    .line 9
    invoke-virtual {v0, p1}, Lr0/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->dispatchWidgetTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 17
    :goto_10
    return p1
.end method

.method public drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/h;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_13

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    :cond_13
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11
    :cond_a
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 9
    if-nez v0, :cond_f

    .line 11
    sget-object v0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    .line 13
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 16
    :cond_f
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->getText()Landroid/text/Editable;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1f

    .line 10
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-lez p1, :cond_14

    .line 19
    move p1, v1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    if-eq v0, p1, :cond_1f

    .line 24
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 26
    xor-int/2addr p1, v1

    .line 27
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 32
    :cond_1f
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    if-nez p1, :cond_c

    .line 3
    if-nez p2, :cond_c

    .line 5
    if-nez p3, :cond_c

    .line 7
    if-nez p4, :cond_c

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string p2, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    iput-object p3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    if-ne p1, v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method
