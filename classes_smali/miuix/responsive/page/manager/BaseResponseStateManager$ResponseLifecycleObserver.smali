.class Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;
.super Ljava/lang/Object;
.source "BaseResponseStateManager.java"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseLifecycleObserver"
.end annotation


# instance fields
.field private mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

.field public final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Lmiuix/responsive/page/manager/BaseResponseStateManager;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 8
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->destroy()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 9
    return-void
.end method
