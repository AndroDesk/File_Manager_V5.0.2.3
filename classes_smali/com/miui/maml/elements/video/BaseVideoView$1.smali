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
.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne p1, v1, :cond_d

    .line 12
    move p1, p2

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move p1, v0

    .line 15
    :goto_e
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 17
    iget v2, v1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 19
    if-ne v2, p3, :cond_19

    .line 21
    iget p3, v1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 23
    if-ne p3, p4, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move p2, v0

    .line 27
    :goto_1a
    invoke-static {v1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$100(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;

    .line 30
    move-result-object p3

    .line 31
    if-eqz p3, :cond_3a

    .line 33
    if-eqz p1, :cond_3a

    .line 35
    if-eqz p2, :cond_3a

    .line 37
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 39
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_35

    .line 45
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 47
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 50
    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    .line 54
    :cond_35
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 56
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    .line 59
    :cond_3a
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "surfaceCreated "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BaseVideoView"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 25
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 28
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 30
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$300(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 33
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->onSurfaceDestroyed()V

    .line 6
    return-void
.end method
