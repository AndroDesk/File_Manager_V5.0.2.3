.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;
.super Ljava/lang/Object;
.source "ViewLargeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

.field public final synthetic val$position:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    iput p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;->onViewTap(Landroid/view/View;I)V

    :cond_13
    return-void
.end method
