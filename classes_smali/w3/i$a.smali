.class public final Lw3/i$a;
.super Ljava/lang/Object;
.source "RequestEnvBuilderCompat_V18.java"

# interfaces
.implements Lw3/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/i;->build()Lw3/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw3/i;


# direct methods
.method public constructor <init>(Lw3/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lw3/i$a;->a:Lw3/i;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getEncryptedUserId(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 3

    .line 1
    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_e

    .line 7
    const-string p1, "RequestEvnCompat_V18"

    .line 9
    const-string v0, "no account in system"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p1, 0x0

    .line 15
    :cond_e
    return-object p1
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    .line 4
    invoke-static {v0}, Lw3/i;->b(Lw3/i;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_7d

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "; MIUI/"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "ro.product.marketname"

    .line 32
    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_31

    .line 42
    const-string v2, "; "

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_85

    .line 50
    :cond_31
    :try_start_31
    const-string v1, "miui.os.Build"

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    move-result-object v1

    .line 56
    const-string v2, "IS_ALPHA_BUILD"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Boolean;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_74

    .line 75
    const/16 v1, 0x20

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "ALPHA"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_54} :catch_6d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_54} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_54} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_54} :catch_55
    .catchall {:try_start_31 .. :try_end_54} :catchall_85

    .line 85
    goto :goto_74

    .line 86
    :catch_55
    :try_start_55
    const-string v1, "RequestEvnCompat_V18"

    .line 88
    const-string v2, "Not in MIUI in getUserAgent"

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_74

    .line 94
    :catch_5d
    const-string v1, "RequestEvnCompat_V18"

    .line 96
    const-string v2, "Not in MIUI in getUserAgent"

    .line 98
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_74

    .line 102
    :catch_65
    const-string v1, "RequestEvnCompat_V18"

    .line 104
    const-string v2, "Not in MIUI in getUserAgent"

    .line 106
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_74

    .line 110
    :catch_6d
    const-string v1, "RequestEvnCompat_V18"

    .line 112
    const-string v2, "Not in MIUI in getUserAgent"

    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_74
    :goto_74
    iget-object v1, p0, Lw3/i$a;->a:Lw3/i;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1, v0}, Lw3/i;->c(Lw3/i;Ljava/lang/String;)V

    .line 126
    :cond_7d
    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    .line 128
    invoke-static {v0}, Lw3/i;->b(Lw3/i;)Ljava/lang/String;

    .line 131
    move-result-object v0
    :try_end_83
    .catchall {:try_start_55 .. :try_end_83} :catchall_85

    .line 132
    monitor-exit p0

    .line 133
    return-object v0

    .line 134
    :catchall_85
    move-exception v0

    .line 135
    monitor-exit p0

    .line 136
    throw v0
.end method

.method public final d(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    .line 3
    iget-object v0, v0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2c

    .line 11
    const-string v0, "RequestEvnCompat_V18"

    .line 13
    const-string v1, "invalidateAutoToken"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    .line 24
    iget-object v0, v0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    .line 26
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 32
    const-string v1, "com.xiaomi"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lw3/i$a;->a:Lw3/i;

    .line 39
    iget-object p1, p1, Lw3/i;->b:Ljava/lang/ThreadLocal;

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 45
    :cond_2c
    return-void
.end method
