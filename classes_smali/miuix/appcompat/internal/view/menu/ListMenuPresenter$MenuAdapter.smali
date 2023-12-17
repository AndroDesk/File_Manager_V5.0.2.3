.class Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 12
    return-void
.end method


# virtual methods
.method public findExpandedIndex()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getExpandedItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_27

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 13
    iget-object v1, v1, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 15
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

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
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 32
    if-ne v4, v0, :cond_24

    .line 34
    iput v3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

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
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 43
    return-void
.end method

.method public getCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 15
    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->access$000(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)I

    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

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

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->access$000(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr v1, p1

    .line 4
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz p1, :cond_17

    if-lt v1, p1, :cond_17

    add-int/lit8 v1, v1, 0x1

    .line 5
    :cond_17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_10

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 6
    iget-object v1, p2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 8
    iget p2, p2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 10
    invoke-virtual {v1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 17
    :cond_10
    move-object p3, p2

    .line 18
    check-cast p3, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p3, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V

    .line 27
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method
