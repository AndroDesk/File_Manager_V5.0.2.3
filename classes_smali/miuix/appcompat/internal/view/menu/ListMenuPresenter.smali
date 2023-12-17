.class public Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field public static final VIEWS_TAG:Ljava/lang/String; = "miuix:menu:list"


# instance fields
.field public mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field private mId:I

.field public mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field public mItemLayoutRes:I

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mMenuLayout:I

.field public mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

.field public mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 7
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_expanded_menu_layout:I

    invoke-direct {p0, v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 10
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    .line 11
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, p3, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(III)V

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 3
    return p0
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 14
    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mId:I

    .line 3
    return v0
.end method

.method public getItemIndexOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 3
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_31

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 22
    if-nez v0, :cond_2e

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 35
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 44
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    :cond_2e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 49
    return-object p1

    .line 50
    :cond_31
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 3
    if-eqz v0, :cond_14

    .line 5
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 7
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 9
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 20
    goto :goto_24

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 23
    if-eqz v0, :cond_24

    .line 25
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    if-nez v0, :cond_24

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    :cond_24
    :goto_24
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 39
    if-eqz p1, :cond_2b

    .line 41
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 44
    :cond_2b
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 46
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 48
    if-eqz p1, :cond_34

    .line 50
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 53
    :cond_34
    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 5
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 13
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 15
    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 11
    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 25
    :cond_18
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    const-string v0, "miuix:menu:list"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 14
    :cond_d
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 8
    if-eqz v1, :cond_c

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 13
    :cond_c
    const-string v1, "miuix:menu:list"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 18
    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mId:I

    .line 3
    return-void
.end method

.method public setItemIndexOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 5
    if-eqz p1, :cond_a

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_7
    return-void
.end method
