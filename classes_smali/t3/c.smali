.class public final Lt3/c;
.super Ljava/lang/Object;
.source "NullSurrogate.kt"


# static fields
.field public static final a:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lu3/r;

    .line 3
    const-string v1, "NULL"

    .line 5
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lt3/c;->a:Lu3/r;

    .line 10
    return-void
.end method
