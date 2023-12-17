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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lw3/f;Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    iput-object p1, p0, Lw3/f$a;->b:Lw3/f;

    iput-object p3, p0, Lw3/f$a;->a:Landroid/accounts/Account;

    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 4

    sget-object v0, Lw3/a;->a:La/b;

    invoke-virtual {v0, p1, p2}, La/b;->j(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public final invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lw3/f$a;->b:Lw3/f;

    iget-object v0, v0, Lw3/f;->a:Lw3/c$a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    iget-object v1, p0, Lw3/f$a;->a:Landroid/accounts/Account;

    check-cast v0, Lw3/i$a;

    invoke-virtual {v0, p1, v1}, Lw3/i$a;->a(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
