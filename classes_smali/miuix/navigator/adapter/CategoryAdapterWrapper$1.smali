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
.method public constructor <init>(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$000(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 6
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 8
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 11
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_44

    .line 4
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 6
    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    add-int/lit8 p2, p1, -0x1

    .line 19
    :goto_12
    if-ltz p2, :cond_25

    .line 21
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 23
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_22

    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 35
    :cond_22
    add-int/lit8 p2, p2, -0x1

    .line 37
    goto :goto_12

    .line 38
    :cond_25
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 40
    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_33

    .line 50
    const/4 p2, 0x0

    .line 51
    goto :goto_39

    .line 52
    :cond_33
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 54
    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    .line 57
    move-result p2

    .line 58
    :goto_39
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 60
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 63
    move-result-object v0

    .line 64
    add-int/2addr p2, p1

    .line 65
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 68
    goto :goto_49

    .line 69
    :cond_44
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 71
    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 74
    :goto_49
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    invoke-static {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$412(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I

    .line 6
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 8
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$500(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_30

    .line 16
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 18
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$600(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    .line 21
    move-result v0

    .line 22
    if-ne p1, v0, :cond_1f

    .line 24
    if-ne p2, v2, :cond_1f

    .line 26
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 28
    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$700(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 31
    goto :goto_77

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 34
    invoke-static {p1, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$502(Lmiuix/navigator/adapter/CategoryAdapterWrapper;Z)Z

    .line 37
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 39
    const/4 p2, -0x1

    .line 40
    invoke-static {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$602(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I

    .line 43
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 45
    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 48
    goto :goto_77

    .line 49
    :cond_30
    if-ne p2, v2, :cond_72

    .line 51
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 53
    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3f

    .line 63
    return-void

    .line 64
    :cond_3f
    add-int/lit8 p2, p1, -0x1

    .line 66
    :goto_41
    if-ltz p2, :cond_54

    .line 68
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 70
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_51

    .line 80
    add-int/lit8 p1, p1, -0x1

    .line 82
    :cond_51
    add-int/lit8 p2, p2, -0x1

    .line 84
    goto :goto_41

    .line 85
    :cond_54
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 87
    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_61

    .line 97
    goto :goto_67

    .line 98
    :cond_61
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 100
    invoke-static {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    .line 103
    move-result v1

    .line 104
    :goto_67
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 106
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 109
    move-result-object p2

    .line 110
    add-int/2addr v1, p1

    .line 111
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 114
    goto :goto_77

    .line 115
    :cond_72
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 117
    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 120
    :goto_77
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2b

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p3, v0, :cond_2b

    .line 12
    iget-object p3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 14
    invoke-static {p3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p3}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_19

    .line 24
    const/4 p3, 0x0

    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    iget-object p3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 28
    invoke-static {p3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    .line 31
    move-result p3

    .line 32
    :goto_1f
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 34
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 37
    move-result-object v0

    .line 38
    add-int/2addr p1, p3

    .line 39
    add-int/2addr p3, p2

    .line 40
    invoke-virtual {v0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 46
    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 49
    :goto_30
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_43

    .line 4
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 6
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    add-int/lit8 v0, p1, -0x1

    .line 19
    :goto_12
    if-ltz v0, :cond_25

    .line 21
    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 23
    invoke-static {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_22

    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 35
    :cond_22
    add-int/lit8 v0, v0, -0x1

    .line 37
    goto :goto_12

    .line 38
    :cond_25
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 40
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_33

    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_39

    .line 52
    :cond_33
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 54
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I

    .line 57
    move-result v0

    .line 58
    :goto_39
    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 60
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 63
    move-result-object v1

    .line 64
    add-int/2addr v0, p1

    .line 65
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 68
    :cond_43
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 70
    invoke-static {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$420(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I

    .line 73
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 75
    invoke-static {p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 78
    return-void
.end method
