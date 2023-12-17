.class public final Landroidx/savedstate/Recreator$a;
.super Ljava/lang/Object;
.source "Recreator.kt"

# interfaces
.implements Lc1/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/savedstate/Recreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/c;)V
    .registers 3
    .param p1  # Lc1/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "registry"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/savedstate/Recreator$a;->a:Ljava/util/LinkedHashSet;

    .line 16
    const-string v0, "androidx.savedstate.Restarter"

    .line 18
    invoke-virtual {p1, v0, p0}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    iget-object v2, p0, Landroidx/savedstate/Recreator$a;->a:Ljava/util/LinkedHashSet;

    .line 10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    const-string v2, "classes_to_restore"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    return-object v0
.end method
