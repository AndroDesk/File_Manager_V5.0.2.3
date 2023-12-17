.class public final Landroidx/appcompat/widget/m0$c;
.super Landroidx/appcompat/widget/f0;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/m0$c$a;
    }
.end annotation


# instance fields
.field public final m:I

.field public final n:I

.field public o:Landroidx/appcompat/widget/l0;

.field public p:Landroidx/appcompat/view/menu/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-static {p1}, Landroidx/appcompat/widget/m0$c$a;->a(Landroid/content/res/Configuration;)I

    .line 16
    move-result p1

    .line 17
    const/16 v0, 0x15

    .line 19
    const/16 v1, 0x16

    .line 21
    if-ne p2, p1, :cond_1b

    .line 23
    iput v0, p0, Landroidx/appcompat/widget/m0$c;->m:I

    .line 25
    iput v1, p0, Landroidx/appcompat/widget/m0$c;->n:I

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    iput v1, p0, Landroidx/appcompat/widget/m0$c;->m:I

    .line 30
    iput v0, p0, Landroidx/appcompat/widget/m0$c;->n:I

    .line 32
    :goto_1f
    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    .line 3
    if-eqz v0, :cond_59

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 11
    if-eqz v1, :cond_19

    .line 13
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 15
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 29
    :goto_1c
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 33
    move-result v3

    .line 34
    const/16 v4, 0xa

    .line 36
    if-eq v3, v4, :cond_43

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    move-result v3

    .line 42
    float-to-int v3, v3

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    move-result v4

    .line 47
    float-to-int v4, v4

    .line 48
    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 51
    move-result v3

    .line 52
    const/4 v4, -0x1

    .line 53
    if-eq v3, v4, :cond_43

    .line 55
    sub-int/2addr v3, v1

    .line 56
    if-ltz v3, :cond_43

    .line 58
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->getCount()I

    .line 61
    move-result v1

    .line 62
    if-ge v3, v1, :cond_43

    .line 64
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    .line 67
    move-result-object v2

    .line 68
    :cond_43
    iget-object v1, p0, Landroidx/appcompat/widget/m0$c;->p:Landroidx/appcompat/view/menu/j;

    .line 70
    if-eq v1, v2, :cond_59

    .line 72
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 74
    if-eqz v1, :cond_50

    .line 76
    iget-object v3, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    .line 78
    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/l0;->b(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V

    .line 81
    :cond_50
    iput-object v2, p0, Landroidx/appcompat/widget/m0$c;->p:Landroidx/appcompat/view/menu/j;

    .line 83
    if-eqz v2, :cond_59

    .line 85
    iget-object v1, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    .line 87
    invoke-interface {v1, v0, v2}, Landroidx/appcompat/widget/l0;->a(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V

    .line 90
    :cond_59
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f0;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 93
    move-result p1

    .line 94
    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_29

    .line 10
    iget v2, p0, Landroidx/appcompat/widget/m0$c;->m:I

    .line 12
    if-ne p1, v2, :cond_29

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_28

    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/j;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_28

    .line 30
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 41
    :cond_28
    return v1

    .line 42
    :cond_29
    if-eqz v0, :cond_4d

    .line 44
    iget v0, p0, Landroidx/appcompat/widget/m0$c;->n:I

    .line 46
    if-ne p1, v0, :cond_4d

    .line 48
    const/4 p1, -0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 55
    move-result-object p1

    .line 56
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    .line 58
    if-eqz p2, :cond_44

    .line 60
    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    .line 62
    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroidx/appcompat/view/menu/g;

    .line 68
    goto :goto_46

    .line 69
    :cond_44
    check-cast p1, Landroidx/appcompat/view/menu/g;

    .line 71
    :goto_46
    iget-object p1, p1, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 77
    return v1

    .line 78
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public setHoverListener(Landroidx/appcompat/widget/l0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    .line 3
    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method
