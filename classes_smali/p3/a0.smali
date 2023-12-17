.class public final Lp3/a0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lv3/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lv3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lv3/b;->c:Lv3/b;

    .line 3
    sput-object v0, Lp3/a0;->a:Lv3/b;

    .line 5
    sget v0, Lkotlinx/coroutines/f;->b:I

    .line 7
    sget-object v0, Lv3/a;->b:Lv3/a;

    .line 9
    sput-object v0, Lp3/a0;->b:Lv3/a;

    .line 11
    return-void
.end method
