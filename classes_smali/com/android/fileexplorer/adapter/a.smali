.class public final synthetic Lcom/android/fileexplorer/adapter/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/fileexplorer/adapter/a;->a:I

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/adapter/a;->a:I

    packed-switch v0, :pswitch_data_72

    goto :goto_66

    :pswitch_6  #0x7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->b(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    :pswitch_12  #0x6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->a(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->a(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_2a  #0x4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->c(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;Landroid/view/View;)V

    return-void

    :pswitch_36  #0x3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->c(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void

    :pswitch_42  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->b(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Landroid/view/View;Landroid/view/View;)V

    return-void

    :pswitch_4e  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/category/BaseItem;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->b(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)V

    return-void

    :pswitch_5a  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->a(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V

    return-void

    :goto_66
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/adapter/LabelAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/a;->c:Ljava/lang/Object;

    check-cast v1, Lmiuix/navigator/Navigator$Label;

    invoke-static {v0, v1, p1}, Lmiuix/navigator/adapter/LabelAdapter;->a(Lmiuix/navigator/adapter/LabelAdapter;Lmiuix/navigator/Navigator$Label;Landroid/view/View;)V

    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5a  #00000000
        :pswitch_4e  #00000001
        :pswitch_42  #00000002
        :pswitch_36  #00000003
        :pswitch_2a  #00000004
        :pswitch_1e  #00000005
        :pswitch_12  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
