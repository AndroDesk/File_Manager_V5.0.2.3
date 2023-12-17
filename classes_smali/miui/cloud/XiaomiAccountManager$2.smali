.class Lmiui/cloud/XiaomiAccountManager$2;
.super Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.source "XiaomiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/XiaomiAccountManager;->invalidateSnsAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$accessToken:Ljava/lang/String;

.field public final synthetic val$type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lmiui/cloud/XiaomiAccountManager$2;->val$type:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lmiui/cloud/XiaomiAccountManager$2;->val$accessToken:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    .line 8
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 4

    .line 1
    sget-object v0, Lw3/a;->a:La/b;

    .line 3
    invoke-virtual {v0, p1, p2}, La/b;->j(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Boolean;
    .registers 5

    .line 2
    iget-object v0, p0, Lmiui/cloud/XiaomiAccountManager$2;->val$type:Ljava/lang/String;

    iget-object v1, p0, Lmiui/cloud/XiaomiAccountManager$2;->val$accessToken:Ljava/lang/String;

    .line 3
    sget-object v2, La4/a;->a:La/b;

    invoke-virtual {v2, p1, v0, v1}, La/b;->I(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiui/cloud/XiaomiAccountManager$2;->invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
