.class Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;
.super Ljava/lang/Object;
.source "VHPathGalleyItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->onBind(Lcom/android/fileexplorer/model/PathSegment;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

.field public final synthetic val$position:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;->val$position:I

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    :cond_e
    return-void
.end method
