.class Lmiui/app/MiuiFreeFormManager$1;
.super Landroid/util/Singleton;
.source "MiuiFreeFormManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/MiuiFreeFormManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lmiui/app/IMiuiFreeFormManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiui/app/MiuiFreeFormManager$1;->create()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    return-object v0
.end method

.method public create()Lmiui/app/IMiuiFreeFormManager;
    .registers 5

    .line 2
    :try_start_0
    const-class v0, Landroid/app/ActivityTaskManager;

    const-class v1, Landroid/app/IActivityTaskManager;

    const-string v2, "getService"

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3, v3}, Landroid/util/MiuiMultiWindowUtils;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getMiuiFreeFormManagerService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 4
    invoke-static {v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    .line 5
    throw v0
.end method
