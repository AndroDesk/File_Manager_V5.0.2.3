.class public Lmiuix/navigator/navigation/NavigationView;
.super Landroid/widget/FrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/navigation/NavigationView$SavedState;,
        Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field private bottomInsetScrimEnabled:Z

.field private layoutGravity:I

.field public listener:Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;

.field private final maxWidth:I

.field private final menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

.field private final tmpLocation:[I

.field private topInsetScrimEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    const v2, 0x10100a0

    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 10
    sput-object v1, Lmiuix/navigator/navigation/NavigationView;->CHECKED_STATE_SET:[I

    .line 12
    new-array v0, v0, [I

    .line 14
    const v1, -0x101009e

    .line 17
    aput v1, v0, v3

    .line 19
    sput-object v0, Lmiuix/navigator/navigation/NavigationView;->DISABLED_STATE_SET:[I

    .line 21
    sget v0, Lmiuix/navigator/R$style;->Widget_MiuixDesign_NavigationView:I

    .line 23
    sput v0, Lmiuix/navigator/navigation/NavigationView;->DEF_STYLE_RES:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/navigator/R$attr;->miuixNavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigator/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-direct {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->tmpLocation:[I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 7
    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lmiuix/navigator/navigation/NavigationView;->layoutGravity:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 10
    new-instance v3, Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-direct {v3, v2}, Lmiuix/navigator/navigation/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    .line 11
    sget-object v4, Lmiuix/navigator/R$styleable;->MiuixNavigationView:[I

    sget v5, Lmiuix/navigator/navigation/NavigationView;->DEF_STYLE_RES:I

    .line 12
    invoke-virtual {v2, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 14
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-static {p0, p3}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_3b
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_layout_gravity:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lmiuix/navigator/navigation/NavigationView;->layoutGravity:I

    .line 17
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 18
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setElevation(F)V

    .line 19
    :cond_53
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_fitsSystemWindows:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 20
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_maxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/navigator/navigation/NavigationView;->maxWidth:I

    .line 21
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_72

    .line 22
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_73

    :cond_72
    move-object p3, v5

    .line 23
    :goto_73
    sget v4, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderTextAppearance:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 24
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_81

    :cond_80
    move v4, v1

    :goto_81
    const v6, 0x1010038

    if-nez v4, :cond_8c

    if-nez p3, :cond_8c

    .line 25
    invoke-direct {p0, v6}, Lmiuix/navigator/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 26
    :cond_8c
    sget v7, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemIconTint:I

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 27
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_9d

    .line 28
    :cond_99
    invoke-direct {p0, v6}, Lmiuix/navigator/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 29
    :goto_9d
    sget v7, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemTextAppearance:I

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 30
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_ab

    :cond_aa
    move v7, v1

    .line 31
    :goto_ab
    sget v8, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemIconSize:I

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 32
    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lmiuix/navigator/navigation/NavigationView;->setItemIconSize(I)V

    .line 33
    :cond_ba
    sget v8, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemTextColor:I

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 34
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_c6
    if-nez v7, :cond_d1

    if-nez v5, :cond_d1

    const v5, 0x1010036

    .line 35
    invoke-direct {p0, v5}, Lmiuix/navigator/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 36
    :cond_d1
    sget v8, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemBackground:I

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 37
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemHorizontalPadding:I

    invoke-virtual {p2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 38
    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 39
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setItemHorizontalPadding(I)V

    .line 40
    :cond_e6
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemVerticalPadding:I

    invoke-virtual {p2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_f5

    .line 41
    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 42
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setItemVerticalPadding(I)V

    .line 43
    :cond_f5
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixDividerInsetStart:I

    .line 44
    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 45
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setDividerInsetStart(I)V

    .line 46
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixDividerInsetEnd:I

    .line 47
    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 48
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setDividerInsetEnd(I)V

    .line 49
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderInsetStart:I

    .line 50
    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 51
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setSubheaderInsetStart(I)V

    .line 52
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderInsetEnd:I

    .line 53
    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 54
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    .line 55
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixTopInsetScrimEnabled:I

    iget-boolean v10, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 56
    invoke-virtual {p2, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 57
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    .line 58
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixBottomInsetScrimEnabled:I

    iget-boolean v10, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    .line 59
    invoke-virtual {p2, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 60
    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    .line 61
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemIconPadding:I

    .line 62
    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 63
    sget v10, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemMaxLines:I

    invoke-virtual {p2, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lmiuix/navigator/navigation/NavigationView;->setItemMaxLines(I)V

    .line 64
    new-instance v10, Lmiuix/navigator/navigation/NavigationView$1;

    invoke-direct {v10, p0}, Lmiuix/navigator/navigation/NavigationView$1;-><init>(Lmiuix/navigator/navigation/NavigationView;)V

    invoke-virtual {v3, v10}, Lmiuix/appcompat/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 65
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setId(I)V

    .line 66
    invoke-virtual {p1, v2, v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V

    if-eqz v4, :cond_151

    .line 67
    invoke-virtual {p1, v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderTextAppearance(I)V

    .line 68
    :cond_151
    invoke-virtual {p1, p3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderColor(Landroid/content/res/ColorStateList;)V

    .line 69
    invoke-virtual {p1, v6}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p3

    invoke-virtual {p1, p3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    if-eqz v7, :cond_163

    .line 71
    invoke-virtual {p1, v7}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 72
    :cond_163
    invoke-virtual {p1, v5}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 73
    invoke-virtual {p1, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p1, v9}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 75
    invoke-virtual {v3, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/view/menu/MenuPresenter;)V

    .line 76
    invoke-virtual {p1, p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationView_menu:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_187

    .line 78
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationView;->inflateMenu(I)V

    .line 79
    :cond_187
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixHeaderLayout:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_196

    .line 80
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 81
    :cond_196
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 12

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p1, :cond_16

    .line 22
    return-object v1

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    .line 29
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 40
    move-result-object v3

    .line 41
    sget v4, Lh/a;->colorPrimary:I

    .line 43
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_31

    .line 49
    return-object v1

    .line 50
    :cond_31
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 55
    move-result v1

    .line 56
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 58
    const/4 v4, 0x3

    .line 59
    new-array v5, v4, [[I

    .line 61
    sget-object v6, Lmiuix/navigator/navigation/NavigationView;->DISABLED_STATE_SET:[I

    .line 63
    const/4 v7, 0x0

    .line 64
    aput-object v6, v5, v7

    .line 66
    sget-object v8, Lmiuix/navigator/navigation/NavigationView;->CHECKED_STATE_SET:[I

    .line 68
    aput-object v8, v5, v2

    .line 70
    sget-object v8, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    .line 72
    const/4 v9, 0x2

    .line 73
    aput-object v8, v5, v9

    .line 75
    new-array v4, v4, [I

    .line 77
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 80
    move-result p1

    .line 81
    aput p1, v4, v7

    .line 83
    aput v0, v4, v2

    .line 85
    aput v1, v4, v9

    .line 87
    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 90
    return-object v3
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lm/f;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 18
    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getCheckedItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getDividerInsetEnd()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getDividerInsetStart()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeaderCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getHeaderCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemIconPadding()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemMaxLines()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemMaxLines()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemVerticalPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemVerticalPadding()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    .line 3
    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getSubheaderInsetEnd()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSubheaderInsetStart()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getSubheaderInsetStart()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public inflateMenu(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 16
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 22
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 24
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 27
    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    .line 3
    return v0
.end method

.method public isTopInsetScrimEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 3
    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 13
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 7
    const/high16 v2, 0x40000000  # 2.0f

    .line 9
    if-eq v0, v1, :cond_14

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_22

    .line 14
    :cond_d
    iget p1, p0, Lmiuix/navigator/navigation/NavigationView;->maxWidth:I

    .line 16
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    move-result p1

    .line 20
    goto :goto_22

    .line 21
    :cond_14
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    move-result p1

    .line 25
    iget v0, p0, Lmiuix/navigator/navigation/NavigationView;->maxWidth:I

    .line 27
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p1

    .line 31
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result p1

    .line 35
    :goto_22
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 38
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/navigator/navigation/NavigationView$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lmiuix/navigator/navigation/NavigationView$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    .line 20
    iget-object p1, p1, Lmiuix/navigator/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 22
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/navigator/navigation/NavigationView$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lmiuix/navigator/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    iput-object v0, v1, Lmiuix/navigator/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 17
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    .line 19
    invoke-virtual {v2, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    .line 3
    return-void
.end method

.method public setCheckedItem(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    check-cast p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    :cond_f
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    check-cast p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    return-void

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setDividerInsetEnd(I)V

    .line 6
    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setDividerInsetStart(I)V

    .line 6
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 6
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 14
    return-void
.end method

.method public setItemIconPadding(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 6
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 14
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconSize(I)V

    .line 6
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setItemMaxLines(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemMaxLines(I)V

    .line 6
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 6
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setItemVerticalPadding(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    .line 6
    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    .line 14
    return-void
.end method

.method public setNavigationItemSelectedListener(Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->listener:Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;

    .line 3
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderInsetEnd(I)V

    .line 6
    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderInsetStart(I)V

    .line 6
    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 3
    return-void
.end method
