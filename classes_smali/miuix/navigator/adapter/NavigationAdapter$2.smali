.class Lmiuix/navigator/adapter/NavigationAdapter$2;
.super Landroidx/recyclerview/widget/f$e;
.source "NavigationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/NavigationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/adapter/NavigationAdapter;


# direct methods
.method public constructor <init>(Lmiuix/navigator/adapter/NavigationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$2;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/f$e;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_12

    .line 10
    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    .line 12
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    const/4 p1, 0x3

    .line 20
    invoke-static {p1, v1}, Landroidx/recyclerview/widget/f$e;->makeMovementFlags(II)I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V
    .registers 8

    .line 1
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 9
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 5

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    .line 7
    if-eqz v0, :cond_12

    .line 9
    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    .line 11
    invoke-virtual {p1, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 26
    move-result p2

    .line 27
    iget-object p3, p0, Lmiuix/navigator/adapter/NavigationAdapter$2;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 29
    invoke-static {p3}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 32
    move-result-object p3

    .line 33
    if-eqz p3, :cond_2b

    .line 35
    iget-object p3, p0, Lmiuix/navigator/adapter/NavigationAdapter$2;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 37
    invoke-static {p3}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 44
    :cond_2b
    const/4 p1, 0x1

    .line 45
    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    return-void
.end method
