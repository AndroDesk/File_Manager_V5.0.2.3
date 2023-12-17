.class public final Lc1/c;
.super Ljava/lang/Object;
.source "SavedStateRegistry.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/c$a;,
        Lc1/c$b;
    }
.end annotation


# instance fields
.field public final a:Lo/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b<",
            "Ljava/lang/String;",
            "Lc1/c$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Z

.field public e:Landroidx/savedstate/Recreator$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lo/b;

    .line 6
    invoke-direct {v0}, Lo/b;-><init>()V

    .line 9
    iput-object v0, p0, Lc1/c;->a:Lo/b;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lc1/c;->f:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lc1/c;->d:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Lc1/c;->c:Landroid/os/Bundle;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_25

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lc1/c;->c:Landroid/os/Bundle;

    .line 16
    if-eqz v2, :cond_14

    .line 18
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 21
    :cond_14
    iget-object p1, p0, Lc1/c;->c:Landroid/os/Bundle;

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz p1, :cond_20

    .line 26
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_20

    .line 32
    const/4 v2, 0x1

    .line 33
    :cond_20
    if-nez v2, :cond_24

    .line 35
    iput-object v1, p0, Lc1/c;->c:Landroid/os/Bundle;

    .line 37
    :cond_24
    return-object v0

    .line 38
    :cond_25
    return-object v1

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public final b()Lc1/c$b;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lc1/c;->a:Lo/b;

    .line 3
    invoke-virtual {v0}, Lo/b;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    move-object v1, v0

    .line 8
    check-cast v1, Lo/b$e;

    .line 10
    invoke-virtual {v1}, Lo/b$e;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2f

    .line 16
    invoke-virtual {v1}, Lo/b$e;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    const-string v2, "components"

    .line 24
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lc1/c$b;

    .line 39
    const-string v3, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 41
    invoke-static {v2, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_6

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    const/4 v1, 0x0

    .line 49
    :goto_30
    return-object v1
.end method

.method public final c(Ljava/lang/String;Lc1/c$b;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lc1/c$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "provider"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lc1/c;->a:Lo/b;

    .line 13
    invoke-virtual {v0, p1}, Lo/b;->a(Ljava/lang/Object;)Lo/b$c;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_16

    .line 20
    iget-object p1, v1, Lo/b$c;->b:Ljava/lang/Object;

    .line 22
    goto :goto_30

    .line 23
    :cond_16
    new-instance v1, Lo/b$c;

    .line 25
    invoke-direct {v1, p1, p2}, Lo/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    iget p1, v0, Lo/b;->d:I

    .line 30
    add-int/2addr p1, v2

    .line 31
    iput p1, v0, Lo/b;->d:I

    .line 33
    iget-object p1, v0, Lo/b;->b:Lo/b$c;

    .line 35
    if-nez p1, :cond_29

    .line 37
    iput-object v1, v0, Lo/b;->a:Lo/b$c;

    .line 39
    iput-object v1, v0, Lo/b;->b:Lo/b$c;

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    iput-object v1, p1, Lo/b$c;->c:Lo/b$c;

    .line 44
    iput-object p1, v1, Lo/b$c;->d:Lo/b$c;

    .line 46
    iput-object v1, v0, Lo/b;->b:Lo/b$c;

    .line 48
    :goto_2f
    const/4 p1, 0x0

    .line 49
    :goto_30
    check-cast p1, Lc1/c$b;

    .line 51
    if-nez p1, :cond_35

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    const/4 v2, 0x0

    .line 55
    :goto_36
    if-eqz v2, :cond_39

    .line 57
    return-void

    .line 58
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    const-string p2, "SavedStateProvider with the given key is already registered"

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1
.end method

.method public final d()V
    .registers 5

    .line 1
    const-class v0, Landroidx/lifecycle/h$a;

    .line 3
    iget-boolean v1, p0, Lc1/c;->f:Z

    .line 5
    if-eqz v1, :cond_42

    .line 7
    iget-object v1, p0, Lc1/c;->e:Landroidx/savedstate/Recreator$a;

    .line 9
    if-nez v1, :cond_f

    .line 11
    new-instance v1, Landroidx/savedstate/Recreator$a;

    .line 13
    invoke-direct {v1, p0}, Landroidx/savedstate/Recreator$a;-><init>(Lc1/c;)V

    .line 16
    :cond_f
    iput-object v1, p0, Lc1/c;->e:Landroidx/savedstate/Recreator$a;

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_12
    new-array v1, v1, [Ljava/lang/Class;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_17} :catch_25

    .line 24
    iget-object v1, p0, Lc1/c;->e:Landroidx/savedstate/Recreator$a;

    .line 26
    if-eqz v1, :cond_24

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, v1, Landroidx/savedstate/Recreator$a;->a:Ljava/util/LinkedHashSet;

    .line 34
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_24
    return-void

    .line 38
    :catch_25
    move-exception v1

    .line 39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string v3, "Class "

    .line 43
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    throw v2

    .line 67
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw v0
.end method
