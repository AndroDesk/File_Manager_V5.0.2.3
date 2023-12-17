.class public Landroidx/lifecycle/c0$c;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"

# interfaces
.implements Landroidx/lifecycle/c0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:Landroidx/lifecycle/c0$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/a0;
    .registers 5
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/a0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Cannot create an instance of "

    .line 3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "{\n                modelC…wInstance()\n            }"

    .line 9
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v1, Landroidx/lifecycle/a0;
    :try_end_d
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_d} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_d} :catch_e

    .line 14
    return-object v1

    .line 15
    :catch_e
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/RuntimeException;

    .line 18
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    throw v2

    .line 26
    :catch_19
    move-exception v1

    .line 27
    new-instance v2, Ljava/lang/RuntimeException;

    .line 29
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    throw v2
.end method
