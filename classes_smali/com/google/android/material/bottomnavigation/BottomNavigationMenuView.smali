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
    sput-object v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    .line 12
    new-array v0, v0, [I

    .line 14
    const v1, -0x101009e

    .line 17
    aput v1, v0, v3

    .line 19
    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ll0/e;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ll0/e;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Ll0/d;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 5
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 10
    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 12
    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 14
    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 16
    sget v1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    const v0, 0x1010038

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 18
    new-instance v0, Lf1/a;

    invoke-direct {v0}, Lf1/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Lf1/r;

    .line 19
    invoke-virtual {v0, p1}, Lf1/r;->d(I)V

    const-wide/16 v1, 0x73

    .line 20
    invoke-virtual {v0, v1, v2}, Lf1/r;->b(J)V

    .line 21
    new-instance p1, Lx0/b;

    invoke-direct {p1}, Lx0/b;-><init>()V

    invoke-virtual {v0, p1}, Lf1/r;->c(Landroid/animation/TimeInterpolator;)Lf1/r;

    .line 22
    new-instance p1, Lcom/google/android/material/internal/TextScale;

    invoke-direct {p1}, Lcom/google/android/material/internal/TextScale;-><init>()V

    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    .line 23
    new-instance p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    .line 24
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 25
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    .line 26
    invoke-static {p0, p1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Landroidx/appcompat/view/menu/h;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 3
    return-object p0
.end method

.method private getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Ll0/d;

    .line 3
    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 9
    if-nez v0, :cond_13

    .line 11
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 20
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

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 10
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->size()I

    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_23

    .line 16
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 18
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_7

    .line 36
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 41
    move-result v2

    .line 42
    if-ge v1, v2, :cond_43

    .line 44
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 49
    move-result v2

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_40

    .line 60
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 65
    :cond_40
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_23

    .line 68
    :cond_43
    return-void
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isValidId(I)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 25
    :cond_18
    return-void
.end method

.method private validateMenuItemId(I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isValidId(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, " is not a valid view id"

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method


# virtual methods
.method public buildMenuView()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    array-length v2, v0

    .line 10
    move v3, v1

    .line 11
    :goto_a
    if-ge v3, v2, :cond_1b

    .line 13
    aget-object v4, v0, v3

    .line 15
    if-eqz v4, :cond_18

    .line 17
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Ll0/d;

    .line 19
    invoke-interface {v5, v4}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeBadge()V

    .line 25
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_a

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2b

    .line 36
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 38
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->removeUnusedBadges()V

    .line 47
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 49
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 52
    move-result v0

    .line 53
    new-array v0, v0, [Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 55
    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 57
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 59
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 61
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v2

    .line 69
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    .line 72
    move-result v0

    .line 73
    move v2, v1

    .line 74
    :goto_49
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 76
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->size()I

    .line 79
    move-result v3

    .line 80
    const/4 v4, 0x1

    .line 81
    if-ge v2, v3, :cond_d1

    .line 83
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 85
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 88
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 90
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 97
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 99
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 105
    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 108
    aput-object v3, v4, v2

    .line 110
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 112
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    .line 117
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    .line 120
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 122
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 127
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 130
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 132
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 135
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 137
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 142
    if-eqz v4, :cond_93

    .line 144
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    goto :goto_98

    .line 148
    :cond_93
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 150
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    .line 153
    :goto_98
    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 156
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 158
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 161
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 163
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 169
    invoke-virtual {v3, v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 172
    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemPosition(I)V

    .line 175
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 177
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 182
    if-eqz v4, :cond_c7

    .line 184
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 186
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 189
    move-result-object v4

    .line 190
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 193
    move-result v4

    .line 194
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 196
    if-ne v4, v5, :cond_c7

    .line 198
    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 200
    :cond_c7
    invoke-direct {p0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V

    .line 203
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 208
    goto/16 :goto_49

    .line 210
    :cond_d1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 212
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 215
    move-result v0

    .line 216
    sub-int/2addr v0, v4

    .line 217
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 222
    move-result v0

    .line 223
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 225
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 227
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 230
    move-result-object v0

    .line 231
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 234
    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
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
    sget-object v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    .line 63
    const/4 v7, 0x0

    .line 64
    aput-object v6, v5, v7

    .line 66
    sget-object v8, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    .line 68
    aput-object v8, v5, v2

    .line 70
    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

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

.method public findItemView(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->validateMenuItemId(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 6
    if-eqz v0, :cond_17

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v1, :cond_17

    .line 12
    aget-object v3, v0, v2

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 17
    move-result v4

    .line 18
    if-ne v4, p1, :cond_14

    .line 20
    return-object v3

    .line 21
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/material/badge/BadgeDrawable;

    .line 9
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

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 3
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_f

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    return-object v0
.end method

.method public getItemBackgroundRes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 3
    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    .line 3
    return v0
.end method

.method public getItemTextAppearanceActive()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 3
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 3
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 3
    return v0
.end method

.method public getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->validateMenuItemId(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    .line 12
    if-nez v0, :cond_1a

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->findItemView(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_23

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 36
    :cond_23
    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 3
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 3
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v2, v0, v2, v1}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Ln0/c$c;->a:Ljava/lang/Object;

    .line 22
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 27
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    sub-int/2addr p5, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    move p3, p2

    .line 9
    move v0, p3

    .line 10
    :goto_9
    if-ge p3, p1, :cond_3d

    .line 12
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x8

    .line 22
    if-ne v2, v3, :cond_18

    .line 24
    goto :goto_3a

    .line 25
    :cond_18
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 27
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne v2, v3, :cond_2d

    .line 34
    sub-int v2, p4, v0

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 39
    move-result v3

    .line 40
    sub-int v3, v2, v3

    .line 42
    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 49
    move-result v2

    .line 50
    add-int/2addr v2, v0

    .line 51
    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 54
    :goto_35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 59
    :goto_3a
    add-int/lit8 p3, p3, 0x1

    .line 61
    goto :goto_9

    .line 62
    :cond_3d
    return-void
.end method

.method public onMeasure(II)V
    .registers 13

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 7
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    .line 21
    const/high16 v2, 0x40000000  # 2.0f

    .line 23
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result v1

    .line 27
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 29
    invoke-direct {p0, v3, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    .line 32
    move-result v3

    .line 33
    const/16 v4, 0x8

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v3, :cond_9b

    .line 39
    iget-boolean v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 41
    if-eqz v3, :cond_9b

    .line 43
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 45
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v3

    .line 49
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 54
    move-result v8

    .line 55
    if-eq v8, v4, :cond_4b

    .line 57
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 59
    const/high16 v9, -0x80000000

    .line 61
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result v8

    .line 65
    invoke-virtual {v3, v8, v1}, Landroid/view/View;->measure(II)V

    .line 68
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    move-result v8

    .line 72
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 75
    move-result v7

    .line 76
    :cond_4b
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 79
    move-result v3

    .line 80
    if-eq v3, v4, :cond_53

    .line 82
    move v3, v5

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v3, v6

    .line 85
    :goto_54
    sub-int/2addr p2, v3

    .line 86
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 88
    mul-int/2addr v3, p2

    .line 89
    sub-int v3, p1, v3

    .line 91
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 93
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 96
    move-result v7

    .line 97
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 100
    move-result v3

    .line 101
    sub-int/2addr p1, v3

    .line 102
    if-nez p2, :cond_68

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move v5, p2

    .line 106
    :goto_69
    div-int v5, p1, v5

    .line 108
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 110
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 113
    move-result v5

    .line 114
    mul-int/2addr p2, v5

    .line 115
    sub-int/2addr p1, p2

    .line 116
    move p2, v6

    .line 117
    :goto_74
    if-ge p2, v0, :cond_ca

    .line 119
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 126
    move-result v7

    .line 127
    if-eq v7, v4, :cond_94

    .line 129
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 131
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 133
    if-ne p2, v8, :cond_88

    .line 135
    move v8, v3

    .line 136
    goto :goto_89

    .line 137
    :cond_88
    move v8, v5

    .line 138
    :goto_89
    aput v8, v7, p2

    .line 140
    if-lez p1, :cond_98

    .line 142
    add-int/lit8 v8, v8, 0x1

    .line 144
    aput v8, v7, p2

    .line 146
    add-int/lit8 p1, p1, -0x1

    .line 148
    goto :goto_98

    .line 149
    :cond_94
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 151
    aput v6, v7, p2

    .line 153
    :cond_98
    :goto_98
    add-int/lit8 p2, p2, 0x1

    .line 155
    goto :goto_74

    .line 156
    :cond_9b
    if-nez p2, :cond_9e

    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    move v5, p2

    .line 160
    :goto_9f
    div-int v3, p1, v5

    .line 162
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 164
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 167
    move-result v3

    .line 168
    mul-int/2addr p2, v3

    .line 169
    sub-int/2addr p1, p2

    .line 170
    move p2, v6

    .line 171
    :goto_aa
    if-ge p2, v0, :cond_ca

    .line 173
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 180
    move-result v5

    .line 181
    if-eq v5, v4, :cond_c3

    .line 183
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 185
    aput v3, v5, p2

    .line 187
    if-lez p1, :cond_c7

    .line 189
    add-int/lit8 v7, v3, 0x1

    .line 191
    aput v7, v5, p2

    .line 193
    add-int/lit8 p1, p1, -0x1

    .line 195
    goto :goto_c7

    .line 196
    :cond_c3
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 198
    aput v6, v5, p2

    .line 200
    :cond_c7
    :goto_c7
    add-int/lit8 p2, p2, 0x1

    .line 202
    goto :goto_aa

    .line 203
    :cond_ca
    move p1, v6

    .line 204
    move p2, p1

    .line 205
    :goto_cc
    if-ge p1, v0, :cond_f6

    .line 207
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 214
    move-result v5

    .line 215
    if-ne v5, v4, :cond_d9

    .line 217
    goto :goto_f3

    .line 218
    :cond_d9
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 220
    aget v5, v5, p1

    .line 222
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 225
    move-result v5

    .line 226
    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    .line 229
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 236
    move-result v7

    .line 237
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 242
    move-result v3

    .line 243
    add-int/2addr p2, v3

    .line 244
    :goto_f3
    add-int/lit8 p1, p1, 0x1

    .line 246
    goto :goto_cc

    .line 247
    :cond_f6
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 250
    move-result p1

    .line 251
    invoke-static {p2, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 254
    move-result p1

    .line 255
    iget p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    .line 257
    invoke-static {p2, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 260
    move-result p2

    .line 261
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 264
    return-void
.end method

.method public removeBadge(I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->validateMenuItemId(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->findItemView(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_14

    .line 18
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeBadge()V

    .line 21
    :cond_14
    if-eqz v0, :cond_1b

    .line 23
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 28
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

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_1c

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_1c

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    .line 23
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .registers 6

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 3
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 6

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .registers 7

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_19

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_19

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 16
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 18
    if-eqz v4, :cond_16

    .line 20
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_8

    .line 26
    :cond_19
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .registers 7

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_19

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_19

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 16
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 18
    if-eqz v4, :cond_16

    .line 20
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_8

    .line 26
    :cond_19
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 3
    return-void
.end method

.method public setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 3
    return-void
.end method

.method public tryRestoreSelectedItemId(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_21

    .line 10
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 12
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 19
    move-result v3

    .line 20
    if-ne p1, v3, :cond_1e

    .line 22
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 24
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_7

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public updateMenuView()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 3
    if-eqz v0, :cond_7d

    .line 5
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 7
    if-nez v1, :cond_a

    .line 9
    goto/16 :goto_7d

    .line 11
    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 17
    array-length v1, v1

    .line 18
    if-eq v0, v1, :cond_17

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buildMenuView()V

    .line 23
    return-void

    .line 24
    :cond_17
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_1b
    if-ge v3, v0, :cond_34

    .line 30
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 32
    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_31

    .line 42
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 45
    move-result v4

    .line 46
    iput v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 48
    iput v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 50
    :cond_31
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_1b

    .line 53
    :cond_34
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 55
    if-eq v1, v3, :cond_3d

    .line 57
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Lf1/r;

    .line 59
    invoke-static {p0, v1}, Lf1/p;->a(Landroid/view/ViewGroup;Lf1/n;)V

    .line 62
    :cond_3d
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 64
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 66
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v3

    .line 74
    invoke-direct {p0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    .line 77
    move-result v1

    .line 78
    move v3, v2

    .line 79
    :goto_4e
    if-ge v3, v0, :cond_7d

    .line 81
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 83
    const/4 v5, 0x1

    .line 84
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 87
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 89
    aget-object v4, v4, v3

    .line 91
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 93
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 96
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 98
    aget-object v4, v4, v3

    .line 100
    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 103
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 105
    aget-object v4, v4, v3

    .line 107
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/h;

    .line 109
    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Landroidx/appcompat/view/menu/j;

    .line 115
    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 118
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 120
    invoke-virtual {v4, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 125
    goto :goto_4e

    .line 126
    :cond_7d
    :goto_7d
    return-void
.end method
