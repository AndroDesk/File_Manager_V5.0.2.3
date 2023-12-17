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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;->this$2:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;

    iget-object v1, v1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    iget v1, v1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;->onViewTap(Landroid/view/View;I)V

    :cond_1f
    return-void
.end method
