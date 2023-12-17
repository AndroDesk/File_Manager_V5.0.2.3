.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;
.super Ljava/lang/Object;
.source "ViewLargeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1f

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 17
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    .line 25
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 27
    iget v1, v1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$position:I

    .line 29
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;->onViewTap(Landroid/view/View;I)V

    .line 32
    :cond_1f
    return-void
.end method
