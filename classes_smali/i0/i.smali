.class public final Li0/i;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/i$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/16 v2, 0x1d

    .line 7
    if-ge v1, v2, :cond_5d

    .line 9
    :try_start_8
    const-class v1, Landroid/os/Trace;

    .line 11
    const-string v2, "TRACE_TAG_APP"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 21
    const-class v1, Landroid/os/Trace;

    .line 23
    const-string v2, "isTagEnabled"

    .line 25
    const/4 v3, 0x1

    .line 26
    new-array v4, v3, [Ljava/lang/Class;

    .line 28
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 30
    const/4 v6, 0x0

    .line 31
    aput-object v5, v4, v6

    .line 33
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    const-class v1, Landroid/os/Trace;

    .line 38
    const-string v2, "asyncTraceBegin"

    .line 40
    const/4 v4, 0x3

    .line 41
    new-array v7, v4, [Ljava/lang/Class;

    .line 43
    aput-object v5, v7, v6

    .line 45
    aput-object v0, v7, v3

    .line 47
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    const/4 v9, 0x2

    .line 50
    aput-object v8, v7, v9

    .line 52
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    const-class v1, Landroid/os/Trace;

    .line 57
    const-string v2, "asyncTraceEnd"

    .line 59
    new-array v7, v4, [Ljava/lang/Class;

    .line 61
    aput-object v5, v7, v6

    .line 63
    aput-object v0, v7, v3

    .line 65
    aput-object v8, v7, v9

    .line 67
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    const-class v1, Landroid/os/Trace;

    .line 72
    const-string v2, "traceCounter"

    .line 74
    new-array v4, v4, [Ljava/lang/Class;

    .line 76
    aput-object v5, v4, v6

    .line 78
    aput-object v0, v4, v3

    .line 80
    aput-object v8, v4, v9

    .line 82
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_54} :catch_55

    .line 85
    goto :goto_5d

    .line 86
    :catch_55
    move-exception v0

    .line 87
    const-string v1, "TraceCompat"

    .line 89
    const-string v2, "Unable to initialize via reflection."

    .line 91
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method
