.class Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;
.super Ljava/lang/Object;
.source "VHGroupParent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;->onBind(Lcom/android/fileexplorer/model/group/FileGroupParent;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

.field public final synthetic val$data:Lcom/android/fileexplorer/model/group/FileGroupParent;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;Lcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->val$data:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 5
    if-eqz p1, :cond_11

    .line 7
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->val$data:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 11
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->isExpanded:Z

    .line 13
    xor-int/lit8 v1, v1, 0x1

    .line 15
    invoke-interface {p1, v1, v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V

    .line 18
    :cond_11
    return-void
.end method
