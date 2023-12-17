.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MaterialButton.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$SavedState;,
        Lcom/google/android/material/button/MaterialButton$IconGravity;,
        Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;,
        Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field public static final ICON_GRAVITY_END:I = 0x3

.field public static final ICON_GRAVITY_START:I = 0x1

.field public static final ICON_GRAVITY_TEXT_END:I = 0x4

.field public static final ICON_GRAVITY_TEXT_START:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButton"


# instance fields
.field private broadcasting:Z

.field private checked:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconLeft:I

.field private iconPadding:I

.field private iconSize:I

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

.field private final onCheckedChangeListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    const v2, 0x101009f

    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 10
    sput-object v1, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    .line 12
    new-array v0, v0, [I

    .line 14
    const v1, 0x10100a0

    .line 17
    aput v1, v0, v3

    .line 19
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    .line 21
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Button:I

    .line 23
    sput v0, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 3
    sget v6, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 8
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    new-array v5, p1, [I

    move-object v0, v7

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 11
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v2, -0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconTint:I

    .line 15
    invoke-static {v1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_icon:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 17
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconGravity:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 18
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconSize:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 19
    invoke-static {v7, p2, p3, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    .line 20
    new-instance p3, Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-direct {p3, p0, p2}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 21
    invoke-virtual {p3, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 24
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_84

    move p1, v2

    :cond_84
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void
.end method

.method private getA11yClassName()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-class v0, Landroid/widget/CompoundButton;

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-class v0, Landroid/widget/Button;

    .line 12
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private isLayoutRTL()Z
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method private isUsingOriginalBackground()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method private resetIconDrawable(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 4
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {p0, p1, v0, v0, v0}, Landroidx/core/widget/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-static {p0, v0, v0, p1, v0}, Landroidx/core/widget/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 15
    :goto_e
    return-void
.end method

.method private updateIcon(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_37

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 12
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 14
    invoke-static {v0, v2}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-static {v2, v0}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 26
    :cond_19
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 36
    move-result v0

    .line 37
    :goto_24
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 39
    if-eqz v2, :cond_29

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 47
    move-result v2

    .line 48
    :goto_2f
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 50
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 52
    add-int/2addr v0, v4

    .line 53
    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    :cond_37
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, 0x1

    .line 60
    if-eq v0, v3, :cond_42

    .line 62
    if-ne v0, v2, :cond_40

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    move v0, v1

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    :goto_42
    move v0, v3

    .line 68
    :goto_43
    if-eqz p1, :cond_49

    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable(Z)V

    .line 73
    return-void

    .line 74
    :cond_49
    invoke-static {p0}, Landroidx/core/widget/k$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object p1

    .line 78
    aget-object v4, p1, v1

    .line 80
    aget-object p1, p1, v2

    .line 82
    if-eqz v0, :cond_57

    .line 84
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 86
    if-ne v4, v2, :cond_5d

    .line 88
    :cond_57
    if-nez v0, :cond_5e

    .line 90
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 92
    if-eq p1, v2, :cond_5e

    .line 94
    :cond_5d
    move v1, v3

    .line 95
    :cond_5e
    if-eqz v1, :cond_63

    .line 97
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable(Z)V

    .line 100
    :cond_63
    return-void
.end method

.method private updateIconPosition()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_83

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    goto/16 :goto_83

    .line 13
    :cond_c
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_7e

    .line 19
    const/4 v3, 0x3

    .line 20
    if-ne v0, v3, :cond_16

    .line 22
    goto :goto_7e

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_34

    .line 41
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    :cond_34
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 56
    move-result v0

    .line 57
    float-to-int v0, v0

    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 65
    move-result v3

    .line 66
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v0

    .line 70
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 72
    if-nez v3, :cond_4f

    .line 74
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 79
    move-result v3

    .line 80
    :cond_4f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    move-result v4

    .line 84
    sub-int/2addr v4, v0

    .line 85
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 87
    invoke-static {p0}, Lm0/g0$e;->e(Landroid/view/View;)I

    .line 90
    move-result v0

    .line 91
    sub-int/2addr v4, v0

    .line 92
    sub-int/2addr v4, v3

    .line 93
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 95
    sub-int/2addr v4, v0

    .line 96
    invoke-static {p0}, Lm0/g0$e;->f(Landroid/view/View;)I

    .line 99
    move-result v0

    .line 100
    sub-int/2addr v4, v0

    .line 101
    div-int/lit8 v4, v4, 0x2

    .line 103
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isLayoutRTL()Z

    .line 106
    move-result v0

    .line 107
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 109
    const/4 v5, 0x4

    .line 110
    if-ne v3, v5, :cond_70

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move v1, v2

    .line 114
    :goto_71
    if-eq v0, v1, :cond_74

    .line 116
    neg-int v4, v4

    .line 117
    :cond_74
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 119
    if-eq v0, v4, :cond_7d

    .line 121
    iput v4, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 123
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 126
    :cond_7d
    return-void

    .line 127
    :cond_7e
    :goto_7e
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 129
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 132
    :cond_83
    :goto_83
    return-void
.end method


# virtual methods
.method public addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public clearOnCheckedChangeListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 6
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCornerRadius()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerRadius()I

    .line 12
    move-result v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getIconGravity()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 3
    return v0
.end method

.method public getIconPadding()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 3
    return v0
.end method

.method public getIconSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 3
    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeWidth()I

    .line 12
    move-result v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isCheckable()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_12

    .line 10
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 19
    :cond_12
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    .line 15
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    .line 26
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 29
    :cond_1c
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 18
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 32
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 4
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition()V

    .line 7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 23
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 12
    iput-boolean v0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    .line 14
    return-object v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition()V

    .line 7
    return-void
.end method

.method public performClick()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 4
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public removeOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundColor(I)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    :goto_f
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    if-eq p1, v0, :cond_1c

    .line 13
    const-string v0, "MaterialButton"

    .line 15
    const-string v1, "Do not set the background; MaterialButton manages its own background drawable."

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    goto :goto_2b

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :goto_2b
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCheckable(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setChecked(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_38

    .line 13
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 15
    if-eq v0, p1, :cond_38

    .line 17
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 22
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 24
    if-eqz p1, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 30
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    .line 32
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 36
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_35

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;

    .line 48
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 50
    invoke-interface {v0, p0, v1}, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 53
    goto :goto_23

    .line 54
    :cond_35
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 57
    :cond_38
    return-void
.end method

.method public setCornerRadius(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerRadius(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 18
    :cond_11
    return-void
.end method

.method public setElevation(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_12

    .line 10
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 19
    :cond_12
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eq v0, p1, :cond_a

    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public setIconGravity(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition()V

    .line 10
    :cond_9
    return-void
.end method

.method public setIconPadding(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 10
    :cond_9
    return-void
.end method

.method public setIconResource(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    .line 1
    if-ltz p1, :cond_d

    .line 3
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 5
    if-eq v0, p1, :cond_c

    .line 7
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 13
    :cond_c
    return-void

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "iconSize cannot be less than 0"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_a

    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    if-eq v0, p1, :cond_a

    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public setIconTintResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 12
    return-void
.end method

.method public setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    .line 3
    return-void
.end method

.method public setPressed(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;->onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 11
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 18
    :cond_11
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public setShouldDrawSurfaceColorStroke(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShouldDrawSurfaceColorStroke(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setStrokeColorResource(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 18
    :cond_11
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeWidth(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 18
    :cond_11
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    :goto_f
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    :goto_f
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 8
    return-void
.end method
