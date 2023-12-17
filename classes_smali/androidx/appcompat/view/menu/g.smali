.class public final Landroidx/appcompat/view/menu/g;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field public a:Landroidx/appcompat/view/menu/h;

.field public b:I

.field public c:Z

.field public final d:Z

.field public final e:Landroid/view/LayoutInflater;

.field public final f:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h;Landroid/view/LayoutInflater;ZI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/appcompat/view/menu/g;->b:I

    .line 7
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/g;->d:Z

    .line 9
    iput-object p2, p0, Landroidx/appcompat/view/menu/g;->e:Landroid/view/LayoutInflater;

    .line 11
    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 13
    iput p4, p0, Landroidx/appcompat/view/menu/g;->f:I

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->b()V

    .line 18
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getExpandedItem()Landroidx/appcompat/view/menu/j;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_13
    if-ge v3, v2, :cond_23

    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 28
    if-ne v4, v0, :cond_20

    .line 30
    iput v3, p0, Landroidx/appcompat/view/menu/g;->b:I

    .line 32
    return-void

    .line 33
    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Landroidx/appcompat/view/menu/g;->b:I

    .line 39
    return-void
.end method

.method public final c(I)Landroidx/appcompat/view/menu/j;
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->d:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_11

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/g;->b:I

    .line 20
    if-ltz v1, :cond_19

    .line 22
    if-lt p1, v1, :cond_19

    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 26
    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/appcompat/view/menu/j;

    .line 32
    return-object p1
.end method

.method public final getCount()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->d:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_11

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/g;->b:I

    .line 20
    if-gez v1, :cond_1a

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v0

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 33
    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_b

    .line 4
    iget-object p2, p0, Landroidx/appcompat/view/menu/g;->e:Landroid/view/LayoutInflater;

    .line 6
    iget v1, p0, Landroidx/appcompat/view/menu/g;->f:I

    .line 8
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    .line 15
    move-result-object p3

    .line 16
    iget p3, p3, Landroidx/appcompat/view/menu/j;->b:I

    .line 18
    add-int/lit8 v1, p1, -0x1

    .line 20
    if-ltz v1, :cond_1c

    .line 22
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroidx/appcompat/view/menu/j;->b:I

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, p3

    .line 30
    :goto_1d
    move-object v2, p2

    .line 31
    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 33
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->a:Landroidx/appcompat/view/menu/h;

    .line 35
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->isGroupDividerEnabled()Z

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2d

    .line 42
    if-eq p3, v1, :cond_2d

    .line 44
    move p3, v4

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move p3, v0

    .line 47
    :goto_2e
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 50
    move-object p3, p2

    .line 51
    check-cast p3, Landroidx/appcompat/view/menu/o$a;

    .line 53
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/g;->c:Z

    .line 55
    if-eqz v1, :cond_3b

    .line 57
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 60
    :cond_3b
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/o$a;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 67
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->b()V

    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method
