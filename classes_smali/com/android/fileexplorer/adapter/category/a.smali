.class public final synthetic Lcom/android/fileexplorer/adapter/category/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$b0;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    .line 1
    iput p3, p0, Lcom/android/fileexplorer/adapter/category/a;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/a;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/a;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/adapter/category/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/a;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/a;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-static {v0, v1, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->c(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z

    move-result p1

    return p1

    :pswitch_11  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/a;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/a;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    check-cast v1, Lcom/android/fileexplorer/model/category/BaseItem;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->a(Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z

    move-result p1

    return p1

    :goto_1e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/a;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/a;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-static {v0, v1, p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->d(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
