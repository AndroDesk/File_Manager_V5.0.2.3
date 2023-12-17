.class Lmiui/cloud/XiaomiAccountManager$1;
.super Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.source "XiaomiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/XiaomiAccountManager;->getSnsAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lmiui/cloud/XiaomiAccountManager$1;->val$type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 4

    sget-object v0, Lw3/a;->a:La/b;

    invoke-virtual {v0, p1, p2}, La/b;->j(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/cloud/XiaomiAccountManager$1;->invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/cloud/XiaomiAccountManager$1;->val$type:Ljava/lang/String;

    sget-object v1, La4/a;->a:La/b;

    invoke-virtual {v1, p1, v0}, La/b;->E(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
