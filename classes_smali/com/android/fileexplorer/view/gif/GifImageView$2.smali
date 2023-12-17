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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$102(Lcom/android/fileexplorer/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$202(Lcom/android/fileexplorer/view/gif/GifImageView;Lcom/android/fileexplorer/view/gif/GifDecoder;)Lcom/android/fileexplorer/view/gif/GifDecoder;

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$302(Lcom/android/fileexplorer/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView$2;->this$0:Lcom/android/fileexplorer/view/gif/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/gif/GifImageView;->access$402(Lcom/android/fileexplorer/view/gif/GifImageView;Z)Z

    return-void
.end method
