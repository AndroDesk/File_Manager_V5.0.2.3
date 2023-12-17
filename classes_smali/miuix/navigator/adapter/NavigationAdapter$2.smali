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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/NavigationAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$2;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$e;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of v0, p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result p1

    if-eqz p1, :cond_12

    return v1

    :cond_12
    const/4 p1, 0x3

    invoke-static {p1, v1}, Landroidx/recyclerview/widget/f$e;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V
    .registers 8

    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of v0, p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    if-eqz v0, :cond_12

    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    invoke-virtual {p1, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p2

    iget-object p3, p0, Lmiuix/navigator/adapter/NavigationAdapter$2;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {p3}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p3

    if-eqz p3, :cond_2b

    iget-object p3, p0, Lmiuix/navigator/adapter/NavigationAdapter$2;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {p3}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_2b
    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    return-void
.end method
