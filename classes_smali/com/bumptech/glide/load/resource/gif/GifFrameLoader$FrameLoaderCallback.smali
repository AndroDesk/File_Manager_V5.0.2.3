.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field public static final MSG_CLEAR:I = 0x2

.field public static final MSG_DELAY:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_f

    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 12
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    .line 15
    return v1

    .line 16
    :cond_f
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_1d

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 25
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 27
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return p1
.end method
