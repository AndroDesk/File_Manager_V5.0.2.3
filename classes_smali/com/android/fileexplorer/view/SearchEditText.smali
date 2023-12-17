.class public Lcom/android/fileexplorer/view/SearchEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;,
        Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I


# instance fields
.field private mAccessHelper:Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

.field private mCallBack:Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasTag:Z

.field private mPressed:Z

.field private mShown:Z


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
    sput-object v0, Lcom/android/fileexplorer/view/SearchEditText;->EMPTY_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f040160

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    .line 5
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance p1, Lcom/android/fileexplorer/view/SearchEditText$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/SearchEditText$1;-><init>(Lcom/android/fileexplorer/view/SearchEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    new-instance p1, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;-><init>(Lcom/android/fileexplorer/view/SearchEditText;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mAccessHelper:Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    .line 8
    invoke-static {p0, p1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/view/SearchEditText;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/SearchEditText;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mHasTag:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/SearchEditText;)Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mAccessHelper:Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/SearchEditText;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/view/SearchEditText;->isLayoutRtl(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private onButtonTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_23

    .line 8
    if-eq p1, v0, :cond_15

    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_d

    .line 13
    goto :goto_2f

    .line 14
    :cond_d
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    .line 16
    if-eqz p1, :cond_2f

    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    .line 21
    goto :goto_2f

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2f

    .line 28
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    .line 30
    if-eqz p1, :cond_2f

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/SearchEditText;->onClearButtonClick()V

    .line 35
    goto :goto_2f

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2f

    .line 42
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    .line 44
    if-eqz p1, :cond_2f

    .line 46
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mAccessHelper:Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

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
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_39

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    if-nez v0, :cond_c

    .line 11
    move v0, v1

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    invoke-static {p0}, Lcom/android/fileexplorer/view/SearchEditText;->isLayoutRtl(Landroid/view/View;)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_25

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    move-result v4

    .line 31
    add-int/2addr v4, v0

    .line 32
    int-to-float v0, v4

    .line 33
    cmpg-float v0, v3, v0

    .line 35
    if-gez v0, :cond_39

    .line 37
    goto :goto_38

    .line 38
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v4

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    move-result v5

    .line 50
    sub-int/2addr v4, v5

    .line 51
    sub-int/2addr v4, v0

    .line 52
    int-to-float v0, v4

    .line 53
    cmpl-float v0, v3, v0

    .line 55
    if-lez v0, :cond_39

    .line 57
    :goto_38
    move v1, v2

    .line 58
    :cond_39
    if-eqz v1, :cond_3f

    .line 60
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/SearchEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)V

    .line 63
    return v2

    .line 64
    :cond_3f
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    move-result p1

    .line 68
    return p1
.end method

.method public drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/h;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_13

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11
    :cond_a
    return-void
.end method

.method public onClearButtonClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mCallBack:Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;->onClear()V

    .line 8
    :cond_7
    const-string v0, ""

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    const-string v0, "2.0"

    .line 15
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1a

    .line 21
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 23
    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 29
    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 32
    :goto_1f
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
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    .line 9
    if-nez v0, :cond_f

    .line 11
    sget-object v0, Lcom/android/fileexplorer/view/SearchEditText;->EMPTY_STATE_SET:[I

    .line 13
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 16
    :cond_f
    return-object p1
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
    iput-object p3, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setEditTextClearCallback(Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mCallBack:Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;

    .line 3
    return-void
.end method

.method public setTagVisible(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mHasTag:Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_13

    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 19
    goto :goto_24

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->getText()Landroid/text/Editable;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_24

    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    .line 37
    :cond_24
    :goto_24
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
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

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
