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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->this$0:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->val$holder:Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->this$0:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;)Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;->val$holder:Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;->onSpinnerItemSelected(II)V

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
