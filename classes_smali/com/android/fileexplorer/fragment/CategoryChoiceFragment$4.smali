.class Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;
.super Ljava/lang/Object;
.source "CategoryChoiceFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 1

    return-void
.end method

.method public getCheckedDragFileInfos(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$500(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$500(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->isActionRunning()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public onChoiceModeChange(IZ)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$400(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
