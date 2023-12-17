.class Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;
.super Ljava/lang/Object;
.source "PanelAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->bindView(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

.field public final synthetic val$holder:Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->this$0:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->val$holder:Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->this$0:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;)Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->val$holder:Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    .line 9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 12
    move-result p2

    .line 13
    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;->onSpinnerItemSelected(II)V

    .line 16
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
