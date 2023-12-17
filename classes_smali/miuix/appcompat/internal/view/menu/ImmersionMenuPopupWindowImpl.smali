.class public Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiuix/internal/widget/ListPopup;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

.field private mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    .line 14
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 16
    invoke-direct {p1, v0, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .line 19
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    .line 26
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    .line 29
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/app/ActionBarDelegateImpl;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    .line 3
    return-object p0
.end method

.method private adjustOffset(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 7

    .line 1
    if-nez p2, :cond_a

    .line 3
    const-string p1, "ImmersionMenu"

    .line 5
    const-string p2, "ImmersionMenuPopupWindow offset can\'t be adjusted without parent"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_a
    const/4 v0, 0x2

    .line 12
    new-array v1, v0, [I

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    new-array v0, v0, [I

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 22
    const/4 v2, 0x1

    .line 23
    aget v3, v0, v2

    .line 25
    aget v2, v1, v2

    .line 27
    sub-int/2addr v3, v2

    .line 28
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getOffsetFromStatusBar()I

    .line 31
    move-result v2

    .line 32
    sub-int/2addr v3, v2

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v2

    .line 37
    add-int/2addr v2, v3

    .line 38
    neg-int v2, v2

    .line 39
    invoke-virtual {p0, v2}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    .line 42
    invoke-static {p2}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_34

    .line 48
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getMinMarginScreen()I

    .line 51
    move-result p1

    .line 52
    goto :goto_4a

    .line 53
    :cond_34
    const/4 v2, 0x0

    .line 54
    aget v0, v0, v2

    .line 56
    aget v1, v1, v2

    .line 58
    sub-int/2addr v0, v1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 62
    move-result p1

    .line 63
    add-int/2addr p1, v0

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 67
    move-result p2

    .line 68
    sub-int/2addr p2, p1

    .line 69
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getMinMarginScreen()I

    .line 72
    move-result p1

    .line 73
    sub-int p1, p2, p1

    .line 75
    :goto_4a
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 4
    return-void
.end method

.method public getLastAnchor()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getLastParent()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 3
    return-object v0
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 5
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->adjustOffset(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 8
    invoke-super {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 11
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    .line 6
    return-void
.end method
