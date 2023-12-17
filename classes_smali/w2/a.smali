.class public final Lw2/a;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/a$b;,
        Lw2/a$h;,
        Lw2/a$f;,
        Lw2/a$c;,
        Lw2/a$e;,
        Lw2/a$d;,
        Lw2/a$a;,
        Lw2/a$g;
    }
.end annotation


# static fields
.field public static final a:Li2/i;

.field public static final b:Li2/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lw2/a$h;

    .line 3
    invoke-direct {v0}, Lw2/a$h;-><init>()V

    .line 6
    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    .line 9
    new-instance v0, Lw2/a$b;

    .line 11
    invoke-direct {v0}, Lw2/a$b;-><init>()V

    .line 14
    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lw2/a;->a:Li2/i;

    .line 20
    new-instance v0, Lw2/a$c;

    .line 22
    invoke-direct {v0}, Lw2/a$c;-><init>()V

    .line 25
    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lw2/a;->b:Li2/i;

    .line 31
    sget v0, Ls2/e;->a:I

    .line 33
    new-instance v0, Lw2/a$f;

    .line 35
    invoke-direct {v0}, Lw2/a$f;-><init>()V

    .line 38
    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    .line 41
    return-void
.end method
