.class Lmiuix/overscroller/widget/OverScrollLogger;
.super Ljava/lang/Object;
.source "OverScrollLogger.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OverScroll"

.field private static final VERBOSE:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "OverScroll"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v1

    .line 8
    sput-boolean v1, Lmiuix/overscroller/widget/OverScrollLogger;->DEBUG:Z

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lmiuix/overscroller/widget/OverScrollLogger;->VERBOSE:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/overscroller/widget/OverScrollLogger;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "OverScroll"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 3
    sget-boolean v0, Lmiuix/overscroller/widget/OverScrollLogger;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverScroll"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/overscroller/widget/OverScrollLogger;->VERBOSE:Z

    if-eqz v0, :cond_9

    const-string v0, "OverScroll"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 3
    sget-boolean v0, Lmiuix/overscroller/widget/OverScrollLogger;->VERBOSE:Z

    if-eqz v0, :cond_f

    .line 4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverScroll"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method
