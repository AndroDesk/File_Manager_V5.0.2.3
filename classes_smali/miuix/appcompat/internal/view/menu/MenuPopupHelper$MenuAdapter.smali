.class Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 9
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 14
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method


# virtual methods
.method public findExpandedIndex()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$400(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getExpandedItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2b

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 15
    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$400(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_1b
    if-ge v3, v2, :cond_2b

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 36
    if-ne v4, v0, :cond_28

    .line 38
    iput v3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 40
    return-void

    .line 41
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 47
    return-void
.end method

.method public getCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$100(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 21
    move-result-object v0

    .line 22
    :goto_15
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 24
    if-gez v1, :cond_1e

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 37
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$100(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    :goto_15
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_1d

    if-lt p1, v1, :cond_1d

    add-int/lit8 p1, p1, 0x1

    .line 5
    :cond_1d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_16

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 6
    invoke-static {p2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$300(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object p2

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 12
    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$200(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 23
    :cond_16
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    .line 26
    move-result p3

    .line 27
    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    .line 30
    move-object p3, p2

    .line 31
    check-cast p3, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 33
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 35
    iget-boolean v1, v1, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 37
    if-eqz v1, :cond_2d

    .line 39
    move-object v1, p2

    .line 40
    check-cast v1, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 46
    :cond_2d
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p3, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V

    .line 53
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method
