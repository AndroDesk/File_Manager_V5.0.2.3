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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1}, Landroidx/appcompat/widget/m0$c$a;->a(Landroid/content/res/Configuration;)I

    move-result p1

    const/16 v0, 0x15

    const/16 v1, 0x16

    if-ne p2, p1, :cond_1b

    iput v0, p0, Landroidx/appcompat/widget/m0$c;->m:I

    iput v1, p0, Landroidx/appcompat/widget/m0$c;->n:I

    goto :goto_1f

    :cond_1b
    iput v1, p0, Landroidx/appcompat/widget/m0$c;->m:I

    iput v0, p0, Landroidx/appcompat/widget/m0$c;->n:I

    :goto_1f
    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_19

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    goto :goto_1c

    :cond_19
    const/4 v1, 0x0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    :goto_1c
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_43

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    sub-int/2addr v3, v1

    if-ltz v3, :cond_43

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_43

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    move-result-object v2

    :cond_43
    iget-object v1, p0, Landroidx/appcompat/widget/m0$c;->p:Landroidx/appcompat/view/menu/j;

    if-eq v1, v2, :cond_59

    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    if-eqz v1, :cond_50

    iget-object v3, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/l0;->b(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V

    :cond_50
    iput-object v2, p0, Landroidx/appcompat/widget/m0$c;->p:Landroidx/appcompat/view/menu/j;

    if-eqz v2, :cond_59

    iget-object v1, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/widget/l0;->a(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V

    :cond_59
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f0;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget v2, p0, Landroidx/appcompat/widget/m0$c;->m:I

    if-ne p1, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/j;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_28
    return v1

    :cond_29
    if-eqz v0, :cond_4d

    iget v0, p0, Landroidx/appcompat/widget/m0$c;->n:I

    if-ne p1, v0, :cond_4d

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_44

    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/g;

    goto :goto_46

    :cond_44
    check-cast p1, Landroidx/appcompat/view/menu/g;

    :goto_46
    iget-object p1, p1, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->close(Z)V

    return v1

    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setHoverListener(Landroidx/appcompat/widget/l0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/m0$c;->o:Landroidx/appcompat/widget/l0;

    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/f0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
