.class Lcom/miui/maml/elements/video/BaseVideoView$5;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    move-result p3

    .line 7
    iput p3, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 9
    iget-object p2, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 11
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 14
    move-result p1

    .line 15
    iput p1, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 17
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 19
    iget p2, p1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 21
    if-eqz p2, :cond_1d

    .line 23
    iget p2, p1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 25
    if-eqz p2, :cond_1d

    .line 27
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateVideoSize()V

    .line 30
    :cond_1d
    return-void
.end method
