.class Lcom/miui/maml/elements/video/BaseVideoView$1;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/video/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_d

    move p1, p2

    goto :goto_e

    :cond_d
    move p1, v0

    :goto_e
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    iget v2, v1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    if-ne v2, p3, :cond_19

    iget p3, v1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    if-ne p3, p4, :cond_19

    goto :goto_1a

    :cond_19
    move p2, v0

    :goto_1a
    invoke-static {v1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$100(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_3a

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    :cond_35
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    :cond_3a
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$300(Lcom/miui/maml/elements/video/BaseVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->onSurfaceDestroyed()V

    return-void
.end method
