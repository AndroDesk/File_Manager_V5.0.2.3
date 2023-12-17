.class Lcom/android/fileexplorer/view/FabExpandView$1;
.super Ljava/lang/Object;
.source "FabExpandView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabExpandView;->initViewType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/FabExpandView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/FabExpandView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$000(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v2}, Lcom/android/fileexplorer/view/FabExpandView;->access$100(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->access$200(Lcom/android/fileexplorer/view/FabExpandView;[Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0492

    if-ne v0, v1, :cond_29

    goto :goto_2a

    :cond_29
    move v3, v4

    :goto_2a
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->access$300(Lcom/android/fileexplorer/view/FabExpandView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p1, v3}, Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;->onItemClick(II)V

    :cond_44
    return-void
.end method
