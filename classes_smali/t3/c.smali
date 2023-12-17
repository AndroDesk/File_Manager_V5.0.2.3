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

    new-instance v0, Lu3/r;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/c;->a:Lu3/r;

    return-void
.end method
