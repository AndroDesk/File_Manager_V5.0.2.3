.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private final menu:Landroidx/appcompat/view/menu/h;

.field private menuInflater:Landroid/view/MenuInflater;

.field public final menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    .line 3
    sput v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->DEF_STYLE_RES:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 19

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 3
    sget v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->DEF_STYLE_RES:I

    move-object/from16 v3, p1

    invoke-static {v3, v2, v4, v1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-direct {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 6
    new-instance v8, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;

    invoke-direct {v8, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/h;

    .line 7
    new-instance v9, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {v9, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 8
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v10, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 9
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {v1, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    const/4 v11, 0x1

    .line 12
    invoke-virtual {v1, v11}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setId(I)V

    .line 13
    invoke-virtual {v9, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V

    .line 14
    invoke-virtual {v8, v1}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V

    .line 16
    sget-object v3, Lcom/google/android/material/R$styleable;->BottomNavigationView:[I

    sget v5, Lcom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    const/4 v1, 0x2

    new-array v6, v1, [I

    sget v12, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v13, 0x0

    aput v12, v6, v13

    sget v14, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    aput v14, v6, v11

    move-object v1, v7

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/y0;

    move-result-object v1

    .line 18
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 19
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_79

    :cond_6f
    const v2, 0x1010038

    .line 20
    invoke-virtual {v9, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 21
    invoke-virtual {v9, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 22
    :goto_79
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconSize:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 24
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v2

    .line 25
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 26
    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 27
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 29
    :cond_99
    invoke-virtual {v1, v14}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 30
    invoke-virtual {v1, v14, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    .line 31
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 32
    :cond_a6
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 33
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 34
    :cond_b5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_c3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_cc

    .line 35
    :cond_c3
    invoke-direct {p0, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v2

    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 36
    invoke-static {p0, v2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_cc
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 38
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v2

    int-to-float v2, v2

    .line 39
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {p0, v2}, Lm0/g0$i;->s(Landroid/view/View;F)V

    .line 41
    :cond_de
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_backgroundTint:I

    .line 42
    invoke-static {v7, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/y0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 44
    invoke-static {v3, v2}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 45
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    const/4 v3, -0x1

    .line 46
    iget-object v4, v1, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 47
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 48
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 49
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result v2

    .line 50
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 51
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    if-eqz v2, :cond_110

    .line 52
    invoke-virtual {v9, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    goto :goto_119

    .line 53
    :cond_110
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemRippleColor:I

    .line 54
    invoke-static {v7, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/y0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 56
    :goto_119
    sget v2, Lcom/google/android/material/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 57
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    .line 58
    :cond_128
    invoke-virtual {v1}, Landroidx/appcompat/widget/y0;->n()V

    .line 59
    invoke-virtual {p0, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {v8, v1}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 3
    return-object p0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/view/View;

    .line 3
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    sget v1, Lcom/google/android/material/R$color;->design_bottom_navigation_shadow_color:I

    .line 8
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_shadow_height:I

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method private applyWindowInsets()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 9
    return-void
.end method

.method private createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v1

    .line 10
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    if-eqz v2, :cond_1a

    .line 14
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 27
    :cond_1a
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 30
    return-object v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

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
    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 18
    return-object v0
.end method


# virtual methods
.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemBackgroundResource()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackgroundRes()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemIconSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceActive()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceInactive()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxItemCount()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/h;

    .line 3
    return-object v0
.end method

.method public getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSelectedItemId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public inflateMenu(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/h;

    .line 13
    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 22
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 24
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 27
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/h;

    .line 20
    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 22
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->restorePresenterStates(Landroid/os/Bundle;)V

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
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    iput-object v0, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 17
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/h;

    .line 19
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/h;->savePresenterStates(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method

.method public removeBadge(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->removeBadge(I)V

    .line 6
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 7
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 9
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 9
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 14
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 20
    :cond_13
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemIconSize(I)V

    .line 6
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 12
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_15

    .line 6
    if-nez p1, :cond_14

    .line 8
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_14

    .line 16
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 18
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_14
    return-void

    .line 22
    :cond_15
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 24
    if-nez p1, :cond_1f

    .line 26
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 28
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    goto :goto_2d

    .line 32
    :cond_1f
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 38
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 40
    invoke-direct {v2, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :goto_2d
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    .line 6
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    .line 6
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 20
    :cond_13
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    .line 3
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 3
    return-void
.end method

.method public setSelectedItemId(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_17

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/h;

    .line 11
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/n;I)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_17

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 24
    :cond_17
    return-void
.end method
