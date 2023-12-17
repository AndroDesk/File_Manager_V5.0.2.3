.class Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "CategoryAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/adapter/CategoryAdapterWrapper;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Lmiuix/navigator/adapter/CategoryImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$000(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_44

    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result p2

    if-nez p2, :cond_10

    return-void

    :cond_10
    add-int/lit8 p2, p1, -0x1

    :goto_12
    if-ltz p2, :cond_25

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_22

    add-int/lit8 p1, p1, -0x1

    :cond_22
    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    :cond_25
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result p2

    if-eqz p2, :cond_33

    const/4 p2, 0x0

    goto :goto_39

    :cond_33
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    move-result p2

    :goto_39
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_49

    :cond_44
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    :goto_49
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$412(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$500(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$600(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    move-result v0

    if-ne p1, v0, :cond_1f

    if-ne p2, v2, :cond_1f

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$700(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    goto :goto_77

    :cond_1f
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$502(Lmiuix/navigator/adapter/CategoryAdapterWrapper;Z)Z

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$602(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    goto :goto_77

    :cond_30
    if-ne p2, v2, :cond_72

    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result p2

    if-nez p2, :cond_3f

    return-void

    :cond_3f
    add-int/lit8 p2, p1, -0x1

    :goto_41
    if-ltz p2, :cond_54

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_51

    add-int/lit8 p1, p1, -0x1

    :cond_51
    add-int/lit8 p2, p2, -0x1

    goto :goto_41

    :cond_54
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result p2

    if-eqz p2, :cond_61

    goto :goto_67

    :cond_61
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    move-result v1

    :goto_67
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object p2

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_77

    :cond_72
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    :goto_77
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2b

    iget-object p3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result p3

    if-eqz p3, :cond_19

    const/4 p3, 0x0

    goto :goto_1f

    :cond_19
    iget-object p3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    move-result p3

    :goto_1f
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    add-int/2addr p1, p3

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_30

    :cond_2b
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    :goto_30
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_43

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    add-int/lit8 v0, p1, -0x1

    :goto_12
    if-ltz v0, :cond_25

    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result v1

    if-nez v1, :cond_22

    add-int/lit8 p1, p1, -0x1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_25
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    goto :goto_39

    :cond_33
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    move-result v0

    :goto_39
    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_43
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$420(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    return-void
.end method
