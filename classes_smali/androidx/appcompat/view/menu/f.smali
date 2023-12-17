.class public final Landroidx/appcompat/view/menu/f;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/f$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Landroidx/appcompat/view/menu/h;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:I

.field public f:Landroidx/appcompat/view/menu/n$a;

.field public g:Landroidx/appcompat/view/menu/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Landroidx/appcompat/view/menu/f;->e:I

    .line 6
    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/view/LayoutInflater;

    .line 14
    return-void
.end method


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public final flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/view/LayoutInflater;

    .line 9
    if-nez v0, :cond_10

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/view/LayoutInflater;

    .line 17
    :cond_10
    iput-object p2, p0, Landroidx/appcompat/view/menu/f;->c:Landroidx/appcompat/view/menu/h;

    .line 19
    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 21
    if-eqz p1, :cond_19

    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f$a;->notifyDataSetChanged()V

    .line 26
    :cond_19
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->f:Landroidx/appcompat/view/menu/n$a;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/n$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->c:Landroidx/appcompat/view/menu/h;

    .line 3
    iget-object p2, p0, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 5
    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/f$a;->c(I)Landroidx/appcompat/view/menu/j;

    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/n;I)Z

    .line 13
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 3
    const-string v0, "android:menu:list"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_f

    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 16
    :cond_f
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

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
    new-instance v1, Landroid/util/SparseArray;

    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 17
    iget-object v2, p0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 19
    if-eqz v2, :cond_17

    .line 21
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 24
    :cond_17
    const-string v2, "android:menu:list"

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 29
    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

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
    new-instance v0, Landroidx/appcompat/view/menu/i;

    .line 11
    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/i;-><init>(Landroidx/appcompat/view/menu/h;)V

    .line 14
    new-instance v1, Landroidx/appcompat/app/f$a;

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Landroidx/appcompat/app/f$a;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v2, Landroidx/appcompat/view/menu/f;

    .line 25
    invoke-virtual {v1}, Landroidx/appcompat/app/f$a;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v3

    .line 29
    sget v4, Lh/g;->abc_list_menu_item_layout:I

    .line 31
    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/f;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object v2, v0, Landroidx/appcompat/view/menu/i;->c:Landroidx/appcompat/view/menu/f;

    .line 36
    iput-object v0, v2, Landroidx/appcompat/view/menu/f;->f:Landroidx/appcompat/view/menu/n$a;

    .line 38
    iget-object v3, v0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/h;

    .line 40
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 43
    iget-object v2, v0, Landroidx/appcompat/view/menu/i;->c:Landroidx/appcompat/view/menu/f;

    .line 45
    iget-object v3, v2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 47
    if-nez v3, :cond_37

    .line 49
    new-instance v3, Landroidx/appcompat/view/menu/f$a;

    .line 51
    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/f$a;-><init>(Landroidx/appcompat/view/menu/f;)V

    .line 54
    iput-object v3, v2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 56
    :cond_37
    iget-object v2, v2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 58
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/f$a;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 61
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getHeaderView()Landroid/view/View;

    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_46

    .line 67
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/f$a;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/f$a;

    .line 70
    goto :goto_55

    .line 71
    :cond_46
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/f$a;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/f$a;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/f$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;

    .line 86
    :goto_55
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/f$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/f$a;

    .line 89
    invoke-virtual {v1}, Landroidx/appcompat/app/f$a;->create()Landroidx/appcompat/app/f;

    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Landroidx/appcompat/view/menu/i;->b:Landroidx/appcompat/app/f;

    .line 95
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    iget-object v1, v0, Landroidx/appcompat/view/menu/i;->b:Landroidx/appcompat/app/f;

    .line 100
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 107
    move-result-object v1

    .line 108
    const/16 v2, 0x3eb

    .line 110
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 112
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    const/high16 v3, 0x20000

    .line 116
    or-int/2addr v2, v3

    .line 117
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->b:Landroidx/appcompat/app/f;

    .line 121
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->f:Landroidx/appcompat/view/menu/n$a;

    .line 126
    if-eqz v0, :cond_82

    .line 128
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/h;)Z

    .line 131
    :cond_82
    const/4 p1, 0x1

    .line 132
    return p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/n$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->f:Landroidx/appcompat/view/menu/n$a;

    .line 3
    return-void
.end method

.method public final updateMenuView(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f$a;->notifyDataSetChanged()V

    .line 8
    :cond_7
    return-void
.end method
