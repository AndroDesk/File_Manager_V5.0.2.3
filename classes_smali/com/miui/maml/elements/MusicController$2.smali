.class Lcom/miui/maml/elements/MusicController$2;
.super Landroid/media/session/MediaController$Callback;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/MusicController;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 3
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 4
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 4
    const-string v0, "MAML_MusicController"

    .line 6
    const-string v1, "onMetadataChanged"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 13
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 21
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 4
    const-string v0, "MAML_MusicController"

    .line 6
    const-string v1, "onPlaybackStateChanged"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 13
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_39

    .line 19
    if-eqz p1, :cond_2f

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 23
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 30
    move-result v1

    .line 31
    invoke-interface {v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 34
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 36
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    .line 43
    move-result-wide v1

    .line 44
    invoke-interface {v0, v1, v2}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackActionUpdate(J)V

    .line 47
    goto :goto_39

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 50
    invoke-static {p1}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 4
    return-void
.end method

.method public onSessionDestroyed()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    .line 4
    const-string v0, "MAML_MusicController"

    .line 6
    const-string v1, "onSessionDestroyed"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 13
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 21
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onSessionDestroyed()V

    .line 28
    :cond_1b
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    const-string p1, "MAML_MusicController"

    .line 6
    const-string p2, "onSessionEvent"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method
