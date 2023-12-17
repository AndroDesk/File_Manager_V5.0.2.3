.class public abstract Lmiuix/navigator/navigation/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lmiuix/navigator/BottomNavigation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/navigation/NavigationBarView$SavedState;,
        Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;,
        Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;,
        Lmiuix/navigator/navigation/NavigationBarView$LayoutStyle;,
        Lmiuix/navigator/navigation/NavigationBarView$LabelVisibility;
    }
.end annotation


# static fields
.field public static final LABEL_VISIBILITY_AUTO:I

.field public static final LABEL_VISIBILITY_LABELED:I

.field public static final LABEL_VISIBILITY_SELECTED:I

.field public static final LABEL_VISIBILITY_UNLABELED:I

.field private static final MENU_PRESENTER_ID:I


# instance fields
.field private mMinHeightDp:I

.field private mMinHeightDpInWideStyle:I

.field private mMinHeightInWideStyle:I

.field private final menu:Lmiuix/navigator/navigation/NavigationBarMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

.field private final presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

.field private reselectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

.field private selectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/NavigationBarView;->LABEL_VISIBILITY_AUTO:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/NavigationBarView;->LABEL_VISIBILITY_LABELED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/NavigationBarView;->LABEL_VISIBILITY_SELECTED:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/NavigationBarView;->LABEL_VISIBILITY_UNLABELED:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/NavigationBarView;->MENU_PRESENTER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lmiuix/navigator/navigation/NavigationBarPresenter;

    invoke-direct {p1}, Lmiuix/navigator/navigation/NavigationBarPresenter;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMaxItemCount()I

    move-result v1

    invoke-direct {p3, v0, p4, v1}, Lmiuix/navigator/navigation/NavigationBarMenu;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object p3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarView;->createNavigationBarMenuView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarMenuView;

    move-result-object p4

    iput-object p4, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, p4}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setMenuView(Lmiuix/navigator/navigation/NavigationBarMenuView;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setId(I)V

    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setPresenter(Lmiuix/navigator/navigation/NavigationBarPresenter;)V

    invoke-virtual {p3, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/view/menu/MenuPresenter;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2, p3}, Lmiuix/navigator/navigation/NavigationBarPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V

    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemIconTint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_57

    :cond_4d
    const p1, 0x1010038

    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :goto_57
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemIconSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/navigator/R$dimen;->miuix_base_navigation_bar_item_default_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemIconSize(I)V

    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemTextAppearance:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7a

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemTextAppearance(I)V

    :cond_7a
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_89
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemPaddingTop:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemPaddingTop(I)V

    :cond_98
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemPaddingBottom:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemPaddingBottom(I)V

    :cond_a7
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_elevation:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_b7
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixLabelVisibilityMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixLayoutStyle:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setLayoutStyle(I)V

    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemBackground:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_d5

    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    goto :goto_de

    :cond_d5
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_itemTouchColor:I

    invoke-static {v0, p2, p1}, Lmiuix/internal/util/MiuixResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    :goto_de
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_menu:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->inflateMenu(I)V

    :cond_ed
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lmiuix/navigator/navigation/NavigationBarView$1;

    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/NavigationBarView$1;-><init>(Lmiuix/navigator/navigation/NavigationBarView;)V

    invoke-virtual {p3, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarView;->reselectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarView;->selectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarMenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    new-instance v0, Lmiuix/navigator/navigation/NavigationMenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/navigator/navigation/NavigationMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    :cond_f
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public abstract createNavigationBarMenuView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarMenuView;
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorHeight()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorMarginHorizontal()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorWidth()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorWidth()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemPaddingBottom()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getItemPaddingTop()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemPaddingTop()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearance()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemTextAppearance()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public getLayoutStyle()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    move-result v0

    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    return-object v0
.end method

.method public getMenuView()Lmiuix/appcompat/view/menu/MenuView;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    return-object v0
.end method

.method public getMinHeightDp()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDp:I

    return v0
.end method

.method public getMinHeightDpInWideStyle()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDpInWideStyle:I

    return v0
.end method

.method public getMinHeightInWideStyle()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightInWideStyle:I

    return v0
.end method

.method public getPresenter()Lmiuix/navigator/navigation/NavigationBarPresenter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public hide(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/navigator/navigation/NavigationBarView;->hide(ZZ)V

    return-void
.end method

.method public hide(ZZ)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_56

    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, -0x2

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_82

    invoke-virtual {p2, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    if-eqz p1, :cond_2b

    new-array p1, v1, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, v2, v0

    invoke-interface {p1, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_4a

    :cond_2b
    new-array p1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lmiuix/navigator/navigation/NavigationBarView$3;

    invoke-direct {v2, p0}, Lmiuix/navigator/navigation/NavigationBarView$3;-><init>(Lmiuix/navigator/navigation/NavigationBarView;)V

    aput-object v2, p1, v0

    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p1, v1, [Landroid/view/View;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, v2, v0

    invoke-interface {p1, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :goto_4a
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result p1

    if-nez p1, :cond_81

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->hideItem(Z)V

    goto :goto_81

    :cond_56
    const/16 p2, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_6f

    new-array p1, v1, [Lmiuix/navigator/navigation/NavigationBarMenuView;

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_81

    :cond_6f
    new-array p1, v1, [Lmiuix/navigator/navigation/NavigationBarView;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->hideItem(Z)V

    :cond_81
    :goto_81
    return-void

    :array_82
    .array-data 4
        0x3f800000  # 1.0f
        0x3e4ccccd  # 0.2f
    .end array-data
.end method

.method public inflateMenu(I)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isItemActiveIndicatorEnabled()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorEnabled()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    iget-object p1, p1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/navigator/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorEnabled(Z)V

    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorHeight(I)V

    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorMarginHorizontal(I)V

    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorWidth(I)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemPaddingBottom(I)V

    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemPaddingTop(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemTextAppearance(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTouchColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_13

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setLabelVisibilityMode(I)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    :cond_13
    return-void
.end method

.method public setLayoutStyle(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    move-result v0

    if-eq v0, p1, :cond_13

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setLayoutStyle(I)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    :cond_13
    return-void
.end method

.method public setMinHeightDp(I)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDp:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinHeightDpInWideStyle(I)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDpInWideStyle:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDpInWideStyle:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightInWideStyle:I

    return-void
.end method

.method public setOnItemReselectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->reselectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->selectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    return-void
.end method

.method public setSelectedItemId(I)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_17
    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarView;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .registers 7

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_76

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_9c

    invoke-virtual {p1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    const-wide/16 v3, 0x32

    invoke-virtual {p1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v0

    if-nez v3, :cond_38

    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_6a

    :cond_38
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_57

    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    :cond_57
    new-array v0, v1, [Landroid/view/View;

    aput-object p0, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    :goto_6a
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result p1

    if-nez p1, :cond_8d

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->showItem(Z)V

    goto :goto_8d

    :cond_76
    new-array p1, v1, [Lmiuix/navigator/navigation/NavigationBarView;

    aput-object p0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->showItem(Z)V

    :cond_8d
    :goto_8d
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lmiuix/navigator/navigation/NavigationBarView$2;

    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/NavigationBarView$2;-><init>(Lmiuix/navigator/navigation/NavigationBarView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_9c
    .array-data 4
        0x3f733333  # 0.95f
        0x3e99999a  # 0.3f
    .end array-data
.end method
