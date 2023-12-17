.class public final Lmiuix/animation/internal/TargetHandler;
.super Landroid/os/Handler;
.source "TargetHandler.java"


# static fields
.field public static final ANIM_MSG_END:I = 0x2

.field public static final ANIM_MSG_REMOVE_WAIT:I = 0x3

.field public static final ANIM_MSG_REPLACED:I = 0x5

.field public static final ANIM_MSG_START_TAG:I = 0x0

.field public static final ANIM_MSG_UPDATE_LISTENER:I = 0x4

.field private static final MASS_UPDATE_THRESHOLD:I = 0x9c40


# instance fields
.field private final mTarget:Lmiuix/animation/IAnimTarget;

.field private final mTransList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final threadId:J


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lmiuix/animation/internal/TargetHandler;->threadId:J

    .line 31
    return-void
.end method

.method private static notifyStartOrEnd(Lmiuix/animation/internal/TransitionInfo;Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xfa0

    .line 7
    if-le v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_30

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lmiuix/animation/listener/UpdateInfo;

    .line 28
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 30
    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 32
    if-eq v2, v3, :cond_22

    .line 34
    goto :goto_f

    .line 35
    :cond_22
    if-eqz p1, :cond_2a

    .line 37
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 39
    invoke-static {v2, v1}, Lmiuix/animation/styles/ForegroundColorStyle;->start(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V

    .line 42
    goto :goto_f

    .line 43
    :cond_2a
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 45
    invoke-static {v2, v1}, Lmiuix/animation/styles/ForegroundColorStyle;->end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V

    .line 48
    goto :goto_f

    .line 49
    :cond_30
    return-void
.end method

.method private onEnd(Lmiuix/animation/internal/TransitionInfo;I)V
    .registers 7

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4f

    .line 8
    const-string v0, "<<< onEnd, info.id = "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, ", reason = "

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ", info.key = "

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, " "

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, ", info.startTime = "

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-wide v2, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ", target = "

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    new-array v2, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_4f
    invoke-direct {p0, v1, p1}, Lmiuix/animation/internal/TargetHandler;->update(ZLmiuix/animation/internal/TransitionInfo;)V

    .line 83
    invoke-static {p1, v1}, Lmiuix/animation/internal/TargetHandler;->notifyStartOrEnd(Lmiuix/animation/internal/TransitionInfo;Z)V

    .line 86
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 88
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 90
    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->removePendingRemovedInfo(Lmiuix/animation/internal/TransitionInfo;)Z

    .line 93
    const/4 v0, 0x4

    .line 94
    if-ne p2, v0, :cond_6d

    .line 96
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 98
    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 101
    move-result-object p2

    .line 102
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 104
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 106
    invoke-virtual {p2, v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    goto :goto_7a

    .line 110
    :cond_6d
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 112
    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 115
    move-result-object p2

    .line 116
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 118
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 120
    invoke-virtual {p2, v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :goto_7a
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 125
    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 128
    move-result-object p2

    .line 129
    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 131
    invoke-virtual {p2, p1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method private onReplaced(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_47

    .line 7
    const-string v0, "<<< onReplaced, info.id = "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", info.key = "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", info.startTime = "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", target = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_47
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 74
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 76
    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->removePendingRemovedInfo(Lmiuix/animation/internal/TransitionInfo;)Z

    .line 79
    invoke-virtual {p1}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    .line 82
    move-result v0

    .line 83
    const/16 v1, 0xfa0

    .line 85
    if-gt v0, v1, :cond_65

    .line 87
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 89
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 95
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 97
    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 102
    :cond_65
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 104
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 110
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 112
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 117
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 120
    move-result-object v0

    .line 121
    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 123
    invoke-virtual {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private onStart(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4b

    .line 7
    const-string v0, ">>> onStart, info.id = "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", info.key = "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", info.starTime = "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-wide v1, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", mRunningInfo.contains = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 45
    iget-object v1, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 47
    iget-object v1, v1, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", target = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x0

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_4b
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 78
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 84
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 86
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    .line 89
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 91
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 97
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 99
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_82

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 113
    move-result v1

    .line 114
    const/16 v2, 0xfa0

    .line 116
    if-gt v1, v2, :cond_82

    .line 118
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 120
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 123
    move-result-object v1

    .line 124
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 126
    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 128
    invoke-virtual {v1, v2, v3, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 131
    :cond_82
    const/4 v0, 0x1

    .line 132
    invoke-static {p1, v0}, Lmiuix/animation/internal/TargetHandler;->notifyStartOrEnd(Lmiuix/animation/internal/TransitionInfo;Z)V

    .line 135
    return-void
.end method

.method private static setValueAndNotify(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_6

    .line 3
    instance-of p4, p0, Lmiuix/animation/ViewTarget;

    .line 5
    if-eqz p4, :cond_9

    .line 7
    :cond_6
    invoke-static {p0, p3}, Lmiuix/animation/internal/TargetHandler;->updateValueAndVelocity(Lmiuix/animation/IAnimTarget;Ljava/util/List;)V

    .line 10
    :cond_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 13
    move-result p4

    .line 14
    const v0, 0x9c40

    .line 17
    if-le p4, v0, :cond_1a

    .line 19
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->notifyMassUpdate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    goto :goto_28

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 30
    move-result-object p4

    .line 31
    invoke-virtual {p4, p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 34
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier;->notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 41
    :goto_28
    return-void
.end method

.method private update(ZLmiuix/animation/internal/TransitionInfo;)V
    .registers 8

    .line 5
    iget-object v0, p2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    if-eqz v0, :cond_5a

    iget-object v0, p2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 6
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->shouldCheckValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    iget-object v1, p2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/listener/UpdateInfo;

    .line 9
    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v3, v3, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-static {v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v3

    if-nez v3, :cond_25

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 11
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 12
    iget-object v1, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v2, p2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-static {v1, v2, p2, v0, p1}, Lmiuix/animation/internal/TargetHandler;->setValueAndNotify(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V

    goto :goto_5a

    .line 13
    :cond_4f
    iget-object v0, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v1, p2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v2, p2, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-static {v0, v1, v2, p2, p1}, Lmiuix/animation/internal/TargetHandler;->setValueAndNotify(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method private static updateValueAndVelocity(Lmiuix/animation/IAnimTarget;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1f

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 17
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 19
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 21
    invoke-static {v1, v2}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    goto :goto_4

    .line 28
    :cond_1b
    invoke-virtual {v0, p0}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    .line 31
    goto :goto_4

    .line 32
    :cond_1f
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    if-eqz v0, :cond_ec

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, ", target "

    .line 9
    const-string v4, ", obj info = "

    .line 11
    const-string v5, ", info.id = "

    .line 13
    if-eq v0, v1, :cond_9c

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_92

    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_69

    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq v0, v1, :cond_19

    .line 24
    goto/16 :goto_ff

    .line 26
    :cond_19
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 28
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 40
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_5b

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v6, "<<< handler ANIM_MSG_REPLACED, , info = "

    .line 53
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 64
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v3, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_5b
    if-nez v0, :cond_62

    .line 94
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    move-object v0, p1

    .line 97
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 99
    :cond_62
    if-eqz v0, :cond_ff

    .line 101
    invoke-direct {p0, v0}, Lmiuix/animation/internal/TargetHandler;->onReplaced(Lmiuix/animation/internal/TransitionInfo;)V

    .line 104
    goto/16 :goto_ff

    .line 106
    :cond_69
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 108
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object p1

    .line 114
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    .line 120
    if-eqz p1, :cond_ff

    .line 122
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 124
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 130
    invoke-virtual {v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 135
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 141
    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 143
    invoke-virtual {v0, v1, p1}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    .line 146
    goto :goto_ff

    .line 147
    :cond_92
    iget-object p1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 149
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 151
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 153
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 156
    goto :goto_ff

    .line 157
    :cond_9c
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 159
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v1

    .line 165
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 171
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_de

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v6, "<<< handler ANIM_MSG_END, , info = "

    .line 184
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 195
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v3, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 218
    new-array v2, v2, [Ljava/lang/Object;

    .line 220
    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_de
    if-nez v0, :cond_e4

    .line 225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 229
    :cond_e4
    if-eqz v0, :cond_ff

    .line 231
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 233
    invoke-direct {p0, v0, p1}, Lmiuix/animation/internal/TargetHandler;->onEnd(Lmiuix/animation/internal/TransitionInfo;I)V

    .line 236
    goto :goto_ff

    .line 237
    :cond_ec
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 239
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object p1

    .line 245
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    .line 251
    if-eqz p1, :cond_ff

    .line 253
    invoke-direct {p0, p1}, Lmiuix/animation/internal/TargetHandler;->onStart(Lmiuix/animation/internal/TransitionInfo;)V

    .line 256
    :cond_ff
    :goto_ff
    return-void
.end method

.method public isInTargetThread()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public runUpdate(Z)V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_13

    .line 11
    new-instance v0, Lmiuix/animation/internal/TargetHandler$1;

    .line 13
    invoke-direct {v0, p0, p1}, Lmiuix/animation/internal/TargetHandler$1;-><init>(Lmiuix/animation/internal/TargetHandler;Z)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/TargetHandler;->update(Z)V

    .line 23
    :goto_16
    return-void
.end method

.method public update(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v1, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 3
    invoke-direct {p0, p1, v1}, Lmiuix/animation/internal/TargetHandler;->update(ZLmiuix/animation/internal/TransitionInfo;)V

    goto :goto_f

    .line 4
    :cond_1f
    iget-object p1, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
