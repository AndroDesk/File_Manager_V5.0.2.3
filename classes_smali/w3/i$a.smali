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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lw3/i;)V
    .registers 2

    iput-object p1, p0, Lw3/i$a;->a:Lw3/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getEncryptedUserId(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 3

    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "RequestEvnCompat_V18"

    const-string v0, "no account in system"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_e
    return-object p1
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    invoke-static {v0}, Lw3/i;->b(Lw3/i;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.product.marketname"

    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_85

    :cond_31
    :try_start_31
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_ALPHA_BUILD"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_74

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_54} :catch_6d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_54} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_54} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_54} :catch_55
    .catchall {:try_start_31 .. :try_end_54} :catchall_85

    goto :goto_74

    :catch_55
    :try_start_55
    const-string v1, "RequestEvnCompat_V18"

    const-string v2, "Not in MIUI in getUserAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :catch_5d
    const-string v1, "RequestEvnCompat_V18"

    const-string v2, "Not in MIUI in getUserAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :catch_65
    const-string v1, "RequestEvnCompat_V18"

    const-string v2, "Not in MIUI in getUserAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :catch_6d
    const-string v1, "RequestEvnCompat_V18"

    const-string v2, "Not in MIUI in getUserAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    iget-object v1, p0, Lw3/i$a;->a:Lw3/i;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lw3/i;->c(Lw3/i;Ljava/lang/String;)V

    :cond_7d
    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    invoke-static {v0}, Lw3/i;->b(Lw3/i;)Ljava/lang/String;

    move-result-object v0
    :try_end_83
    .catchall {:try_start_55 .. :try_end_83} :catchall_85

    monitor-exit p0

    return-object v0

    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    iget-object v0, v0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v0, "RequestEvnCompat_V18"

    const-string v1, "invalidateAutoToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lw3/i$a;->a:Lw3/i;

    iget-object v0, v0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.xiaomi"

    invoke-virtual {p1, v1, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lw3/i$a;->a:Lw3/i;

    iget-object p1, p1, Lw3/i;->b:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method
