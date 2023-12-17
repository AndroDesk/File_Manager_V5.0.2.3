.class public final Lw3/f;
.super Ljava/lang/Object;
.source "RequestEnvBuilderCompat.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;


# instance fields
.field public final synthetic a:Lw3/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lw3/c$a;)V
    .registers 2

    iput-object p1, p0, Lw3/f;->a:Lw3/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccountName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lw3/i$a;

    invoke-virtual {v0, v1}, Lw3/i$a;->b(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoRetryInterval()J
    .registers 3

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getMaxRetryCount()I
    .registers 2

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    check-cast v0, Lw3/i$a;

    invoke-virtual {v0}, Lw3/i$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateAuthToken()V
    .registers 3

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lw3/i$a;

    invoke-virtual {v0, v1}, Lw3/i$a;->d(Landroid/content/Context;)V

    return-void
.end method

.method public final queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;
    .registers 15

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lw3/i$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    :goto_f
    const/4 v6, 0x3

    const-string v7, "RequestEvnCompat_V18"

    if-ge v2, v6, :cond_da

    :try_start_14
    invoke-virtual {v0, v1}, Lw3/i$a;->b(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v9

    if-nez v9, :cond_2a

    new-instance v5, Lmicloud/compat/independent/request/QueryAuthTokenException;

    const-string v6, "Account is null when getting service token"

    invoke-direct {v5, v6}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    :cond_2a
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v10, "micloud"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    invoke-static {v6}, Lw3/i;->a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;

    move-result-object v1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_a4
    .catch Landroid/accounts/OperationCanceledException; {:try_start_14 .. :try_end_3b} :catch_93
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_3b} :catch_7c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_3b} :catch_6c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_14 .. :try_end_3b} :catch_3d

    goto/16 :goto_db

    :catch_3d
    move-exception v5

    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AuthenticatorException when getting service token(isInvalidateAuthToken="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez v4, :cond_68

    invoke-virtual {v0, v1}, Lw3/i$a;->d(Landroid/content/Context;)V

    const/4 v4, 0x1

    goto/16 :goto_d5

    :cond_68
    move-object v1, v3

    move-object v5, v6

    goto/16 :goto_db

    :catch_6c
    move-exception v5

    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    const-string v8, "TimeoutException when getting service token, retry if needed"

    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d5

    :catch_7c
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Lmicloud/compat/independent/request/QueryAuthTokenException;

    const-string v4, "InterruptedException when getting service token"

    invoke-direct {v2, v4, v1}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a2

    :catch_93
    move-exception v1

    new-instance v2, Lmicloud/compat/independent/request/QueryAuthTokenException;

    const-string v4, "OperationCanceledException when getting service token"

    invoke-direct {v2, v4, v1}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a2
    move-object v5, v2

    goto :goto_da

    :catch_a4
    move-exception v5

    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    const-string v8, "IOException when getting service token"

    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x2

    if-ge v2, v5, :cond_d5

    :try_start_b6
    sget-object v5, Lw3/i;->c:[I

    aget v5, v5, v2

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_be} :catch_bf

    goto :goto_d5

    :catch_bf
    move-exception v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    const-string v8, "InterruptedException when sleep"

    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d5
    :goto_d5
    move-object v5, v6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_da
    :goto_da
    move-object v1, v3

    :goto_db
    if-eqz v1, :cond_f6

    iget-object v2, v0, Lw3/i$a;->a:Lw3/i;

    iget-object v2, v2, Lw3/i;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, v0, Lw3/i$a;->a:Lw3/i;

    iget-object v0, v0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_f1

    goto :goto_f5

    :cond_f1
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v3

    :goto_f5
    return-object v3

    :cond_f6
    if-nez v5, :cond_106

    new-instance v5, Lmicloud/compat/independent/request/QueryAuthTokenException;

    const-string v0, "AccountManager getAuthToken returns null"

    invoke-direct {v5, v0}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    throw v5
.end method

.method public final queryEncryptedAccountName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lw3/i$a;

    invoke-virtual {v0, v1}, Lw3/i$a;->b(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    new-instance v1, Lw3/f$a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lw3/f$a;-><init>(Lw3/f;Landroid/content/Context;Landroid/accounts/Account;)V

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final shouldUpdateHost()Z
    .registers 2

    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method
