.class public final Lw3/f;
.super Ljava/lang/Object;
.source "RequestEnvBuilderCompat.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;


# instance fields
.field public final synthetic a:Lw3/c$a;


# direct methods
.method public constructor <init>(Lw3/c$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getAccountName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Lw3/i$a;

    .line 9
    invoke-virtual {v0, v1}, Lw3/i$a;->b(Landroid/content/Context;)Landroid/accounts/Account;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_10
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 19
    return-object v0
.end method

.method public final getAutoRetryInterval()J
    .registers 3

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    return-wide v0
.end method

.method public final getMaxRetryCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    check-cast v0, Lw3/i$a;

    .line 5
    invoke-virtual {v0}, Lw3/i$a;->c()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final invalidateAuthToken()V
    .registers 3

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Lw3/i$a;

    .line 9
    invoke-virtual {v0, v1}, Lw3/i$a;->d(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public final queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;
    .registers 15

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Lw3/i$a;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v2

    .line 15
    move-object v5, v3

    .line 16
    :goto_f
    const/4 v6, 0x3

    .line 17
    const-string v7, "RequestEvnCompat_V18"

    .line 19
    if-ge v2, v6, :cond_da

    .line 21
    :try_start_14
    invoke-virtual {v0, v1}, Lw3/i$a;->b(Landroid/content/Context;)Landroid/accounts/Account;

    .line 24
    move-result-object v9

    .line 25
    if-nez v9, :cond_2a

    .line 27
    new-instance v5, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 29
    const-string v6, "Account is null when getting service token"

    .line 31
    invoke-direct {v5, v6}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto/16 :goto_da

    .line 43
    :cond_2a
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 46
    move-result-object v8

    .line 47
    const-string v10, "micloud"

    .line 49
    const/4 v11, 0x1

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    invoke-virtual/range {v8 .. v13}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Lw3/i;->a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;

    .line 59
    move-result-object v1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_a4
    .catch Landroid/accounts/OperationCanceledException; {:try_start_14 .. :try_end_3b} :catch_93
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_3b} :catch_7c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_3b} :catch_6c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_14 .. :try_end_3b} :catch_3d

    .line 60
    goto/16 :goto_db

    .line 62
    :catch_3d
    move-exception v5

    .line 63
    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v9, "AuthenticatorException when getting service token(isInvalidateAuthToken="

    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    const-string v9, ")"

    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v8

    .line 87
    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    move-result-object v8

    .line 94
    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    if-nez v4, :cond_68

    .line 99
    invoke-virtual {v0, v1}, Lw3/i$a;->d(Landroid/content/Context;)V

    .line 102
    const/4 v4, 0x1

    .line 103
    goto/16 :goto_d5

    .line 105
    :cond_68
    move-object v1, v3

    .line 106
    move-object v5, v6

    .line 107
    goto/16 :goto_db

    .line 109
    :catch_6c
    move-exception v5

    .line 110
    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 112
    const-string v8, "TimeoutException when getting service token, retry if needed"

    .line 114
    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    move-result-object v8

    .line 121
    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    goto :goto_d5

    .line 125
    :catch_7c
    move-exception v1

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 133
    new-instance v2, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 135
    const-string v4, "InterruptedException when getting service token"

    .line 137
    invoke-direct {v2, v4, v1}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    move-result-object v4

    .line 144
    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    goto :goto_a2

    .line 148
    :catch_93
    move-exception v1

    .line 149
    new-instance v2, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 151
    const-string v4, "OperationCanceledException when getting service token"

    .line 153
    invoke-direct {v2, v4, v1}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :goto_a2
    move-object v5, v2

    .line 164
    goto :goto_da

    .line 165
    :catch_a4
    move-exception v5

    .line 166
    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 168
    const-string v8, "IOException when getting service token"

    .line 170
    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    move-result-object v8

    .line 177
    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/4 v5, 0x2

    .line 181
    if-ge v2, v5, :cond_d5

    .line 183
    :try_start_b6
    sget-object v5, Lw3/i;->c:[I

    .line 185
    aget v5, v5, v2

    .line 187
    int-to-long v8, v5

    .line 188
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_be} :catch_bf

    .line 191
    goto :goto_d5

    .line 192
    :catch_bf
    move-exception v5

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 200
    new-instance v6, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 202
    const-string v8, "InterruptedException when sleep"

    .line 204
    invoke-direct {v6, v8, v5}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    move-result-object v8

    .line 211
    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :cond_d5
    :goto_d5
    move-object v5, v6

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 217
    goto/16 :goto_f

    .line 219
    :cond_da
    :goto_da
    move-object v1, v3

    .line 220
    :goto_db
    if-eqz v1, :cond_f6

    .line 222
    iget-object v2, v0, Lw3/i$a;->a:Lw3/i;

    .line 224
    iget-object v2, v2, Lw3/i;->b:Ljava/lang/ThreadLocal;

    .line 226
    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 229
    iget-object v0, v0, Lw3/i$a;->a:Lw3/i;

    .line 231
    iget-object v0, v0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    .line 233
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/lang/String;

    .line 239
    if-nez v0, :cond_f1

    .line 241
    goto :goto_f5

    .line 242
    :cond_f1
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 245
    move-result-object v3

    .line 246
    :goto_f5
    return-object v3

    .line 247
    :cond_f6
    if-nez v5, :cond_106

    .line 249
    new-instance v5, Lmicloud/compat/independent/request/QueryAuthTokenException;

    .line 251
    const-string v0, "AccountManager getAuthToken returns null"

    .line 253
    invoke-direct {v5, v0}, Lmicloud/compat/independent/request/QueryAuthTokenException;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_106
    throw v5
.end method

.method public final queryEncryptedAccountName()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Lw3/i$a;

    .line 9
    invoke-virtual {v0, v1}, Lw3/i$a;->b(Landroid/content/Context;)Landroid/accounts/Account;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance v1, Lw3/f$a;

    .line 19
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, p0, v2, v0}, Lw3/f$a;-><init>(Lw3/f;Landroid/content/Context;Landroid/accounts/Account;)V

    .line 26
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invoke()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 32
    return-object v0
.end method

.method public final shouldUpdateHost()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lw3/f;->a:Lw3/c$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method
