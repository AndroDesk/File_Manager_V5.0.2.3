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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;->val$position:I

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Landroid/view/View;I)V

    return-void
.end method
