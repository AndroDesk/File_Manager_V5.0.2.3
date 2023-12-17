.class public final Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAnimations:I

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mAnimations:I

    .line 3
    return v0
.end method

.method public hasBackgroundView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-void
.end method

.method public invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 8
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z

    .line 15
    return-void
.end method
