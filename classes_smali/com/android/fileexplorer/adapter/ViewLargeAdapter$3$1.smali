.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;
.super Ljava/lang/Object;
.source "ViewLargeAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->onPostExecute(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

.field public final synthetic val$gifImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->val$gifImageView:Landroid/widget/ImageView;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    .line 5
    const/16 p2, 0x8

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 12
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 20
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 22
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    move-result-object p1

    .line 26
    const p3, 0x7f110113

    .line 29
    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 36
    return p2
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$errorView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$retView:Landroid/view/View;

    const p3, 0x7f0a0361

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->val$gifImageView:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->val$gifImageView:Landroid/widget/ImageView;

    new-instance p4, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;

    invoke-direct {p4, p0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1$1;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return p3
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$1;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
