.class public Lmiuix/responsive/map/ResponsiveStateManager;
.super Ljava/lang/Object;
.source "ResponsiveStateManager.java"


# static fields
.field private static mapState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/map/ResponsiveState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lmiuix/responsive/map/ResponsiveStateManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiuix/responsive/map/ResponsiveStateManager;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lmiuix/responsive/map/ResponsiveStateManager;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lmiuix/responsive/map/ResponsiveStateManager;

    .line 14
    invoke-direct {v1}, Lmiuix/responsive/map/ResponsiveStateManager;-><init>()V

    .line 17
    sput-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    .line 26
    return-object v0
.end method


# virtual methods
.method public getResponsiveState(Landroid/content/Context;)Lmiuix/responsive/map/ResponsiveState;
    .registers 4

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lmiuix/responsive/map/ResponsiveState;

    .line 21
    if-nez v0, :cond_24

    .line 23
    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    .line 25
    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    .line 28
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_24
    return-object v0
.end method

.method public getScreenMode(Landroid/content/Context;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_5

    .line 3
    const/16 p1, 0x1007

    .line 5
    return p1

    .line 6
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result p1

    .line 10
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lmiuix/responsive/map/ResponsiveState;

    .line 22
    if-nez v0, :cond_25

    .line 24
    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    .line 26
    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    .line 29
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_25
    invoke-virtual {v0}, Lmiuix/responsive/map/ResponsiveState;->getScreenMode()I

    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;
    .registers 5

    .line 1
    if-eqz p1, :cond_26

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result p1

    .line 7
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/responsive/map/ResponsiveState;

    .line 19
    if-nez v0, :cond_22

    .line 21
    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    .line 23
    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    .line 26
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_22
    invoke-virtual {v0, p2}, Lmiuix/responsive/map/ResponsiveState;->updateFromWindowInfoWrapper(Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)V

    .line 38
    return-object v0

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public remove(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method
