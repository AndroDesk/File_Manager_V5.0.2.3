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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;Lcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->val$data:Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz p1, :cond_11

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;->val$data:Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v1, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->isExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V

    :cond_11
    return-void
.end method
