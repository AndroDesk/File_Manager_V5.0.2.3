.class public abstract Lmiuix/navigator/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "NavigationBarMenuView.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final ITEM_POOL_SIZE:I = 0x5

.field private static final NO_PADDING:I = -0x1


# instance fields
.field private buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

.field private itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

.field private itemActiveIndicatorEnabled:Z

.field private itemActiveIndicatorHeight:I

.field private itemActiveIndicatorMarginHorizontal:I

.field private itemActiveIndicatorResizeable:Z

.field private itemActiveIndicatorWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private itemPaddingBottom:I

.field private itemPaddingTop:I

.field private final itemPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Lmiuix/navigator/navigation/NavigationBarItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearance:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private itemTouchColor:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private layoutStyle:I

.field private menu:Lmiuix/appcompat/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onTouchListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/navigator/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lmiuix/navigator/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ll0/e;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ll0/e;-><init>(I)V

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPool:Ll0/d;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    const p1, 0x1010038

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    new-instance p1, Lmiuix/navigator/navigation/NavigationBarMenuView$1;

    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/NavigationBarMenuView$1;-><init>(Lmiuix/navigator/navigation/NavigationBarMenuView;)V

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/navigation/NavigationBarMenuView;)Lmiuix/navigator/navigation/NavigationBarPresenter;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/navigation/NavigationBarMenuView;)Lmiuix/appcompat/view/menu/MenuBuilder;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method private createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private getNewItem()Lmiuix/navigator/navigation/NavigationBarItemView;
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPool:Ll0/d;

    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/NavigationBarItemView;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createNavigationBarItemView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarItemView;

    move-result-object v0

    goto :goto_27

    :cond_13
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getLayoutStyle()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    move-result v2

    if-eq v1, v2, :cond_27

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLayoutStyle(I)V

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateLayout()V

    :cond_27
    :goto_27
    return-object v0
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

.method private validateMenuItemId(I)V
    .registers 4

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isValidId(I)Z

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    if-eqz v4, :cond_18

    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPool:Ll0/d;

    invoke-interface {v5, v4}, Ll0/d;->release(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->clear()V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2b

    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    return-void

    :cond_2b
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lmiuix/navigator/navigation/NavigationBarItemView;

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isShifting(II)Z

    move-result v0

    move v2, v1

    :goto_46
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_fd

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    invoke-virtual {v3, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getNewItem()Lmiuix/navigator/navigation/NavigationBarItemView;

    move-result-object v3

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    aput-object v3, v4, v2

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconSize:I

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconSize(I)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextAppearance:I

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextAppearance(I)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8b

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    :cond_8b
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    if-eq v4, v5, :cond_92

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    :cond_92
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    iget-boolean v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_ba

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_bf

    :cond_ba
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(I)V

    :goto_bf
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTouchColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->setShifting(Z)V

    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V

    invoke-virtual {v3, v2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPosition(I)V

    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    if-eqz v5, :cond_f6

    if-ne v4, v5, :cond_f6

    iput v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    :cond_f6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_46

    :cond_fd
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

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

    sget-object v6, Lmiuix/navigator/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lmiuix/navigator/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

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

.method public abstract createNavigationBarItemView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarItemView;
.end method

.method public findItemView(I)Lmiuix/navigator/navigation/NavigationBarItemView;
    .registers 7

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

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

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    return v0
.end method

.method public getItemActiveIndicatorWidth()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconSize:I

    return v0
.end method

.method public getItemPaddingBottom()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    return v0
.end method

.method public getItemPaddingTop()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    return v0
.end method

.method public getItemTextAppearance()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextAppearance:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    return v0
.end method

.method public getLayoutStyle()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->layoutStyle:I

    return v0
.end method

.method public getMenu()Lmiuix/appcompat/view/menu/MenuBuilder;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hideItem()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->hideItem(Z)V

    return-void
.end method

.method public hideItem(Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v1, "navigationBarItemHide"

    invoke-direct {p1, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v3, 0x3fee666660000000L  # 0.949999988079071

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v4, -0x2

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_6a

    invoke-virtual {v3, v4, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1, v5, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v2, :cond_69

    array-length v3, v2

    move v4, v0

    :goto_39
    if-ge v4, v3, :cond_69

    aget-object v5, v2, v4

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    aput-object v5, v7, v0

    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-array v6, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v6, v0

    invoke-interface {v5, p1, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_54
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz p1, :cond_69

    array-length v1, p1

    :goto_59
    if-ge v0, v1, :cond_69

    aget-object v2, p1, v0

    const v3, 0x3f733333  # 0.95f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_69
    return-void

    :array_6a
    .array-data 4
        0x3f733333  # 0.95f
        0x3e19999a  # 0.15f
    .end array-data
.end method

.method public initialize(Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public isItemActiveIndicatorResizeable()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    return v0
.end method

.method public isLayoutInWideStyle()Z
    .registers 3

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->layoutStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isShifting(II)Z
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

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

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

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 6

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz p1, :cond_16

    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .registers 6

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .registers 6

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .registers 6

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorResizeable(Z)V
    .registers 6

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .registers 6

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .registers 6

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 6

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconSize:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-nez p2, :cond_8

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_d
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_27

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemData()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_24

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 6

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 6

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 7

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextAppearance:I

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_19

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextAppearance(I)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_16

    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setItemTouchColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTouchColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setLayoutStyle(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->layoutStyle:I

    return-void
.end method

.method public setPresenter(Lmiuix/navigator/navigation/NavigationBarPresenter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    return-void
.end method

.method public showItem()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->showItem(Z)V

    return-void
.end method

.method public showItem(Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v1, "navigationBarItemShow"

    invoke-direct {p1, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v4, -0x2

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_6c

    invoke-virtual {v3, v4, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1, v5, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v2, :cond_6a

    array-length v3, v2

    move v4, v0

    :goto_3b
    if-ge v4, v3, :cond_6a

    aget-object v5, v2, v4

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    aput-object v5, v7, v0

    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-array v6, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v6, v0

    invoke-interface {v5, p1, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_56
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz p1, :cond_6a

    array-length v1, p1

    :goto_5b
    if-ge v0, v1, :cond_6a

    aget-object v2, p1, v0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_6a
    return-void

    nop

    :array_6c
    .array-data 4
        0x3f59999a  # 0.85f
        0x3e99999a  # 0.3f
    .end array-data
.end method

.method public tryRestoreSelectedItemId(I)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_1e

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

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

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_92

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-nez v1, :cond_a

    goto/16 :goto_92

    :cond_a
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_17

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->buildMenuView()V

    return-void

    :cond_17
    const/4 v1, 0x0

    move v2, v1

    :goto_19
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_32
    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isShifting(II)Z

    move-result v2

    move v3, v1

    :goto_43
    if-ge v3, v0, :cond_92

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->getLayoutStyle()I

    move-result v4

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    move-result v5

    if-eq v4, v5, :cond_6b

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    move-result v5

    invoke-virtual {v4, v5}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLayoutStyle(I)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateLayout()V

    :cond_6b
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    iget v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    invoke-virtual {v4, v5}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setShifting(Z)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V

    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    invoke-virtual {v4, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_92
    :goto_92
    return-void
.end method
