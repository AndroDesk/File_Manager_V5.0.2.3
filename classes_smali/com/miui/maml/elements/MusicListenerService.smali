.class public Lcom/miui/maml/elements/MusicListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "MusicListenerService.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicListenerService$RCBinder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.service.notification.MusicListenerService"

.field private static final BITMAP_HEIGHT:I = 0x400

.field private static final BITMAP_WIDTH:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "MusicListenerService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mClientUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/RemoteController$OnClientUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/elements/MusicListenerService$RCBinder;

    .line 6
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicListenerService$RCBinder;-><init>(Lcom/miui/maml/elements/MusicListenerService;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 18
    return-void
.end method

.method private disableRemoteController()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 7
    const-string v1, "audio"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/media/AudioManager;

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 17
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 23
    :cond_16
    return-void
.end method

.method private enableRemoteController()V
    .registers 6

    .line 1
    const-string v0, "fail to register RemoteController!"

    .line 3
    const-string v1, "MusicListenerService"

    .line 5
    iget-boolean v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 7
    if-nez v2, :cond_3b

    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 11
    const-string v3, "audio"

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/media/AudioManager;

    .line 19
    new-instance v3, Landroid/media/RemoteController;

    .line 21
    iget-object v4, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {v3, v4, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 26
    iput-object v3, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 28
    :try_start_1b
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 31
    move-result v2

    .line 32
    iput-boolean v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_22

    .line 34
    goto :goto_26

    .line 35
    :catch_22
    move-exception v2

    .line 36
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_26
    iget-boolean v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 41
    if-eqz v2, :cond_38

    .line 43
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 45
    const/16 v1, 0x400

    .line 47
    invoke-virtual {v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(II)Z

    .line 50
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    .line 56
    goto :goto_3b

    .line 57
    :cond_38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public getRemoteController()Landroid/media/RemoteController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 3
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.service.notification.MusicListenerService"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const-string v0, "MusicListenerService"

    .line 13
    if-eqz p1, :cond_16

    .line 15
    const-string p1, "onBind: success"

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 22
    return-object p1

    .line 23
    :cond_16
    const-string p1, "onBind: fail"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public onClientChange(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_24

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 25
    if-eqz v2, :cond_1e

    .line 27
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    .line 30
    goto :goto_6

    .line 31
    :cond_1e
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    goto :goto_6

    .line 37
    :cond_24
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2f

    .line 45
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 48
    :cond_2f
    return-void
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_24

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 25
    if-eqz v2, :cond_1e

    .line 27
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    .line 30
    goto :goto_6

    .line 31
    :cond_1e
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    goto :goto_6

    .line 37
    :cond_24
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2f

    .line 45
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 48
    :cond_2f
    return-void
.end method

.method public onClientNowPlayingContentChange()V
    .registers 1

    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .registers 2

    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v2, :cond_1e

    .line 3
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_6

    .line 4
    :cond_1e
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5
    :cond_24
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2f
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .registers 18

    move-object v0, p0

    .line 7
    iget-object v1, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v4, :cond_25

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    move/from16 v10, p6

    .line 9
    invoke-interface/range {v4 .. v10}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_7

    .line 10
    :cond_25
    iget-object v3, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 11
    :cond_2b
    iget-object v1, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 12
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_36
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_24

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 25
    if-eqz v2, :cond_1e

    .line 27
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    .line 30
    goto :goto_6

    .line 31
    :cond_1e
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    goto :goto_6

    .line 37
    :cond_24
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2f

    .line 45
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 48
    :cond_2f
    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .registers 2

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 7
    new-instance v0, Landroid/media/RemoteController;

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {v0, v1, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 16
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 4
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 4
    const-string v0, "onNotificationPosted: pkg = "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "MusicListenerService"

    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 4
    return-void
.end method

.method public registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->enableRemoteController()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_24

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 22
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 28
    if-eqz v1, :cond_9

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_9

    .line 36
    return-void

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 41
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_26

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 25
    if-eqz v2, :cond_20

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_6

    .line 33
    :cond_20
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    goto :goto_6

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_31

    .line 47
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 50
    :cond_31
    return-void
.end method
