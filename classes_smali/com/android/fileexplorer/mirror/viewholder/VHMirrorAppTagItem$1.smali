.class Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;
.super Ljava/lang/Object;
.source "VHMirrorAppTagItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;->onBind(Lcom/android/fileexplorer/dao/file/AppTag;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

.field public final synthetic val$position:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    iput p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "VHAppTagItem"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;->access$000(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;->access$100(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->val$position:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    :cond_21
    return-void
.end method
