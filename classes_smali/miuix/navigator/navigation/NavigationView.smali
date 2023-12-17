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

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/navigator/navigation/NavigationView;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lmiuix/navigator/navigation/NavigationView;->DISABLED_STATE_SET:[I

    sget v0, Lmiuix/navigator/R$style;->Widget_MiuixDesign_NavigationView:I

    sput v0, Lmiuix/navigator/navigation/NavigationView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/navigator/R$attr;->miuixNavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigator/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-direct {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->tmpLocation:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/navigator/navigation/NavigationView;->layoutGravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-direct {v3, v2}, Lmiuix/navigator/navigation/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    sget-object v4, Lmiuix/navigator/R$styleable;->MiuixNavigationView:[I

    sget v5, Lmiuix/navigator/navigation/NavigationView;->DEF_STYLE_RES:I

    invoke-virtual {v2, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, p3}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3b
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_layout_gravity:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lmiuix/navigator/navigation/NavigationView;->layoutGravity:I

    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setElevation(F)V

    :cond_53
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_fitsSystemWindows:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_android_maxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/navigator/navigation/NavigationView;->maxWidth:I

    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_72

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_73

    :cond_72
    move-object p3, v5

    :goto_73
    sget v4, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderTextAppearance:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_81

    :cond_80
    move v4, v1

    :goto_81
    const v6, 0x1010038

    if-nez v4, :cond_8c

    if-nez p3, :cond_8c

    invoke-direct {p0, v6}, Lmiuix/navigator/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :cond_8c
    sget v7, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemIconTint:I

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_99

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_9d

    :cond_99
    invoke-direct {p0, v6}, Lmiuix/navigator/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_9d
    sget v7, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemTextAppearance:I

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_ab

    :cond_aa
    move v7, v1

    :goto_ab
    sget v8, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemIconSize:I

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_ba

    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lmiuix/navigator/navigation/NavigationView;->setItemIconSize(I)V

    :cond_ba
    sget v8, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemTextColor:I

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_c6

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_c6
    if-nez v7, :cond_d1

    if-nez v5, :cond_d1

    const v5, 0x1010036

    invoke-direct {p0, v5}, Lmiuix/navigator/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_d1
    sget v8, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemBackground:I

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemHorizontalPadding:I

    invoke-virtual {p2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_e6

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setItemHorizontalPadding(I)V

    :cond_e6
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemVerticalPadding:I

    invoke-virtual {p2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_f5

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setItemVerticalPadding(I)V

    :cond_f5
    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixDividerInsetStart:I

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setDividerInsetStart(I)V

    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixDividerInsetEnd:I

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setDividerInsetEnd(I)V

    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderInsetStart:I

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setSubheaderInsetStart(I)V

    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixSubheaderInsetEnd:I

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixTopInsetScrimEnabled:I

    iget-boolean v10, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    invoke-virtual {p2, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixBottomInsetScrimEnabled:I

    iget-boolean v10, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    invoke-virtual {p2, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Lmiuix/navigator/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    sget v9, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemIconPadding:I

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v10, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixItemMaxLines:I

    invoke-virtual {p2, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lmiuix/navigator/navigation/NavigationView;->setItemMaxLines(I)V

    new-instance v10, Lmiuix/navigator/navigation/NavigationView$1;

    invoke-direct {v10, p0}, Lmiuix/navigator/navigation/NavigationView$1;-><init>(Lmiuix/navigator/navigation/NavigationView;)V

    invoke-virtual {v3, v10}, Lmiuix/appcompat/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setId(I)V

    invoke-virtual {p1, v2, v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V

    if-eqz v4, :cond_151

    invoke-virtual {p1, v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderTextAppearance(I)V

    :cond_151
    invoke-virtual {p1, p3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v6}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p3

    invoke-virtual {p1, p3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    if-eqz v7, :cond_163

    invoke-virtual {p1, v7}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    :cond_163
    invoke-virtual {p1, v5}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v9}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    invoke-virtual {v3, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/view/menu/MenuPresenter;)V

    invoke-virtual {p1, p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationView_menu:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_187

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationView;->inflateMenu(I)V

    :cond_187
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationView_miuixHeaderLayout:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_196

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    :cond_196
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 12

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_16

    return-object v1

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lh/a;->colorPrimary:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_31

    return-object v1

    :cond_31
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lmiuix/navigator/navigation/NavigationView;->DISABLED_STATE_SET:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lmiuix/navigator/navigation/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    new-instance v0, Lm/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    :cond_f
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getCheckedItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemMaxLines()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemMaxLines()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getItemVerticalPadding()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getSubheaderInsetEnd()I

    move-result v0

    return v0
.end method

.method public getSubheaderInsetStart()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->getSubheaderInsetStart()I

    move-result v0

    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflateMenu(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    return v0
.end method

.method public isTopInsetScrimEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000  # 2.0f

    if-eq v0, v1, :cond_14

    if-eqz v0, :cond_d

    goto :goto_22

    :cond_d
    iget p1, p0, Lmiuix/navigator/navigation/NavigationView;->maxWidth:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_22

    :cond_14
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lmiuix/navigator/navigation/NavigationView;->maxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_22
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lmiuix/navigator/navigation/NavigationView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lmiuix/navigator/navigation/NavigationView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    iget-object p1, p1, Lmiuix/navigator/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiuix/navigator/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/navigator/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lmiuix/navigator/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    check-cast p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    :cond_f
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->menu:Lmiuix/navigator/navigation/internal/NavigationMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    check-cast p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setDividerInsetEnd(I)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setDividerInsetStart(I)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemMaxLines(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationView;->listener:Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    :cond_a
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderInsetEnd(I)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationView;->presenter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setSubheaderInsetStart(I)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationView;->topInsetScrimEnabled:Z

    return-void
.end method
