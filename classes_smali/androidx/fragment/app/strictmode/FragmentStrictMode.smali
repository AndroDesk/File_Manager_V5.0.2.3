.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode;
.super Ljava/lang/Object;
.source "FragmentStrictMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;,
        Landroidx/fragment/app/strictmode/FragmentStrictMode$a;,
        Landroidx/fragment/app/strictmode/FragmentStrictMode$b;
    }
.end annotation


# static fields
.field public static a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->c:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 3
    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 5
    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;
    .registers 3

    .line 1
    :goto_0
    if-eqz p0, :cond_16

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "declaringFragment.parentFragmentManager"

    .line 15
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_16
    sget-object p0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 25
    return-object p0
.end method

.method public static b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 15
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 17
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2c

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v3, "Policy violation in "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-string v3, "FragmentStrictMode"

    .line 42
    invoke-static {v3, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 50
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 52
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_42

    .line 58
    new-instance p0, Landroidx/appcompat/app/s;

    .line 60
    const/4 v2, 0x4

    .line 61
    invoke-direct {p0, v2, v1, p1}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-static {v0, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->e(Landroidx/fragment/app/Fragment;Landroidx/appcompat/app/s;)V

    .line 67
    :cond_42
    return-void
.end method

.method public static c(Landroidx/fragment/app/strictmode/Violation;)V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_25

    .line 8
    const-string v0, "StrictMode violation in "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "FragmentManager"

    .line 35
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :cond_25
    return-void
.end method

.method public static final d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 5
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "previousFragmentId"

    .line 8
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;

    .line 13
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/FragmentReuseViolation;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 19
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p1, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 25
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2f

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    move-result-object p0

    .line 37
    const-class v1, Landroidx/fragment/app/strictmode/FragmentReuseViolation;

    .line 39
    invoke-static {p1, p0, v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2f

    .line 45
    invoke-static {p1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 48
    :cond_2f
    return-void
.end method

.method public static e(Landroidx/fragment/app/Fragment;Landroidx/appcompat/app/s;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2b

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "fragment.parentFragmentManager.host.handler"

    .line 19
    invoke-static {p0, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_27

    .line 36
    invoke-virtual {p1}, Landroidx/appcompat/app/s;->run()V

    .line 39
    goto :goto_2e

    .line 40
    :cond_27
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    invoke-virtual {p1}, Landroidx/appcompat/app/s;->run()V

    .line 47
    :goto_2e
    return-void
.end method

.method public static f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->b:Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/util/Set;

    .line 13
    const/4 p1, 0x1

    .line 14
    if-nez p0, :cond_10

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 20
    move-result-object v0

    .line 21
    const-class v1, Landroidx/fragment/app/strictmode/Violation;

    .line 23
    invoke-static {v0, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_28

    .line 29
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_28

    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_28
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result p0

    .line 45
    xor-int/2addr p0, p1

    .line 46
    return p0
.end method
