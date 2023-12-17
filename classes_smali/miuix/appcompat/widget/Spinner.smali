.class public Lmiuix/appcompat/widget/Spinner;
.super Landroid/widget/Spinner;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;,
        Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;,
        Lmiuix/appcompat/widget/Spinner$DropdownPopup;,
        Lmiuix/appcompat/widget/Spinner$DialogPopup;,
        Lmiuix/appcompat/widget/Spinner$SpinnerPopup;,
        Lmiuix/appcompat/widget/Spinner$DropDownAdapter;,
        Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;,
        Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;,
        Lmiuix/appcompat/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static FORWARDING_LISTENER:Ljava/lang/reflect/Field; = null

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MAX_ITEMS_SHOWN:I = 0x8

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field public mDropDownMaxWidth:I

.field public mDropDownMinWidth:I

.field public mDropDownWidth:I

.field private mFolmeAnim:Lmiuix/animation/IFolme;

.field private mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

.field private mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mPressAnimAdded:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field public final mTempRect:Landroid/graphics/Rect;

.field private mXRelative:F

.field private mYRelative:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    .line 3
    const-string v1, "mForwardingListener"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_e} :catch_f

    .line 15
    goto :goto_17

    .line 16
    :catch_f
    move-exception v0

    .line 17
    const-string v1, "Spinner"

    .line 19
    const-string v2, "static initializer: "

    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 2
    sget v0, Lmiuix/appcompat/R$attr;->miuiSpinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 3
    sget v0, Lmiuix/appcompat/R$attr;->miuiSpinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .registers 11

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/widget/Spinner;->mPressAnimAdded:Z

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 9
    sget-object v1, Lmiuix/appcompat/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz p5, :cond_1d

    .line 10
    new-instance v3, Lm/c;

    invoke-direct {v3, p1, p5}, Lm/c;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v3, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_2f

    .line 11
    :cond_1d
    sget p5, Lmiuix/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v2, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    if-eqz p5, :cond_2d

    .line 12
    new-instance v3, Lm/c;

    invoke-direct {v3, p1, p5}, Lm/c;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_2f

    .line 13
    :cond_2d
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    :goto_2f
    const/4 p5, -0x1

    if-ne p4, p5, :cond_38

    .line 14
    sget p4, Lmiuix/appcompat/R$styleable;->Spinner_spinnerModeCompat:I

    invoke-virtual {v2, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    :cond_38
    const/4 p5, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_87

    if-eq p4, v3, :cond_3f

    goto :goto_97

    .line 15
    :cond_3f
    new-instance p4, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {p4, p0, v4, p2, p3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;-><init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v1, -0x2

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    .line 18
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_dropDownMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownMinWidth:I

    .line 19
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_dropDownMaxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownMaxWidth:I

    .line 20
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_71

    .line 21
    invoke-virtual {p0, v1}, Lmiuix/appcompat/widget/Spinner;->setPopupBackgroundResource(I)V

    goto :goto_78

    .line 22
    :cond_71
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 23
    invoke-virtual {p4, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :goto_78
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    iput-object p4, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    goto :goto_97

    .line 27
    :cond_87
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    invoke-direct {p2, p0, p5}, Lmiuix/appcompat/widget/Spinner$DialogPopup;-><init>(Lmiuix/appcompat/widget/Spinner;Lmiuix/appcompat/widget/Spinner$1;)V

    iput-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 28
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 29
    :goto_97
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->makeSupperForwardingListenerInvalid()V

    .line 30
    sget p2, Lmiuix/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_b4

    .line 31
    new-instance p3, Landroid/widget/ArrayAdapter;

    sget p4, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout:I

    const v1, 0x1020014

    invoke-direct {p3, p1, p4, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 32
    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 33
    invoke-virtual {p0, p3}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 34
    :cond_b4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    iput-boolean v3, p0, Lmiuix/appcompat/widget/Spinner;->mPopupSet:Z

    .line 36
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_c2

    .line 37
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 38
    iput-object p5, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 39
    :cond_c2
    invoke-static {p0, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/widget/Spinner;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/appcompat/widget/Spinner;)Lmiuix/appcompat/widget/Spinner$SpinnerPopup;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/widget/Spinner;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->onSpinnerDismiss()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/appcompat/widget/Spinner;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->vibrate()V

    .line 4
    return-void
.end method

.method private addPressAnim()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_23

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->getFolmeAnimTarget()Lmiuix/animation/IFolme;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    .line 19
    move-result-object v0

    .line 20
    const/high16 v2, 0x3f800000  # 1.0f

    .line 22
    const/4 v3, 0x0

    .line 23
    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 25
    invoke-interface {v0, v2, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 28
    move-result-object v0

    .line 29
    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    .line 31
    invoke-interface {v0, v2}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    .line 34
    iput-boolean v1, p0, Lmiuix/appcompat/widget/Spinner;->mPressAnimAdded:Z

    .line 36
    :cond_23
    return-void
.end method

.method private clearCachedSize()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 5
    if-eqz v1, :cond_1d

    .line 7
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_1d

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 17
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 19
    const/4 v1, -0x2

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 25
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 30
    :cond_1d
    return-void
.end method

.method private compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5b

    .line 4
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_5b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 15
    move-result v2

    .line 16
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    move-result v3

    .line 24
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 27
    move-result v3

    .line 28
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 31
    move-result v4

    .line 32
    add-int/lit8 v4, v4, -0x1

    .line 34
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 37
    move-result v5

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result v4

    .line 42
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result v4

    .line 46
    invoke-interface {p1, v4, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_40

    .line 56
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 58
    const/4 v4, -0x2

    .line 59
    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_40
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    move-result p1

    .line 72
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 75
    move-result p1

    .line 76
    if-eqz p2, :cond_5a

    .line 78
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 80
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 83
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 85
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 87
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 89
    add-int/2addr v0, p2

    .line 90
    add-int/2addr p1, v0

    .line 91
    :cond_5a
    return p1

    .line 92
    :cond_5b
    :goto_5b
    return v0
.end method

.method private getFolmeAnimTarget()Lmiuix/animation/IFolme;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mFolmeAnim:Lmiuix/animation/IFolme;

    .line 3
    if-nez v0, :cond_10

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Landroid/view/View;

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p0, v0, v1

    .line 11
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mFolmeAnim:Lmiuix/animation/IFolme;

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mFolmeAnim:Lmiuix/animation/IFolme;

    .line 19
    return-object v0
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_33

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_33

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 13
    instance-of v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 15
    if-eqz v0, :cond_33

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 19
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1c

    .line 25
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->dismissPopup()V

    .line 28
    goto :goto_33

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 36
    move-result-object v0

    .line 37
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 39
    int-to-float v1, v1

    .line 40
    iget v2, p0, Lmiuix/appcompat/widget/Spinner;->mXRelative:F

    .line 42
    mul-float/2addr v1, v2

    .line 43
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 45
    int-to-float v0, v0

    .line 46
    iget v2, p0, Lmiuix/appcompat/widget/Spinner;->mYRelative:F

    .line 48
    mul-float/2addr v0, v2

    .line 49
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/widget/Spinner;->showPopup(FF)V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method

.method private makeSupperForwardingListenerInvalid()V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x0

    .line 7
    :try_start_6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_9} :catch_a

    .line 10
    goto :goto_12

    .line 11
    :catch_a
    move-exception v0

    .line 12
    const-string v1, "Spinner"

    .line 14
    const-string v2, "makeSupperForwardingListenerInvalid: "

    .line 16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_12
    return-void
.end method

.method private notifySpinnerDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;->onSpinnerDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private onSpinnerDismiss()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->getFolmeAnimTarget()Lmiuix/animation/IFolme;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 12
    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 15
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->notifySpinnerDismiss()V

    .line 18
    return-void
.end method

.method private superViewPerformClick()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0
.end method

.method private vibrate()V
    .registers 3

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 3
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 5
    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 8
    return-void
.end method


# virtual methods
.method public compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    move-result v2

    .line 17
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 24
    move-result v3

    .line 25
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v3

    .line 29
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 32
    move-result v4

    .line 33
    add-int/lit8 v5, v3, 0xf

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result v4

    .line 39
    sub-int v5, v4, v3

    .line 41
    rsub-int/lit8 v5, v5, 0xf

    .line 43
    sub-int/2addr v3, v5

    .line 44
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result v3

    .line 48
    const/4 v5, 0x0

    .line 49
    move v6, v3

    .line 50
    move-object v7, v5

    .line 51
    move v3, v0

    .line 52
    :goto_33
    if-ge v6, v4, :cond_5e

    .line 54
    invoke-interface {p1, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 57
    move-result v8

    .line 58
    if-eq v8, v0, :cond_3d

    .line 60
    move-object v7, v5

    .line 61
    move v0, v8

    .line 62
    :cond_3d
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object v8

    .line 70
    if-nez v8, :cond_50

    .line 72
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 74
    const/4 v9, -0x2

    .line 75
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_50
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 84
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    move-result v8

    .line 88
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v3

    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 94
    goto :goto_33

    .line 95
    :cond_5e
    if-eqz p2, :cond_6d

    .line 97
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 102
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 104
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 106
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 108
    add-int/2addr p2, p1

    .line 109
    add-int/2addr v3, p2

    .line 110
    :cond_6d
    return v3
.end method

.method public dismissPopup()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 6
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    .line 7
    return v0

    .line 8
    :cond_7
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    new-instance p1, Landroidx/activity/b;

    .line 6
    const/16 v0, 0x16

    .line 8
    invoke-direct {p1, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 6
    if-eqz v0, :cond_12

    .line 8
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 16
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 19
    :cond_12
    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 6
    if-eqz p2, :cond_32

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result p2

    .line 12
    const/high16 v0, -0x80000000

    .line 14
    if-ne p2, v0, :cond_32

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/widget/Spinner;->compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 31
    move-result v0

    .line 32
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result p2

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 39
    move-result p1

    .line 40
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 51
    :cond_32
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/appcompat/widget/Spinner$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget-boolean p1, p1, Lmiuix/appcompat/widget/Spinner$SavedState;->mShowDropdown:Z

    .line 12
    if-eqz p1, :cond_1b

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1b

    .line 20
    new-instance v0, Lmiuix/appcompat/widget/Spinner$1;

    .line 22
    invoke-direct {v0, p0}, Lmiuix/appcompat/widget/Spinner$1;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/widget/Spinner$SavedState;

    .line 3
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 12
    if-eqz v1, :cond_15

    .line 14
    invoke-interface {v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_15

    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    iput-boolean v1, v0, Lmiuix/appcompat/widget/Spinner$SavedState;->mShowDropdown:Z

    .line 25
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->addPressAnim()V

    .line 10
    :cond_9
    iget-boolean v0, p0, Lmiuix/appcompat/widget/Spinner;->mPressAnimAdded:Z

    .line 12
    if-eqz v0, :cond_31

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1a

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_21

    .line 27
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x3

    .line 32
    if-ne v0, v1, :cond_31

    .line 34
    :cond_21
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->getFolmeAnimTarget()Lmiuix/animation/IFolme;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    .line 45
    invoke-interface {v0, v2}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 48
    iput-boolean v1, p0, Lmiuix/appcompat/widget/Spinner;->mPressAnimAdded:Z

    .line 50
    :cond_31
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public performClick()Z
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    move-result v0

    return v0
.end method

.method public performClick(FF)Z
    .registers 5

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float v1, p1, v1

    iput v1, p0, Lmiuix/appcompat/widget/Spinner;->mXRelative:F

    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float v0, p2, v0

    iput v0, p0, Lmiuix/appcompat/widget/Spinner;->mYRelative:F

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->superViewPerformClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    return v1

    .line 7
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_38

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->clearCachedSize()V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 10
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->showPopup(FF)V

    .line 11
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget p2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {p0, p1, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    :cond_37
    return v1

    .line 12
    :cond_38
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupSet:Z

    if-nez v0, :cond_7

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    return-void

    .line 4
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    if-eqz v1, :cond_21

    .line 6
    new-instance v1, Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_35

    .line 7
    :cond_21
    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_35

    .line 8
    new-instance v1, Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public setDoubleLineContentAdapter(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;)V
    .registers 6

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout:I

    .line 9
    new-instance v3, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;

    .line 11
    invoke-direct {v3, p0}, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    .line 14
    invoke-direct {v0, v1, v2, p1, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    .line 17
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 20
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setHorizontalOriginalOffset(I)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 10
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 17
    :goto_10
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 12
    :goto_b
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iput p1, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    .line 7
    goto :goto_a

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 11
    :goto_a
    return-void
.end method

.method public setFenceView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setFenceX(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceX(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setFenceXFromView(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    const/4 p1, 0x0

    .line 8
    aget p1, v0, p1

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setFenceX(I)V

    .line 13
    return-void
.end method

.method public setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

    .line 3
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :goto_b
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 12
    :goto_b
    return-void
.end method

.method public setSelection(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->getFolmeAnimTarget()Lmiuix/animation/IFolme;

    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 15
    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 18
    return-void
.end method

.method public showPopup()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/widget/Spinner;->showPopup(FF)V

    return-void
.end method

.method public showPopup(FF)V
    .registers 6

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2, p1, p2}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->show(IIFF)V

    return-void
.end method
