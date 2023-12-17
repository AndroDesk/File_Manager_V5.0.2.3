.class Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;
.super Ljava/lang/Object;
.source "DocsGridItemWithFav.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/DocsGridItemWithFav;->onBindDocs(ZZLcom/android/fileexplorer/model/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/DocsGridItemWithFav;

.field public final synthetic val$isPPT:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;->this$0:Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;->val$isPPT:Z

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
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;->this$0:Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->access$000(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V

    .line 7
    return p2
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;->this$0:Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    iget-boolean p2, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;->val$isPPT:Z

    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->access$100(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;->this$0:Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->access$000(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
