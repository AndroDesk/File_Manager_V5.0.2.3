.class public Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field public mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuItemLayout:I

.field private mOverflowOnly:Z

.field private mPopup:Lmiuix/internal/widget/ListPopup;

.field private mPopupHorizontalOffset:I

.field private mPopupVerticalOffset:I

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_item_layout:I

    .line 3
    sput v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 6
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 8
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    iput-boolean p4, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 10
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 11
    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_vertical_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    return-void
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public dismiss(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->isShowing()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 9
    invoke-virtual {p1}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 12
    :cond_b
    return-void
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

.method public getId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "MenuPopupHelpers manage their own views"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    if-eq p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 17
    :cond_10
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    .line 9
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
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 10
    move-result-object p1

    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p2, p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 15
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_10

    .line 9
    const/16 p1, 0x52

    .line 11
    if-ne p2, p1, :cond_10

    .line 13
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 16
    return v0

    .line 17
    :cond_10
    return p3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_44

    .line 8
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 12
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 14
    invoke-direct {v0, v2, p1, v3, v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 19
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 22
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 25
    move-result v2

    .line 26
    move v3, v1

    .line 27
    :goto_1a
    const/4 v4, 0x1

    .line 28
    if-ge v3, v2, :cond_32

    .line 30
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 33
    move-result-object v5

    .line 34
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_2f

    .line 40
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_2f

    .line 46
    move v2, v4

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_1a

    .line 51
    :cond_32
    move v2, v1

    .line 52
    :goto_33
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 55
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_44

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 63
    if-eqz v0, :cond_43

    .line 65
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 68
    :cond_43
    return v4

    .line 69
    :cond_44
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 3
    return-void
.end method

.method public setMenuItemLayout(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    .line 3
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 3
    return-void
.end method

.method public show()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public tryShow()Z
    .registers 4

    .line 1
    new-instance v0, Lmiuix/internal/widget/ListPopup;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_max_height:I

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setMaxAllowedHeight(I)V

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setHasShadow(Z)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 33
    invoke-virtual {v0, p0}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 38
    invoke-virtual {v0, p0}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 43
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 45
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 48
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 50
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 52
    invoke-virtual {v1, v0}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 57
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 59
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 62
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 64
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 66
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    .line 69
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 71
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 77
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 79
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    const/4 v0, 0x1

    .line 87
    return v0
.end method

.method public updateMenuView(Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 14
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_vertical_offset:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 28
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_horizontal_offset:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 36
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->isShowing()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3f

    .line 42
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 44
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 46
    invoke-virtual {p1, v0}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 49
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 51
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 53
    invoke-virtual {p1, v0}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    .line 56
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 64
    :cond_3f
    return-void
.end method
