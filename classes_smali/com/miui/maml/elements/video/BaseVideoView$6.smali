.class Lcom/miui/maml/elements/video/BaseVideoView$6;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    move-result v1

    .line 7
    iput v1, v0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 11
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 19
    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 27
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 32
    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$800(Lcom/miui/maml/elements/video/BaseVideoView;)Z

    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 39
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 41
    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F

    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 47
    invoke-static {v1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F

    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 54
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 56
    const/4 v0, 0x2

    .line 57
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 60
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 62
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getDuration()I

    .line 65
    move-result v0

    .line 66
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$1000(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 69
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 71
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 74
    move-result p1

    .line 75
    const/4 v0, 0x3

    .line 76
    if-ne p1, v0, :cond_52

    .line 78
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 80
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    .line 83
    :cond_52
    return-void
.end method
