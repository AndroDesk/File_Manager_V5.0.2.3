.class public final Le1/a;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field public static a:J

.field public static b:Ljava/lang/reflect/Method;


# direct methods
.method public static a()Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Le1/a;->b:Ljava/lang/reflect/Method;

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-static {}, Landroidx/appcompat/widget/a0;->D()Z

    .line 8
    move-result v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return v0

    .line 10
    :catch_9
    :cond_9
    const/4 v0, 0x0

    .line 11
    :try_start_a
    sget-object v1, Le1/a;->b:Ljava/lang/reflect/Method;

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_2e

    .line 17
    const-class v1, Landroid/os/Trace;

    .line 19
    const-string v4, "TRACE_TAG_APP"

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 28
    move-result-wide v4

    .line 29
    sput-wide v4, Le1/a;->a:J

    .line 31
    const-class v1, Landroid/os/Trace;

    .line 33
    const-string v4, "isTagEnabled"

    .line 35
    new-array v5, v2, [Ljava/lang/Class;

    .line 37
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 39
    aput-object v6, v5, v0

    .line 41
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Le1/a;->b:Ljava/lang/reflect/Method;

    .line 47
    :cond_2e
    sget-object v1, Le1/a;->b:Ljava/lang/reflect/Method;

    .line 49
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    sget-wide v4, Le1/a;->a:J

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v4

    .line 57
    aput-object v4, v2, v0

    .line 59
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Boolean;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    move-result v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_44} :catch_45

    .line 69
    goto :goto_62

    .line 70
    :catch_45
    move-exception v1

    .line 71
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    .line 73
    if-eqz v2, :cond_5b

    .line 75
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 78
    move-result-object v0

    .line 79
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 81
    if-eqz v1, :cond_55

    .line 83
    check-cast v0, Ljava/lang/RuntimeException;

    .line 85
    throw v0

    .line 86
    :cond_55
    new-instance v1, Ljava/lang/RuntimeException;

    .line 88
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    throw v1

    .line 92
    :cond_5b
    const-string v2, "Trace"

    .line 94
    const-string v3, "Unable to call isTagEnabled via reflection"

    .line 96
    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_62
    return v0
.end method
