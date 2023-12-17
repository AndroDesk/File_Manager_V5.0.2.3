.class Lcom/android/fileexplorer/view/gif/GifImageView$2;
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
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$102(Lcom/android/fileexplorer/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$202(Lcom/android/fileexplorer/view/gif/GifImageView;Lcom/android/fileexplorer/view/gif/GifDecoder;)Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 14
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$302(Lcom/android/fileexplorer/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$402(Lcom/android/fileexplorer/view/gif/GifImageView;Z)Z

    .line 23
    return-void
.end method
