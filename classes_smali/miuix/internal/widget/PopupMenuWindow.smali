.class public Lmiuix/internal/widget/PopupMenuWindow;
.super Lmiuix/internal/widget/ListPopup;
.source "PopupMenuWindow.java"


# instance fields
.field private mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lmiuix/internal/widget/PopupMenuAdapter;

    .line 6
    invoke-direct {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    .line 11
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    new-instance p1, Lcom/android/fileexplorer/mirror/view/d;

    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/mirror/view/d;-><init>(Ljava/lang/Object;I)V

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 23
    new-instance p1, Lcom/android/fileexplorer/mirror/view/c;

    .line 25
    const/4 v0, 0x5

    .line 26
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    .line 29
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 32
    return-void
.end method

.method public static synthetic d(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->lambda$new$0(Landroid/view/SubMenu;)V

    return-void
.end method

.method public static synthetic e(Lmiuix/internal/widget/PopupMenuWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/PopupMenuWindow;->lambda$new$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/SubMenu;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    .line 8
    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 15
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_19

    .line 13
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lmiuix/internal/widget/b;

    .line 19
    invoke-direct {p2, p0, p1}, Lmiuix/internal/widget/b;-><init>(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V

    .line 22
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 29
    :goto_1c
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 32
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .registers 2

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    .line 5
    invoke-super {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 8
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->update(Landroid/view/Menu;)V

    .line 6
    return-void
.end method
