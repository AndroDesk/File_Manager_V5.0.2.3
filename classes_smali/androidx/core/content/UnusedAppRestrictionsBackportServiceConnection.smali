.class Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;
.super Ljava/lang/Object;
.source "UnusedAppRestrictionsBackportServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasBoundService:Z

.field public mResultFuture:Ls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUnusedAppRestrictionsService:Le0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Le0/b;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 10
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method

.method private getBackportCallback()Le0/a;
    .registers 2

    .line 1
    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;

    .line 3
    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public connectAndFetchResult(Ls/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 3
    if-nez v0, :cond_24

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 8
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Ls/a;

    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 12
    const-string v1, "android.support.unusedapprestrictions.action.CustomUnusedAppRestrictionsBackportService"

    .line 14
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 31
    iget-object v1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v1, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 36
    return-void

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    const-string v0, "Each UnusedAppRestrictionsBackportServiceConnection can only be bound once."

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1
.end method

.method public disconnectFromService()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 8
    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "bindService must be called before unbind"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    invoke-static {p2}, Le0/b$a;->asInterface(Landroid/os/IBinder;)Le0/b;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Le0/b;

    .line 7
    :try_start_6
    invoke-direct {p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->getBackportCallback()Le0/a;

    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Le0/b;->isPermissionRevocationEnabledForApp(Le0/a;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 14
    goto :goto_18

    .line 15
    :catch_e
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Ls/a;

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 25
    :goto_18
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Le0/b;

    .line 4
    return-void
.end method
