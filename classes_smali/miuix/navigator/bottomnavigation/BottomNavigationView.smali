.class public Lmiuix/navigator/bottomnavigation/BottomNavigationView;
.super Lmiuix/navigator/navigation/NavigationBarView;
.source "BottomNavigationView.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lmiuix/navigator/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final MAX_ITEM_COUNT:I = 0x5


# instance fields
.field private mActivityContext:Landroid/app/Activity;

.field private mApplyBlur:Z

.field private mBackgroundDivider:Landroid/graphics/drawable/Drawable;

.field private mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field private mBackgroundIsVisible:Z

.field private mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

.field private final mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

.field private mNeedApplyBlurBeforeDetach:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/navigator/R$attr;->miuixBottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    sget v0, Lmiuix/navigator/R$style;->Widget_MiuixDesign_BottomNavigationView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    .line 7
    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    sget-object v1, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    sget p3, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView_miuixItemHorizontalTranslationEnabled:I

    const/4 p4, 0x1

    .line 11
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 12
    invoke-virtual {p0, p3}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 13
    sget p3, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView_android_minHeight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 14
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 15
    invoke-static {v0, p3}, Lmiuix/core/util/MiuixUIUtils;->getDefDimen(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDp(I)V

    .line 16
    :cond_32
    sget p3, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView_miuixMinHeightInWideStyle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 17
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 18
    invoke-static {v0, p3}, Lmiuix/core/util/MiuixUIUtils;->getDefDimen(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDpInWideStyle(I)V

    .line 19
    :cond_45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-direct {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyWindowInsets()V

    .line 21
    invoke-virtual {p0, p4}, Landroid/view/View;->setClickable(Z)V

    const/4 p2, 0x2

    .line 22
    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 23
    iput-boolean p4, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    .line 24
    sget p2, Lmiuix/navigator/R$drawable;->bottom_navigation_background_divider:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 26
    sget p2, Lmiuix/navigator/R$attr;->miuixColorBottomSurface:I

    invoke-static {v0, p2}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p2

    .line 27
    new-instance p3, Lmiuix/view/MiuiBlurUiHelper;

    new-instance p4, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;

    invoke-direct {p4, p0, p2}, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;-><init>(Lmiuix/navigator/bottomnavigation/BottomNavigationView;I)V

    invoke-direct {p3, v0, p0, p1, p4}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/bottomnavigation/BottomNavigationView;Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->lambda$applyWindowInsets$0(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$002(Lmiuix/navigator/bottomnavigation/BottomNavigationView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method private applyWindowInsets()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 3
    const/16 v1, 0x13

    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 8
    invoke-static {p0, v0}, Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 11
    return-void
.end method

.method private lambda$applyWindowInsets$0(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;
    .registers 11

    .line 1
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isLayoutHideNavigation(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1c

    .line 8
    invoke-virtual {p2}, Lm0/r0;->b()I

    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x8

    .line 14
    invoke-virtual {p2, v2}, Lm0/r0;->a(I)Lf0/f;

    .line 17
    move-result-object v2

    .line 18
    iget v2, v2, Lf0/f;->d:I

    .line 20
    sub-int/2addr v0, v2

    .line 21
    if-gez v0, :cond_17

    .line 23
    move v0, v1

    .line 24
    :cond_17
    iget v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 26
    add-int/2addr v2, v0

    .line 27
    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 29
    :cond_1c
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 31
    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v0, v2, :cond_27

    .line 38
    move v0, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v0, v1

    .line 41
    :goto_28
    invoke-virtual {p2}, Lm0/r0;->c()I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p2}, Lm0/r0;->d()I

    .line 48
    move-result v4

    .line 49
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    const/16 v6, 0x1c

    .line 53
    if-lt v5, v6, :cond_49

    .line 55
    iget-object v5, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mActivityContext:Landroid/app/Activity;

    .line 57
    if-eqz v5, :cond_49

    .line 59
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_49

    .line 65
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 68
    move-result-object v5

    .line 69
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 71
    if-ne v5, v2, :cond_49

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v2, v1

    .line 75
    :goto_4a
    const/16 v5, 0x80

    .line 77
    invoke-virtual {p2, v5}, Lm0/r0;->a(I)Lf0/f;

    .line 80
    move-result-object v5

    .line 81
    iget v6, v5, Lf0/f;->a:I

    .line 83
    if-ne v3, v6, :cond_57

    .line 85
    if-eqz v2, :cond_57

    .line 87
    move v3, v1

    .line 88
    :cond_57
    iget v5, v5, Lf0/f;->c:I

    .line 90
    if-ne v4, v5, :cond_5e

    .line 92
    if-eqz v2, :cond_5e

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v1, v4

    .line 96
    :goto_5f
    iget v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 98
    if-eqz v0, :cond_65

    .line 100
    move v4, v1

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    move v4, v3

    .line 103
    :goto_66
    add-int/2addr v2, v4

    .line 104
    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 106
    iget v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 108
    if-eqz v0, :cond_6e

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    move v3, v1

    .line 112
    :goto_6f
    add-int/2addr v2, v3

    .line 113
    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 115
    invoke-virtual {p3, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 118
    return-object p2
.end method

.method private makeMinHeightSpec(I)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getLayoutStyle()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_c

    .line 8
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMinHeightInWideStyle()I

    .line 11
    move-result v0

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    move-result v1

    .line 21
    const/high16 v2, 0x40000000  # 2.0f

    .line 23
    if-eq v1, v2, :cond_30

    .line 25
    if-lez v0, :cond_30

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 34
    move-result v3

    .line 35
    add-int/2addr v3, v1

    .line 36
    add-int/2addr v3, v0

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 40
    move-result p1

    .line 41
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 44
    move-result p1

    .line 45
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 48
    move-result p1

    .line 49
    :cond_30
    return p1
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    .line 6
    return-void
.end method

.method public createNavigationBarMenuView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarMenuView;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method public getMaxItemCount()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public hide(ZZ)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/navigator/navigation/NavigationBarView;->hide(ZZ)V

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    .line 8
    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->isEnableBlur()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_4c

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p2, :cond_3e

    .line 19
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 21
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 24
    const/4 v1, -0x2

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v3, v2, [F

    .line 28
    fill-array-data v3, :array_4e

    .line 31
    invoke-virtual {p2, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 34
    new-array v1, v0, [Ljava/lang/Object;

    .line 36
    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 38
    aput-object v3, v1, p1

    .line 40
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x3

    .line 45
    new-array v3, v3, [Ljava/lang/Object;

    .line 47
    const-string v4, "alpha"

    .line 49
    aput-object v4, v3, p1

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 55
    aput-object p1, v3, v0

    .line 57
    aput-object p2, v3, v2

    .line 59
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 62
    goto :goto_4c

    .line 63
    :cond_3e
    new-array p2, v0, [Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 67
    aput-object v0, p2, p1

    .line 69
    invoke-static {p2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 72
    iget-object p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 77
    :cond_4c
    :goto_4c
    return-void

    .line 78
    nop

    .line 79
    :array_4e
    .array-data 4
        0x3f800000  # 1.0f
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenuView()Lmiuix/appcompat/view/menu/MenuView;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;

    .line 7
    invoke-virtual {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    instance-of v1, v1, Landroid/app/Activity;

    .line 21
    if-eqz v1, :cond_1e

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/Activity;

    .line 29
    iput-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mActivityContext:Landroid/app/Activity;

    .line 31
    :cond_1e
    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    .line 33
    invoke-virtual {p0, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    .line 36
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMinHeightDp()I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDp(I)V

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMinHeightDpInWideStyle()I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDpInWideStyle(I)V

    .line 18
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 20
    if-eqz p1, :cond_18

    .line 22
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 25
    :cond_18
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->isApplyBlur()Z

    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    .line 11
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 14
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    .line 6
    if-eqz v0, :cond_20

    .line 8
    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    .line 10
    if-eqz v0, :cond_20

    .line 12
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 28
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    :cond_20
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->makeMinHeightSpec(I)I

    .line 4
    move-result p2

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 8
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    .line 3
    if-eqz p1, :cond_11

    .line 5
    iget-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    .line 7
    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 14
    :goto_d
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    goto :goto_1c

    .line 18
    :cond_11
    iget-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    .line 20
    if-eqz p1, :cond_18

    .line 22
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    :goto_19
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :goto_1c
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    .line 12
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenuView()Lmiuix/appcompat/view/menu/MenuView;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;

    .line 7
    invoke-virtual {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    .line 10
    move-result v1

    .line 11
    if-eq v1, p1, :cond_17

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 16
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getPresenter()Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 24
    :cond_17
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lmiuix/navigator/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemReselectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;)V

    .line 4
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lmiuix/navigator/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 4
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    .line 6
    if-eqz p1, :cond_f

    .line 8
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 14
    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 16
    :cond_f
    return-void
.end method

.method public show(Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->show(Z)V

    .line 4
    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->isEnableBlur()Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_43

    .line 11
    const/16 v0, 0xff

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_2a

    .line 16
    new-array p1, v1, [Ljava/lang/Object;

    .line 18
    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 20
    aput-object v3, p1, v2

    .line 22
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 25
    move-result-object p1

    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    const-string v4, "alpha"

    .line 31
    aput-object v4, v3, v2

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    aput-object v0, v3, v1

    .line 39
    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 42
    goto :goto_38

    .line 43
    :cond_2a
    new-array p1, v1, [Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 47
    aput-object v3, p1, v2

    .line 49
    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 57
    :goto_38
    iget-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    .line 59
    if-eqz p1, :cond_3f

    .line 61
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    :goto_40
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_43
    invoke-virtual {p0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    .line 71
    iput-boolean v1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    .line 73
    return-void
.end method
