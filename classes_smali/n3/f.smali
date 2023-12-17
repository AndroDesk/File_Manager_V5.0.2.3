.class public final Ln3/f;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Ln3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lh3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/l<",
            "TT;TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lh3/l;)V
    .registers 3
    .param p1  # Lo3/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ln3/f;->a:Ln3/b;

    .line 6
    iput-object p2, p0, Ln3/f;->b:Lh3/l;

    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ln3/f$a;

    .line 3
    invoke-direct {v0, p0}, Ln3/f$a;-><init>(Ln3/f;)V

    .line 6
    return-object v0
.end method
