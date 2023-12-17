.class public final Lw3/f$a;
.super Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.source "RequestEnvBuilderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/f;->queryEncryptedAccountName()Ljava/lang/String;
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
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Lw3/f;


# direct methods
.method public constructor <init>(Lw3/f;Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lw3/f$a;->b:Lw3/f;

    .line 3
    iput-object p3, p0, Lw3/f$a;->a:Landroid/accounts/Account;

    .line 5
    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
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

.method public final invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lw3/f$a;->b:Lw3/f;

    .line 3
    iget-object v0, v0, Lw3/f;->a:Lw3/c$a;

    .line 5
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 8
    iget-object v1, p0, Lw3/f$a;->a:Landroid/accounts/Account;

    .line 10
    check-cast v0, Lw3/i$a;

    .line 12
    invoke-virtual {v0, p1, v1}, Lw3/i$a;->a(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
