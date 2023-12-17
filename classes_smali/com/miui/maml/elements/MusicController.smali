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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/maml/elements/MusicController$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicController$1;-><init>(Lcom/miui/maml/elements/MusicController;)V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    new-instance v0, Lcom/miui/maml/elements/MusicController$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicController$2;-><init>(Lcom/miui/maml/elements/MusicController;)V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    const-string p2, "media_session"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicController;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/MusicController;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    return-object p0
.end method

.method private clearMediaController()V
    .registers 4

    const-string v0, "MAML_MusicController"

    const-string v1, "clearMediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    const-string v1, "unregister MediaController.Callback failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    :cond_22
    return-void
.end method

.method private initMediaController()V
    .registers 5

    const-string v0, "MAML_MusicController"

    const-string v1, "initMediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_18

    :try_start_b
    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    iget-object v3, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    const-string v1, "register MediaController.Callback failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "MAML_MusicController"

    const-string v1, "resetMediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->clearMediaController()V

    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaController;

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    :cond_1b
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->initMediaController()V

    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->updateInfoToListener()V

    :cond_21
    return-void
.end method

.method private updateInfoToListener()V
    .registers 3

    const-string v0, "MAML_MusicController"

    const-string v1, "updateInfoToListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    :cond_23
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    const-string v0, "MAML_MusicController"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->clearMediaController()V

    return-void
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getEstimatedMediaPosition()J
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .registers 5

    const-string v0, "MAML_MusicController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    return-void
.end method

.method public isMusicActive()Z
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    const/4 v2, 0x6

    if-ne v0, v2, :cond_16

    :cond_15
    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public rating(Landroid/media/Rating;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_23

    :catch_c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RATING_KEY_BY_USER: failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAML_MusicController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void
.end method

.method public registerListener(Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->updateInfoToListener()V

    return-void
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    return-void
.end method

.method public seekTo(J)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    const/4 p1, 0x1

    return p1

    :catch_d
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " seekTo failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAML_MusicController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public sendMediaKeyEvent(II)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2c

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    const/16 p1, 0x1002

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent;->setSource(I)V

    iget-object p1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    :catch_15
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Send media key event failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAML_MusicController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    return-void
.end method
