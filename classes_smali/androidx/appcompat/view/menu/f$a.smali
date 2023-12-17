.class public final Landroidx/appcompat/view/menu/f$a;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/appcompat/view/menu/f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/appcompat/view/menu/f$a;->a:I

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f$a;->b()V

    .line 12
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->c:Landroidx/appcompat/view/menu/h;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getExpandedItem()Landroidx/appcompat/view/menu/j;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_27

    .line 11
    iget-object v1, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 13
    iget-object v1, v1, Landroidx/appcompat/view/menu/f;->c:Landroidx/appcompat/view/menu/h;

    .line 15
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_17
    if-ge v3, v2, :cond_27

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 32
    if-ne v4, v0, :cond_24

    .line 34
    iput v3, p0, Landroidx/appcompat/view/menu/f$a;->a:I

    .line 36
    return-void

    .line 37
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_17

    .line 40
    :cond_27
    const/4 v0, -0x1

    .line 41
    iput v0, p0, Landroidx/appcompat/view/menu/f$a;->a:I

    .line 43
    return-void
.end method

.method public final c(I)Landroidx/appcompat/view/menu/j;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->c:Landroidx/appcompat/view/menu/h;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    add-int/lit8 p1, p1, 0x0

    .line 16
    iget v1, p0, Landroidx/appcompat/view/menu/f$a;->a:I

    .line 18
    if-ltz v1, :cond_17

    .line 20
    if-lt p1, v1, :cond_17

    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 24
    :cond_17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/appcompat/view/menu/j;

    .line 30
    return-object p1
.end method

.method public final getCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->c:Landroidx/appcompat/view/menu/h;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    add-int/lit8 v0, v0, 0x0

    .line 20
    iget v1, p0, Landroidx/appcompat/view/menu/f$a;->a:I

    .line 22
    if-gez v1, :cond_18

    .line 24
    return v0

    .line 25
    :cond_18
    add-int/lit8 v0, v0, -0x1

    .line 27
    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f$a;->c(I)Landroidx/appcompat/view/menu/j;

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
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_d

    .line 4
    iget-object p2, p0, Landroidx/appcompat/view/menu/f$a;->b:Landroidx/appcompat/view/menu/f;

    .line 6
    iget-object v1, p2, Landroidx/appcompat/view/menu/f;->b:Landroid/view/LayoutInflater;

    .line 8
    iget p2, p2, Landroidx/appcompat/view/menu/f;->e:I

    .line 10
    invoke-virtual {v1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    :cond_d
    move-object p3, p2

    .line 15
    check-cast p3, Landroidx/appcompat/view/menu/o$a;

    .line 17
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f$a;->c(I)Landroidx/appcompat/view/menu/j;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/o$a;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 24
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f$a;->b()V

    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method
