.class public Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;
.super Landroid/app/Service;
.source "FloatingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingService"


# instance fields
.field private final mBinder:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

.field private final mNotifyIdentity:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServiceNotify:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceNotifyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;

    .line 27
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)V

    .line 30
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mBinder:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 32
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->getPageCount(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->findPreviousIdentity(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;I)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->checkFinishing(ILjava/lang/String;I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->notifyPreviousSlide(ILjava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->onMethodCall(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->getCompatTaskId(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private checkFinishing(ILjava/lang/String;I)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    :try_start_4
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 7
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 10
    move-result v1

    .line 11
    invoke-direct {p0, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->findNextIdentity(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    move p3, v0

    .line 16
    :goto_f
    if-ge p3, v1, :cond_43

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 20
    invoke-virtual {v2, p3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_36

    .line 34
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 36
    invoke-virtual {p2, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-interface {p2, p1, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 46
    move-result-object p1

    .line 47
    const-string p2, "check_finishing"

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 52
    move-result p1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_34} :catch_3b
    .catchall {:try_start_4 .. :try_end_34} :catchall_39

    .line 53
    move v0, p1

    .line 54
    goto :goto_43

    .line 55
    :cond_36
    add-int/lit8 p3, p3, 0x1

    .line 57
    goto :goto_f

    .line 58
    :catchall_39
    move-exception p1

    .line 59
    goto :goto_49

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    :try_start_3c
    const-string p2, "FloatingService"

    .line 63
    const-string p3, "checkFinishing is faulty"

    .line 65
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_39

    .line 68
    :cond_43
    :goto_43
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 70
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 73
    return v0

    .line 74
    :goto_49
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 76
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 79
    throw p1
.end method

.method private findNextIdentity(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 19
    :goto_12
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_39

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Integer;

    .line 49
    if-eqz v3, :cond_1c

    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result v3

    .line 55
    if-ne v3, v0, :cond_1c

    .line 57
    return-object v2

    .line 58
    :cond_39
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->getCompatTaskId(I)I

    .line 61
    move-result p2

    .line 62
    const/4 v0, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ljava/util/LinkedList;

    .line 72
    if-eqz p2, :cond_62

    .line 74
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object p2

    .line 78
    :goto_4d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_62

    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/String;

    .line 90
    if-eqz v0, :cond_5d

    .line 92
    move-object v1, v2

    .line 93
    goto :goto_62

    .line 94
    :cond_5d
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 97
    move-result v0

    .line 98
    goto :goto_4d

    .line 99
    :cond_62
    :goto_62
    return-object v1
.end method

.method private findPreviousIdentity(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->getCompatTaskId(I)I

    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/util/LinkedList;

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_28

    .line 16
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p2

    .line 20
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_28

    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_26

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    move-object v0, v1

    .line 40
    goto :goto_13

    .line 41
    :cond_28
    :goto_28
    return-object v0
.end method

.method private getCompatTaskId(I)I
    .registers 3

    .line 1
    if-nez p1, :cond_11

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_11

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Landroid/util/SparseArray;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 17
    move-result p1

    .line 18
    :cond_11
    return p1
.end method

.method private getPageCount(I)I
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->getCompatTaskId(I)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mNotifyIdentity:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/LinkedList;

    .line 13
    if-eqz p1, :cond_13

    .line 15
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method private notifyPreviousSlide(ILjava/lang/String;I)V
    .registers 6

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->getCompatTaskId(I)I

    .line 13
    move-result p3

    .line 14
    invoke-direct {p0, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->findPreviousIdentity(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x0

    .line 19
    :goto_12
    if-ge p3, v0, :cond_34

    .line 21
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 23
    invoke-virtual {v1, p3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_31

    .line 37
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 39
    invoke-virtual {p2, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 45
    const/4 p3, 0x0

    .line 46
    invoke-interface {p2, p1, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    add-int/lit8 p3, p3, 0x1

    .line 52
    goto :goto_12

    .line 53
    :cond_34
    :goto_34
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 58
    return-void
.end method

.method private onMethodCall(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_18

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {v2, p1, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_7

    .line 25
    :cond_18
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mServiceNotify:Landroid/os/RemoteCallbackList;

    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 30
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->mBinder:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method
