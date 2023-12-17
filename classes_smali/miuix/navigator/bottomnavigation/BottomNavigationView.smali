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
.field private static final MAX_ITEM_COUNT:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->MAX_ITEM_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/navigator/R$attr;->miuixBottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    sget v0, Lmiuix/navigator/R$style;->Widget_MiuixDesign_BottomNavigationView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView_miuixItemHorizontalTranslationEnabled:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    sget p3, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView_android_minHeight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-static {v0, p3}, Lmiuix/core/util/MiuixUIUtils;->getDefDimen(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDp(I)V

    :cond_32
    sget p3, Lmiuix/navigator/R$styleable;->MiuixBottomNavigationView_miuixMinHeightInWideStyle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-static {v0, p3}, Lmiuix/core/util/MiuixUIUtils;->getDefDimen(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDpInWideStyle(I)V

    :cond_45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyWindowInsets()V

    invoke-virtual {p0, p4}, Landroid/view/View;->setClickable(Z)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-boolean p4, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    sget p2, Lmiuix/navigator/R$drawable;->bottom_navigation_background_divider:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    sget p2, Lmiuix/navigator/R$attr;->miuixColorBottomSurface:I

    invoke-static {v0, p2}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p2

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

    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    return p1
.end method

.method public static synthetic access$100(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    return p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private applyWindowInsets()V
    .registers 3

    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private lambda$applyWindowInsets$0(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;
    .registers 11

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isLayoutHideNavigation(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Lm0/r0;->b()I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lm0/r0;->a(I)Lf0/f;

    move-result-object v2

    iget v2, v2, Lf0/f;->d:I

    sub-int/2addr v0, v2

    if-gez v0, :cond_17

    move v0, v1

    :cond_17
    iget v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    add-int/2addr v2, v0

    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    :cond_1c
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    invoke-virtual {p2}, Lm0/r0;->c()I

    move-result v3

    invoke-virtual {p2}, Lm0/r0;->d()I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_49

    iget-object v5, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mActivityContext:Landroid/app/Activity;

    if-eqz v5, :cond_49

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_49

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v5, v2, :cond_49

    goto :goto_4a

    :cond_49
    move v2, v1

    :goto_4a
    const/16 v5, 0x80

    invoke-virtual {p2, v5}, Lm0/r0;->a(I)Lf0/f;

    move-result-object v5

    iget v6, v5, Lf0/f;->a:I

    if-ne v3, v6, :cond_57

    if-eqz v2, :cond_57

    move v3, v1

    :cond_57
    iget v5, v5, Lf0/f;->c:I

    if-ne v4, v5, :cond_5e

    if-eqz v2, :cond_5e

    goto :goto_5f

    :cond_5e
    move v1, v4

    :goto_5f
    iget v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    if-eqz v0, :cond_65

    move v4, v1

    goto :goto_66

    :cond_65
    move v4, v3

    :goto_66
    add-int/2addr v2, v4

    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iget v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    if-eqz v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v3, v1

    :goto_6f
    add-int/2addr v2, v3

    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p3, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2
.end method

.method private makeMinHeightSpec(I)I
    .registers 6

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getLayoutStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMinHeightInWideStyle()I

    move-result v0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    :goto_10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    if-eq v1, v2, :cond_30

    if-lez v0, :cond_30

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_30
    return p1
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    return-void
.end method

.method public createNavigationBarMenuView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarMenuView;
    .registers 3

    new-instance v0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getMaxItemCount()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public hide(ZZ)V
    .registers 8

    invoke-super {p0, p1, p2}, Lmiuix/navigator/navigation/NavigationBarView;->hide(ZZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->isEnableBlur()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    if-eqz p2, :cond_3e

    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_4e

    invoke-virtual {p2, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, p1

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "alpha"

    aput-object v4, v3, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    aput-object p2, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_4c

    :cond_3e
    new-array p2, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, p1

    invoke-static {p2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    iget-object p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4c
    :goto_4c
    return-void

    nop

    :array_4e
    .array-data 4
        0x3f800000  # 1.0f
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method public isApplyBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result v0

    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result v0

    return v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenuView()Lmiuix/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mActivityContext:Landroid/app/Activity;

    :cond_1e
    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    invoke-virtual {p0, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMinHeightDp()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDp(I)V

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMinHeightDpInWideStyle()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setMinHeightDpInWideStyle(I)V

    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    :cond_18
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->isApplyBlur()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_20
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-direct {p0, p2}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->makeMinHeightSpec(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_b
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    :goto_d
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c

    :cond_11
    iget-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mApplyBlur:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1c
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    invoke-virtual {p0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenuView()Lmiuix/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_17

    invoke-virtual {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getPresenter()Lmiuix/navigator/navigation/NavigationBarPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    :cond_17
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lmiuix/navigator/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemReselectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;)V

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lmiuix/navigator/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    if-eqz p1, :cond_f

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    :cond_f
    return-void
.end method

.method public show(Z)V
    .registers 7

    invoke-super {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->show(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->isEnableBlur()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    const/16 v0, 0xff

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    aput-object v3, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "alpha"

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_38

    :cond_2a
    new-array p1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    aput-object v3, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_38
    iget-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundIsVisible:Z

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_43
    invoke-virtual {p0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    iput-boolean v1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->mNeedApplyBlurBeforeDetach:Z

    return-void
.end method
