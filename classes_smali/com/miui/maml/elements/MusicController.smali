.class public Lcom/miui/maml/elements/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MAML_MusicController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaCallback:Landroid/media/session/MediaController$Callback;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/elements/MusicController$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicController$1;-><init>(Lcom/miui/maml/elements/MusicController;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 11
    new-instance v0, Lcom/miui/maml/elements/MusicController$2;

    .line 13
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicController$2;-><init>(Lcom/miui/maml/elements/MusicController;)V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    .line 26
    const-string p2, "media_session"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/media/session/MediaSessionManager;

    .line 34
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicController;->init()V

    .line 39
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/MusicController;Ljava/util/List;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 3
    return-object p0
.end method

.method private clearMediaController()V
    .registers 4

    .line 1
    const-string v0, "MAML_MusicController"

    .line 3
    const-string v1, "clearMediaController"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 10
    if-eqz v1, :cond_22

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    invoke-interface {v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    .line 19
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 21
    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    .line 23
    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_1f

    .line 27
    :catch_1a
    const-string v1, "unregister MediaController.Callback failed"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_1f
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 35
    :cond_22
    return-void
.end method

.method private initMediaController()V
    .registers 5

    .line 1
    const-string v0, "MAML_MusicController"

    .line 3
    const-string v1, "initMediaController"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 10
    if-eqz v1, :cond_18

    .line 12
    :try_start_b
    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    .line 14
    iget-object v3, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    .line 19
    goto :goto_18

    .line 20
    :catch_13
    const-string v1, "register MediaController.Callback failed"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_18
    :goto_18
    return-void
.end method

.method private resetMediaController(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "MAML_MusicController"

    .line 3
    const-string v1, "resetMediaController"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->clearMediaController()V

    .line 11
    if-eqz p1, :cond_21

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1b

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/media/session/MediaController;

    .line 26
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 28
    :cond_1b
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->initMediaController()V

    .line 31
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->updateInfoToListener()V

    .line 34
    :cond_21
    return-void
.end method

.method private updateInfoToListener()V
    .registers 3

    .line 1
    const-string v0, "MAML_MusicController"

    .line 3
    const-string v1, "updateInfoToListener"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 10
    if-eqz v0, :cond_2e

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 14
    if-eqz v0, :cond_2e

    .line 16
    invoke-interface {v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 21
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_23

    .line 27
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 29
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 32
    move-result v0

    .line 33
    invoke-interface {v1, v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 38
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 40
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    .line 47
    :cond_2e
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    const-string v0, "MAML_MusicController"

    .line 3
    const-string v1, "finish"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 10
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 15
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->clearMediaController()V

    .line 18
    return-void
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getEstimatedMediaPosition()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_f
    const-wide/16 v0, 0x0

    .line 18
    return-wide v0
.end method

.method public init()V
    .registers 5

    .line 1
    const-string v0, "MAML_MusicController"

    .line 3
    const-string v1, "init"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 20
    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 22
    iget-object v3, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 27
    return-void
.end method

.method public isMusicActive()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_16

    .line 12
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v0, v2, :cond_15

    .line 19
    const/4 v2, 0x6

    .line 20
    if-ne v0, v2, :cond_16

    .line 22
    :cond_15
    const/4 v1, 0x1

    .line 23
    :cond_16
    return v1
.end method

.method public rating(Landroid/media/Rating;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 3
    if-eqz v0, :cond_23

    .line 5
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    goto :goto_23

    .line 13
    :catch_c
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "RATING_KEY_BY_USER: failed: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "MAML_MusicController"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_23
    :goto_23
    return-void
.end method

.method public registerListener(Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->updateInfoToListener()V

    .line 6
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    .line 11
    return-void
.end method

.method public seekTo(J)Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 3
    if-eqz v0, :cond_24

    .line 5
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catch_d
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v0, " seekTo failed: "

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string p2, "MAML_MusicController"

    .line 34
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public sendMediaKeyEvent(II)Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 3
    if-eqz v0, :cond_2c

    .line 5
    new-instance v0, Landroid/view/KeyEvent;

    .line 7
    invoke-direct {v0, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 10
    const/16 p1, 0x1002

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 15
    iget-object p1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    .line 17
    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 20
    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 21
    return p1

    .line 22
    :catch_15
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v0, "Send media key event failed: "

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string p2, "MAML_MusicController"

    .line 42
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public unregisterListener()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 4
    return-void
.end method
