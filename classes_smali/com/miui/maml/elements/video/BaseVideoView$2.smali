.class Lcom/miui/maml/elements/video/BaseVideoView$2;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I

    .line 7
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 9
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 12
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 14
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getDuration()I

    .line 17
    move-result v0

    .line 18
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$500(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 21
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 23
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$600(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_26

    .line 29
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 31
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$700(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;

    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 39
    :cond_26
    return-void
.end method
