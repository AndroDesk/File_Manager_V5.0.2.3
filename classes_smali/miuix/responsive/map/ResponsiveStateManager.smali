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

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiuix/responsive/map/ResponsiveStateManager;
    .registers 2

    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    if-nez v0, :cond_17

    const-class v0, Lmiuix/responsive/map/ResponsiveStateManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    if-nez v1, :cond_12

    new-instance v1, Lmiuix/responsive/map/ResponsiveStateManager;

    invoke-direct {v1}, Lmiuix/responsive/map/ResponsiveStateManager;-><init>()V

    sput-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    return-object v0
.end method


# virtual methods
.method public getResponsiveState(Landroid/content/Context;)Lmiuix/responsive/map/ResponsiveState;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/responsive/map/ResponsiveState;

    if-nez v0, :cond_24

    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v0
.end method

.method public getScreenMode(Landroid/content/Context;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_5

    const/16 p1, 0x1007

    return p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/responsive/map/ResponsiveState;

    if-nez v0, :cond_25

    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    invoke-virtual {v0}, Lmiuix/responsive/map/ResponsiveState;->getScreenMode()I

    move-result p1

    return p1
.end method

.method public recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;
    .registers 5

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/responsive/map/ResponsiveState;

    if-nez v0, :cond_22

    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    invoke-virtual {v0, p2}, Lmiuix/responsive/map/ResponsiveState;->updateFromWindowInfoWrapper(Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)V

    return-object v0

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
