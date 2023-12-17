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

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a9

    aput v2, v0, v1

    sput-object v0, Lcom/android/fileexplorer/view/SearchEditText;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f040160

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lcom/android/fileexplorer/view/SearchEditText$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/SearchEditText$1;-><init>(Lcom/android/fileexplorer/view/SearchEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;-><init>(Lcom/android/fileexplorer/view/SearchEditText;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mAccessHelper:Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    invoke-static {p0, p1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/view/SearchEditText;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/SearchEditText;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mHasTag:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/SearchEditText;)Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mAccessHelper:Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/SearchEditText;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/view/SearchEditText;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private onButtonTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_23

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    goto :goto_2f

    :cond_d
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    if-eqz p1, :cond_2f

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    goto :goto_2f

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/SearchEditText;->onClearButtonClick()V

    goto :goto_2f

    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    if-eqz p1, :cond_2f

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mPressed:Z

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mAccessHelper:Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    if-eqz v1, :cond_10

    invoke-virtual {v0, p1}, Lr0/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_10
    invoke-static {p0}, Lcom/android/fileexplorer/view/SearchEditText;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    cmpg-float v0, v3, v0

    if-gez v0, :cond_39

    goto :goto_38

    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_39

    :goto_38
    move v1, v2

    :cond_39
    if-eqz v1, :cond_3f

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/SearchEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)V

    return v2

    :cond_3f
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/widget/h;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method public onClearButtonClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mCallBack:Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;->onClear()V

    :cond_7
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_1f

    :cond_1a
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_1f
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/fileexplorer/view/SearchEditText;->EMPTY_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_f
    return-object p1
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-nez p4, :cond_c

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iput-object p3, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEditTextClearCallback(Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mCallBack:Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;

    return-void
.end method

.method public setTagVisible(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mHasTag:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_24

    :cond_13
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/SearchEditText;->mShown:Z

    :cond_24
    :goto_24
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
