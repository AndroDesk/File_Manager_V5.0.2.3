.class Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;
.super Lmiuix/internal/widget/PopupMenuAdapter;
.source "ContextMenuAdapter.java"


# instance fields
.field private mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/internal/widget/PopupMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .line 4
    return-void
.end method


# virtual methods
.method public checkMenuItem(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->checkMenuItem(Landroid/view/MenuItem;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    .line 10
    move-result v1

    .line 11
    const/high16 v2, 0x20000

    .line 13
    if-ne v1, v2, :cond_1e

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    .line 17
    if-nez v0, :cond_16

    .line 19
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    const-string v0, "Only one menu item is allowed to have CATEGORY_SYSTEM order!"

    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1e
    return v0
.end method

.method public getLastCategorySystemOrderMenuItem()Landroid/view/MenuItem;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    .line 3
    return-object v0
.end method
