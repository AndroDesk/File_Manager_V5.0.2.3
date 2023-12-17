.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final ANIMATION_FADE_IN_DURATION:I = 0x43

.field private static final ANIMATION_FADE_OUT_DURATION:I = 0x32

.field private static final IS_LOLLIPOP:Z


# instance fields
.field private final accessibilityDelegate:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private dropdownPopupActivatedAt:J

.field private dropdownPopupDirty:Z

.field private final endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private final exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

.field private fadeInAnim:Landroid/animation/ValueAnimator;

.field private fadeOutAnim:Landroid/animation/ValueAnimator;

.field private filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

.field private isEndIconChecked:Z

.field private final onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 4
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 11
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;

    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 16
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 18
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;

    .line 20
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 22
    invoke-direct {p1, p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 25
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityDelegate:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 27
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;

    .line 29
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 32
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 34
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    .line 36
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 39
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 44
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 46
    const-wide v0, 0x7fffffffffffffffL

    .line 51
    iput-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 53
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/view/View$OnFocusChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 3
    return v0
.end method

.method public static synthetic access$1200(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1302(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$1400(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown(Landroid/widget/AutoCompleteTextView;)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setPopupBackground(Landroid/widget/AutoCompleteTextView;)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffect(Landroid/widget/AutoCompleteTextView;)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityDelegate:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 3
    return-object p0
.end method

.method private addRippleEffect(Landroid/widget/AutoCompleteTextView;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    .line 22
    invoke-static {p1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v4, v3, [[I

    .line 29
    const/4 v5, 0x1

    .line 30
    new-array v6, v5, [I

    .line 32
    const v7, 0x10100a7

    .line 35
    const/4 v8, 0x0

    .line 36
    aput v7, v6, v8

    .line 38
    aput-object v6, v4, v8

    .line 40
    new-array v6, v8, [I

    .line 42
    aput-object v6, v4, v5

    .line 44
    if-ne v0, v3, :cond_31

    .line 46
    invoke-direct {p0, p1, v2, v4, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnOutlinedLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    if-ne v0, v5, :cond_36

    .line 52
    invoke-direct {p0, p1, v2, v4, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnFilledLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method private addRippleEffectOnFilledLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    .line 6
    move-result v0

    .line 7
    const v1, 0x3dcccccd  # 0.1f

    .line 10
    invoke-static {p2, v0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 13
    move-result p2

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v2, v1, [I

    .line 17
    const/4 v3, 0x0

    .line 18
    aput p2, v2, v3

    .line 20
    const/4 p2, 0x1

    .line 21
    aput v0, v2, p2

    .line 23
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 25
    if-eqz v0, :cond_2a

    .line 27
    new-instance p2, Landroid/content/res/ColorStateList;

    .line 29
    invoke-direct {p2, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 32
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    .line 34
    invoke-direct {p3, p2, p4, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 37
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 39
    invoke-static {p1, p3}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 42
    goto :goto_5e

    .line 43
    :cond_2a
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 45
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 48
    move-result-object v4

    .line 49
    invoke-direct {v0, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 52
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 54
    invoke-direct {v4, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 57
    invoke-virtual {v0, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 60
    new-array p3, v1, [Landroid/graphics/drawable/Drawable;

    .line 62
    aput-object p4, p3, v3

    .line 64
    aput-object v0, p3, p2

    .line 66
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 68
    invoke-direct {p2, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 71
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 73
    invoke-static {p1}, Lm0/g0$e;->f(Landroid/view/View;)I

    .line 76
    move-result p3

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 80
    move-result p4

    .line 81
    invoke-static {p1}, Lm0/g0$e;->e(Landroid/view/View;)I

    .line 84
    move-result v0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 88
    move-result v1

    .line 89
    invoke-static {p1, p2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-static {p1, p3, p4, v0, v1}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    .line 95
    :goto_5e
    return-void
.end method

.method private addRippleEffectOnOutlinedLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 12

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 9
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 16
    const v2, 0x3dcccccd  # 0.1f

    .line 19
    invoke-static {p2, v0, v2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 22
    move-result p2

    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v3, v2, [I

    .line 26
    const/4 v4, 0x0

    .line 27
    aput p2, v3, v4

    .line 29
    const/4 v5, 0x1

    .line 30
    aput v4, v3, v5

    .line 32
    new-instance v6, Landroid/content/res/ColorStateList;

    .line 34
    invoke-direct {v6, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 37
    invoke-virtual {v1, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 40
    sget-boolean v3, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 42
    if-eqz v3, :cond_57

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 47
    new-array v3, v2, [I

    .line 49
    aput p2, v3, v4

    .line 51
    aput v0, v3, v5

    .line 53
    new-instance p2, Landroid/content/res/ColorStateList;

    .line 55
    invoke-direct {p2, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 58
    new-instance p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 60
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 67
    const/4 v0, -0x1

    .line 68
    invoke-virtual {p3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 71
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 73
    invoke-direct {v0, p2, v1, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    .line 78
    aput-object v0, p2, v4

    .line 80
    aput-object p4, p2, v5

    .line 82
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    .line 84
    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 87
    goto :goto_62

    .line 88
    :cond_57
    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    .line 90
    aput-object v1, p2, v4

    .line 92
    aput-object p4, p2, v5

    .line 94
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    .line 96
    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_62
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 101
    invoke-static {p1, p3}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method

.method private castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 7
    return-object p1

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method private varargs getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    int-to-long v0, p1

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;

    .line 16
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 19
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    return-object p2
.end method

.method private getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 27
    invoke-static {p2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p2, p1, p4, p1, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPadding(IIII)V

    .line 38
    return-object p2
.end method

.method private initAnimators()V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_24

    .line 7
    const/16 v2, 0x43

    .line 9
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 15
    new-array v0, v0, [F

    .line 17
    fill-array-data v0, :array_2c

    .line 20
    const/16 v1, 0x32

    .line 22
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    .line 28
    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;

    .line 30
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    return-void

    .line 37
    :array_24
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    .line 45
    :array_2c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private isDropdownPopupActive()Z
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long v2, v0, v2

    .line 12
    if-ltz v2, :cond_16

    .line 14
    const-wide/16 v2, 0x12c

    .line 16
    cmp-long v0, v0, v2

    .line 18
    if-lez v0, :cond_14

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 24
    :goto_17
    return v0
.end method

.method private setEndIconChecked(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 17
    :cond_10
    return-void
.end method

.method private setPopupBackground(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_13

    .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1b

    .line 23
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method private setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 14
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 16
    if-eqz v0, :cond_19

    .line 18
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;

    .line 20
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 26
    :cond_19
    return-void
.end method

.method private showHideDropdown(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 13
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 15
    if-nez v0, :cond_36

    .line 17
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 19
    if-eqz v0, :cond_1c

    .line 21
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 28
    goto :goto_27

    .line 29
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 31
    xor-int/lit8 v0, v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 35
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 40
    :goto_27
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 42
    if-eqz v0, :cond_32

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 47
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 50
    goto :goto_38

    .line 51
    :cond_32
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 57
    :goto_38
    return-void
.end method


# virtual methods
.method public initialize()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_shape_corner_size_small_component:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    iget-object v2, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v2

    .line 33
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    move-result v2

    .line 39
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 47
    move-result-object v0

    .line 48
    iput-object v3, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 50
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    .line 52
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    .line 57
    const/4 v2, 0x1

    .line 58
    new-array v2, v2, [I

    .line 60
    const v4, 0x10100aa

    .line 63
    const/4 v5, 0x0

    .line 64
    aput v4, v2, v5

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    .line 71
    new-array v2, v5, [I

    .line 73
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 76
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    .line 78
    if-eqz v0, :cond_52

    .line 80
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_dropdown_arrow:I

    .line 82
    goto :goto_54

    .line 83
    :cond_52
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_ic_arrow_drop_down:I

    .line 85
    :goto_54
    iget-object v1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 87
    iget-object v2, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 89
    invoke-static {v2, v0}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v1

    .line 102
    sget v2, Lcom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 113
    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;

    .line 115
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 123
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 130
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 135
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->initAnimators()V

    .line 138
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 140
    const/4 v1, 0x2

    .line 141
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 143
    invoke-static {v0, v1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 148
    const-string v1, "accessibility"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 156
    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 158
    return-void
.end method

.method public isBoxBackgroundModeSupported(I)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public shouldTintIconOnError()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
