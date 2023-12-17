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

    new-instance v0, Lw2/a$h;

    invoke-direct {v0}, Lw2/a$h;-><init>()V

    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    new-instance v0, Lw2/a$b;

    invoke-direct {v0}, Lw2/a$b;-><init>()V

    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    move-result-object v0

    sput-object v0, Lw2/a;->a:Li2/i;

    new-instance v0, Lw2/a$c;

    invoke-direct {v0}, Lw2/a$c;-><init>()V

    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    move-result-object v0

    sput-object v0, Lw2/a;->b:Li2/i;

    sget v0, Ls2/e;->a:I

    new-instance v0, Lw2/a$f;

    invoke-direct {v0}, Lw2/a$f;-><init>()V

    invoke-static {v0}, Lv2/a;->a(Ljava/util/concurrent/Callable;)Li2/i;

    return-void
.end method
