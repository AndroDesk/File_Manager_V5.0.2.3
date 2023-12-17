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
.method public constructor <init>(Lcom/android/fileexplorer/view/FabExpandView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [Landroid/view/View;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$000(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v2, v1, v3

    .line 20
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 22
    invoke-static {v2}, Lcom/android/fileexplorer/view/FabExpandView;->access$100(Lcom/android/fileexplorer/view/FabExpandView;)Landroid/widget/ImageView;

    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x1

    .line 27
    aput-object v2, v1, v4

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/FabExpandView;->access$200(Lcom/android/fileexplorer/view/FabExpandView;[Landroid/view/View;)V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 35
    move-result v0

    .line 36
    const v1, 0x7f0a0492

    .line 39
    if-ne v0, v1, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v3, v4

    .line 43
    :goto_2a
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 45
    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/FabExpandView;->access$300(Lcom/android/fileexplorer/view/FabExpandView;Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 50
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_44

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$1;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 58
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 65
    move-result p1

    .line 66
    invoke-interface {v0, p1, v3}, Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;->onItemClick(II)V

    .line 69
    :cond_44
    return-void
.end method
