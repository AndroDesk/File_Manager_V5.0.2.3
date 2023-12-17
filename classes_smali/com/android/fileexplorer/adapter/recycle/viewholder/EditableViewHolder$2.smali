.class Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;
.super Ljava/lang/Object;
.source "EditableViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->val$position:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->val$position:I

    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Landroid/view/View;I)V

    .line 8
    return-void
.end method
