.class public abstract Landroidx/activity/result/e;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/e$b;,
        Landroidx/activity/result/e$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Random;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final transient f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Random;

    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/activity/result/e;->a:Ljava/util/Random;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iput-object v0, p0, Landroidx/activity/result/e;->d:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    iput-object v0, p0, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iput-object v0, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 53
    new-instance v0, Landroid/os/Bundle;

    .line 55
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    iput-object v0, p0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    if-nez p1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/activity/result/e$a;

    .line 25
    if-eqz v0, :cond_37

    .line 27
    iget-object v1, v0, Landroidx/activity/result/e$a;->a:Landroidx/activity/result/a;

    .line 29
    if-eqz v1, :cond_37

    .line 31
    iget-object v1, p0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_37

    .line 39
    iget-object v1, v0, Landroidx/activity/result/e$a;->a:Landroidx/activity/result/a;

    .line 41
    iget-object v0, v0, Landroidx/activity/result/e$a;->b:Lg/a;

    .line 43
    invoke-virtual {v0, p2, p3}, Lg/a;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    invoke-interface {v1, p2}, Landroidx/activity/result/a;->onActivityResult(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    goto :goto_46

    .line 56
    :cond_37
    iget-object v0, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 63
    new-instance v1, Landroidx/activity/result/ActivityResult;

    .line 65
    invoke-direct {v1, p2, p3}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    :goto_46
    const/4 p1, 0x1

    .line 72
    return p1
.end method

.method public abstract b(ILg/a;Ljava/lang/Object;)V
    .param p3  # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
.end method

.method public final c(Ljava/lang/String;Landroidx/lifecycle/m;Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/c;
    .registers 8

    .line 1
    invoke-interface {p2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3c

    .line 17
    invoke-virtual {p0, p1}, Landroidx/activity/result/e;->e(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Landroidx/activity/result/e;->d:Ljava/util/HashMap;

    .line 22
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroidx/activity/result/e$b;

    .line 28
    if-nez p2, :cond_22

    .line 30
    new-instance p2, Landroidx/activity/result/e$b;

    .line 32
    invoke-direct {p2, v0}, Landroidx/activity/result/e$b;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 35
    :cond_22
    new-instance v0, Landroidx/activity/result/ActivityResultRegistry$1;

    .line 37
    invoke-direct {v0, p0, p1, p4, p3}, Landroidx/activity/result/ActivityResultRegistry$1;-><init>(Landroidx/activity/result/e;Ljava/lang/String;Landroidx/activity/result/a;Lg/a;)V

    .line 40
    iget-object p4, p2, Landroidx/activity/result/e$b;->a:Landroidx/lifecycle/Lifecycle;

    .line 42
    invoke-virtual {p4, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 45
    iget-object p4, p2, Landroidx/activity/result/e$b;->b:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p4, p0, Landroidx/activity/result/e;->d:Ljava/util/HashMap;

    .line 52
    invoke-virtual {p4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance p2, Landroidx/activity/result/c;

    .line 57
    invoke-direct {p2, p0, p1, p3}, Landroidx/activity/result/c;-><init>(Landroidx/activity/result/e;Ljava/lang/String;Lg/a;)V

    .line 60
    return-object p2

    .line 61
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string p4, "LifecycleOwner "

    .line 70
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string p2, " is attempting to register while current state is "

    .line 78
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string p2, ". LifecycleOwners must call register before they are STARTED."

    .line 90
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1
.end method

.method public final d(Ljava/lang/String;Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/d;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/activity/result/e;->e(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    .line 6
    new-instance v1, Landroidx/activity/result/e$a;

    .line 8
    invoke-direct {v1, p2, p3}, Landroidx/activity/result/e$a;-><init>(Lg/a;Landroidx/activity/result/a;)V

    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_23

    .line 22
    iget-object v0, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {p3, v0}, Landroidx/activity/result/a;->onActivityResult(Ljava/lang/Object;)V

    .line 36
    :cond_23
    iget-object v0, p0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 38
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/activity/result/ActivityResult;

    .line 44
    if-eqz v0, :cond_3d

    .line 46
    iget-object v1, p0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 48
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 51
    iget v1, v0, Landroidx/activity/result/ActivityResult;->a:I

    .line 53
    iget-object v0, v0, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    .line 55
    invoke-virtual {p2, v1, v0}, Lg/a;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p3, v0}, Landroidx/activity/result/a;->onActivityResult(Ljava/lang/Object;)V

    .line 62
    :cond_3d
    new-instance p3, Landroidx/activity/result/d;

    .line 64
    invoke-direct {p3, p0, p1, p2}, Landroidx/activity/result/d;-><init>(Landroidx/activity/result/e;Ljava/lang/String;Lg/a;)V

    .line 67
    return-object p3
.end method

.method public final e(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/activity/result/e;->a:Ljava/util/Random;

    .line 14
    const/high16 v1, 0x7fff0000

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 19
    move-result v0

    .line 20
    const/high16 v2, 0x10000

    .line 22
    :goto_15
    add-int/2addr v0, v2

    .line 23
    iget-object v3, p0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_29

    .line 35
    iget-object v0, p0, Landroidx/activity/result/e;->a:Ljava/util/Random;

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 40
    move-result v0

    .line 41
    goto :goto_15

    .line 42
    :cond_29
    iget-object v1, p0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_17

    .line 9
    iget-object v0, p0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 17
    if-eqz v0, :cond_17

    .line 19
    iget-object v1, p0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    const-string v1, ": "

    .line 37
    const-string v2, "Dropping pending result for request "

    .line 39
    const-string v3, "ActivityResultRegistry"

    .line 41
    if-eqz v0, :cond_43

    .line 43
    invoke-static {v2, p1, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    iget-object v4, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_43
    iget-object v0, p0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 70
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_64

    .line 76
    invoke-static {v2, p1, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 82
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 98
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 101
    :cond_64
    iget-object v0, p0, Landroidx/activity/result/e;->d:Ljava/util/HashMap;

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroidx/activity/result/e$b;

    .line 109
    if-eqz v0, :cond_90

    .line 111
    iget-object v1, v0, Landroidx/activity/result/e$b;->b:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object v1

    .line 117
    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_86

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Landroidx/lifecycle/k;

    .line 129
    iget-object v3, v0, Landroidx/activity/result/e$b;->a:Landroidx/lifecycle/Lifecycle;

    .line 131
    invoke-virtual {v3, v2}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 134
    goto :goto_74

    .line 135
    :cond_86
    iget-object v0, v0, Landroidx/activity/result/e$b;->b:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Landroidx/activity/result/e;->d:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_90
    return-void
.end method
