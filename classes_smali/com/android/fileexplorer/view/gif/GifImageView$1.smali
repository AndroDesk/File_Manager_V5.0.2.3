.class Lcom/android/fileexplorer/view/gif/GifImageView$1;
.super Ljava/lang/Object;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/gif/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView$1;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$1;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$000(Lcom/android/fileexplorer/view/gif/GifImageView;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_25

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$1;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$100(Lcom/android/fileexplorer/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_25

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$1;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$100(Lcom/android/fileexplorer/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_25

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$1;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$100(Lcom/android/fileexplorer/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    :cond_25
    return-void
.end method
