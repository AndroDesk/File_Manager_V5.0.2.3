.class public final Ld0/d;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld0/d;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ld0/d;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    :try_start_0
    sget-object v0, Ld0/e;->d:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eqz v0, :cond_1c

    .line 8
    iget-object v4, p0, Ld0/d;->a:Ljava/lang/Object;

    .line 10
    const/4 v5, 0x3

    .line 11
    new-array v5, v5, [Ljava/lang/Object;

    .line 13
    iget-object v6, p0, Ld0/d;->b:Ljava/lang/Object;

    .line 15
    aput-object v6, v5, v2

    .line 17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    aput-object v2, v5, v1

    .line 21
    const-string v1, "AppCompat recreation"

    .line 23
    aput-object v1, v5, v3

    .line 25
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_54

    .line 29
    :cond_1c
    sget-object v0, Ld0/e;->e:Ljava/lang/reflect/Method;

    .line 31
    iget-object v4, p0, Ld0/d;->a:Ljava/lang/Object;

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    iget-object v5, p0, Ld0/d;->b:Ljava/lang/Object;

    .line 37
    aput-object v5, v3, v2

    .line 39
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    aput-object v2, v3, v1

    .line 43
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2d} :catch_37
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 46
    goto :goto_54

    .line 47
    :catchall_2e
    move-exception v0

    .line 48
    const-string v1, "ActivityRecreator"

    .line 50
    const-string v2, "Exception while invoking performStopActivity"

    .line 52
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    goto :goto_54

    .line 56
    :catch_37
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v1

    .line 61
    const-class v2, Ljava/lang/RuntimeException;

    .line 63
    if-ne v1, v2, :cond_54

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_54

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "Unable to stop"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_53

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    throw v0

    .line 85
    :cond_54
    :goto_54
    return-void
.end method
