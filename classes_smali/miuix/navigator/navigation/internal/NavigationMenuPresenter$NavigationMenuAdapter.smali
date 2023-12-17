.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I

.field private static final VIEW_TYPE_NORMAL:I

.field private static final VIEW_TYPE_SEPARATOR:I

.field private static final VIEW_TYPE_SUBHEADER:I


# instance fields
.field private checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->VIEW_TYPE_HEADER:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->VIEW_TYPE_NORMAL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->VIEW_TYPE_SEPARATOR:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->VIEW_TYPE_SUBHEADER:I

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;I)I
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->adjustItemPositionForA11yDelegate(I)I

    move-result p0

    return p0
.end method

.method private adjustItemPositionForA11yDelegate(I)I
    .registers 6

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    if-ge v0, p1, :cond_14

    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v2, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    add-int/lit8 v1, v1, -0x1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object p1, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_20

    add-int/lit8 v1, v1, -0x1

    :cond_20
    return v1
.end method

.method private appendTransparentIconIfMissing(II)V
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_10

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_10
    return-void
.end method

.method private prepareMenuItems()V
    .registers 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    invoke-direct {v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    iget-object v3, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_2a
    if-ge v5, v3, :cond_111

    iget-object v8, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v8, v8, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-virtual {v0, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    :cond_43
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-virtual {v8, v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_4c
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_c5

    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_10c

    if-eqz v5, :cond_6c

    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v11, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object v12, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v12, v12, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingSeparator:I

    invoke-direct {v11, v12, v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v11, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v11, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-interface {v9}, Landroid/view/Menu;->size()I

    move-result v11

    move v12, v4

    move v13, v12

    :goto_82
    if-ge v12, v11, :cond_b9

    invoke-interface {v9, v12}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v14}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_b5

    if-nez v13, :cond_99

    invoke-virtual {v14}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_99

    move v13, v1

    :cond_99
    invoke-virtual {v14}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_a2

    invoke-virtual {v14, v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_a2
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_ab

    invoke-virtual {v0, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    :cond_ab
    iget-object v15, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v1, v14}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_82

    :cond_b9
    if-eqz v13, :cond_10c

    iget-object v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_10c

    :cond_c5
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-eq v1, v2, :cond_ed

    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_d9

    const/4 v6, 0x1

    goto :goto_da

    :cond_d9
    move v6, v4

    :goto_da
    if-eqz v5, :cond_ff

    add-int/lit8 v7, v7, 0x1

    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v9, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v10, v10, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingSeparator:I

    invoke-direct {v9, v10, v10}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    :cond_ed
    if-nez v6, :cond_ff

    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_ff

    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v7, v2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    const/4 v6, 0x1

    :cond_ff
    :goto_ff
    new-instance v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v2, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    iput-boolean v6, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    iget-object v8, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :cond_10c
    :goto_10c
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto/16 :goto_2a

    :cond_111
    iput-boolean v4, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;IZ)V
    .registers 5

    new-instance v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;

    invoke-direct {v0, p0, p2, p3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V

    invoke-static {p1, v0}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    return-void
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    const-string v2, "android:menu:checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_12
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1e
    if-ge v2, v3, :cond_4e

    iget-object v4, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v5, v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v5, :cond_4b

    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    :goto_3a
    if-eqz v5, :cond_4b

    new-instance v6, Lmiuix/internal/util/ParcelableSparseArray;

    invoke-direct {v6}, Lmiuix/internal/util/ParcelableSparseArray;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_4e
    const-string v2, "android:menu:action_views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public getCheckedItem()Lmiuix/appcompat/view/menu/MenuItemImpl;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v0, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v0, :cond_14

    const/4 p1, 0x3

    return p1

    :cond_14
    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v0, :cond_28

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1

    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRowCount()I
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_2a

    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v3

    if-eqz v3, :cond_25

    if-ne v3, v2, :cond_27

    :cond_25
    add-int/lit8 v0, v0, 0x1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2a
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;I)V
    .registers 8

    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_78

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    goto/16 :goto_10c

    :cond_11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    goto/16 :goto_10c

    :cond_18
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetStart:I

    invoke-virtual {p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v2, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    invoke-virtual {p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_10c

    :cond_37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    if-eqz v0, :cond_57

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_57
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetEnd:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_73

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_73
    invoke-direct {p0, p1, p2, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    goto/16 :goto_10c

    :cond_78
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textAppearance:I

    if-eqz v0, :cond_8c

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_8c
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_95

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_95
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_b0

    :cond_af
    move-object v0, v1

    :goto_b0
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_d0

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_cd
    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_d0
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    iget-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v2, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    iget v1, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v1, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIconPadding(I)V

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-boolean v2, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    if-eqz v2, :cond_f8

    iget v1, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconSize:I

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIconSize(I)V

    :cond_f8
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-static {v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->access$000(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)I

    move-result v1

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setMaxLines(I)V

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V

    invoke-direct {p0, p1, p2, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    :goto_10c
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;
    .registers 5

    if-eqz p2, :cond_2b

    const/4 v0, 0x1

    if-eq p2, v0, :cond_21

    const/4 v0, 0x2

    if-eq p2, v0, :cond_17

    const/4 p1, 0x3

    if-eq p2, p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    new-instance p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object p2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object p2, p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_17
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_21
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_2b
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;)V
    .registers 3

    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_b

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->recycle()V

    :cond_b
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "android:menu:checked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_13
    if-ge v3, v2, :cond_36

    iget-object v4, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v5, v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v5, :cond_33

    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    if-ne v5, v0, :cond_33

    invoke-virtual {p0, v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    goto :goto_36

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_36
    :goto_36
    iput-boolean v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    :cond_3b
    const-string v0, "android:menu:action_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7b

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_49
    if-ge v1, v0, :cond_7b

    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v3, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-nez v3, :cond_58

    goto :goto_78

    :cond_58
    check-cast v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    if-nez v2, :cond_61

    goto :goto_78

    :cond_61
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_68

    goto :goto_78

    :cond_68
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/internal/util/ParcelableSparseArray;

    if-nez v2, :cond_75

    goto :goto_78

    :cond_75
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_7b
    return-void
.end method

.method public setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_19

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_19

    :cond_b
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_13
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_19
    :goto_19
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    return-void
.end method

.method public update()V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
