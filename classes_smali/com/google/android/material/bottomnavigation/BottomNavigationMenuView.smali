.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/o;


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L

.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final ITEM_POOL_SIZE:I = 0x5


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private badgeDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Landroidx/appcompat/view/menu/h;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Lf1/r;

.field private tempChildWidths:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ll0/e;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ll0/e;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Ll0/d;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    const v0, 0x1010038

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    new-instance v0, Lf1/a;

    invoke-direct {v0}, Lf1/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Lf1/r;

    invoke-virtual {v0, p1}, Lf1/r;->d(I)V

    const-wide/16 v1, 0x73

    invoke-virtual {v0, v1, v2}, Lf1/r;->b(J)V

    new-instance p1, Lx0/b;

    invoke-direct {p1}, Lx0/b;-><init>()V

    invoke-virtual {v0, p1}, Lf1/r;->c(Landroid/animation/TimeInterpolator;)Lf1/r;

    new-instance p1, Lcom/google/android/material/internal/TextScale;

    invoke-direct {p1}, Lcom/google/android/material/internal/TextScale;-><init>()V

    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    new-instance p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Landroidx/appcompat/view/menu/h;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    return-object p0
.end method

.method private getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Ll0/d;

    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    :cond_13
    return-object v0
.end method

.method private isShifting(II)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    const/4 p1, 0x3

    if-le p2, p1, :cond_c

    goto :goto_d

    :cond_9
    if-nez p1, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    return v0
.end method

.method private isValidId(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private removeUnusedBadges()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_43
    return-void
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isValidId(I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_18

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_18
    return-void
.end method

.method private validateMenuItemId(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid view id"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buildMenuView()V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    if-eqz v4, :cond_18

    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Ll0/d;

    invoke-interface {v5, v4}, Ll0/d;->release(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeBadge()V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v0

    if-nez v0, :cond_2b

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    return-void

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->removeUnusedBadges()V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v0

    move v2, v1

    :goto_49
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_d1

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aput-object v3, v4, v2

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_93

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_98

    :cond_93
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    :goto_98
    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/j;I)V

    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemPosition(I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    if-eqz v4, :cond_c7

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    if-ne v4, v5, :cond_c7

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    :cond_c7
    invoke-direct {p0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_49

    :cond_d1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
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

    sget-object v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

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

.method public findItemView(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->validateMenuItemId(I)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_17

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_14

    return-object v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/badge/BadgeDrawable;

    return-object p1
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    return v0
.end method

.method public getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->validateMenuItemId(I)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->findItemView(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_23
    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v2, v1}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    move-result-object v0

    iget-object v0, v0, Ln0/c$c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_9
    if-ge p3, p1, :cond_3d

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    goto :goto_3a

    :cond_18
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    sub-int v2, p4, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_35

    :cond_2d
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    :goto_35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_3a
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_3d
    return-void
.end method

.method public onMeasure(II)V
    .registers 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-direct {p0, v3, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_9b

    iget-boolean v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    if-eqz v3, :cond_9b

    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_4b

    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v3, v8, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_4b
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_53

    move v3, v5

    goto :goto_54

    :cond_53
    move v3, v6

    :goto_54
    sub-int/2addr p2, v3

    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v3, p2

    sub-int v3, p1, v3

    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    if-nez p2, :cond_68

    goto :goto_69

    :cond_68
    move v5, p2

    :goto_69
    div-int v5, p1, v5

    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr p2, v5

    sub-int/2addr p1, p2

    move p2, v6

    :goto_74
    if-ge p2, v0, :cond_ca

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_94

    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    if-ne p2, v8, :cond_88

    move v8, v3

    goto :goto_89

    :cond_88
    move v8, v5

    :goto_89
    aput v8, v7, p2

    if-lez p1, :cond_98

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_98

    :cond_94
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v7, p2

    :cond_98
    :goto_98
    add-int/lit8 p2, p2, 0x1

    goto :goto_74

    :cond_9b
    if-nez p2, :cond_9e

    goto :goto_9f

    :cond_9e
    move v5, p2

    :goto_9f
    div-int v3, p1, v5

    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/2addr p2, v3

    sub-int/2addr p1, p2

    move p2, v6

    :goto_aa
    if-ge p2, v0, :cond_ca

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_c3

    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    aput v3, v5, p2

    if-lez p1, :cond_c7

    add-int/lit8 v7, v3, 0x1

    aput v7, v5, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_c7

    :cond_c3
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v5, p2

    :cond_c7
    :goto_c7
    add-int/lit8 p2, p2, 0x1

    goto :goto_aa

    :cond_ca
    move p1, v6

    move p2, p1

    :goto_cc
    if-ge p1, v0, :cond_f6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_d9

    goto :goto_f3

    :cond_d9
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    aget v5, v5, p1

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    :goto_f3
    add-int/lit8 p1, p1, 0x1

    goto :goto_cc

    :cond_f6
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    invoke-static {p2, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeBadge(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->validateMenuItemId(I)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->findItemView(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeBadge()V

    :cond_14
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1b
    return-void
.end method

.method public setBadgeDrawables(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1c

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .registers 6

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .registers 6

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .registers 7

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_19

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_16

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .registers 7

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_19

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_16

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-void
.end method

.method public tryRestoreSelectedItemId(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_1e

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 p1, 0x1

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_21

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    :goto_21
    return-void
.end method

.method public updateMenuView()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    if-eqz v0, :cond_7d

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v1, :cond_a

    goto/16 :goto_7d

    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buildMenuView()V

    return-void

    :cond_17
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v0, :cond_34

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    iput v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_34
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    if-eq v1, v3, :cond_3d

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Lf1/r;

    invoke-static {p0, v1}, Lf1/p;->a(Landroid/view/ViewGroup;Lf1/n;)V

    :cond_3d
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v1

    move v3, v2

    :goto_4e
    if-ge v3, v0, :cond_7d

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/j;I)V

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v4, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_7d
    :goto_7d
    return-void
.end method
