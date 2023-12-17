.class public final Landroidx/fragment/app/b$d;
.super Landroidx/fragment/app/b$c;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;ZZ)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$c;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;)V

    .line 4
    iget-object p2, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 6
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 8
    if-ne p2, v0, :cond_2c

    .line 10
    if-eqz p3, :cond_12

    .line 12
    iget-object p2, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 14
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    iget-object p2, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    :goto_18
    iput-object p2, p0, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    .line 27
    if-eqz p3, :cond_23

    .line 29
    iget-object p2, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 31
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    .line 34
    move-result p2

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    iget-object p2, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 38
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    .line 41
    move-result p2

    .line 42
    :goto_29
    iput-boolean p2, p0, Landroidx/fragment/app/b$d;->d:Z

    .line 44
    goto :goto_40

    .line 45
    :cond_2c
    if-eqz p3, :cond_35

    .line 47
    iget-object p2, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 49
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    goto :goto_3b

    .line 54
    :cond_35
    iget-object p2, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 56
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    :goto_3b
    iput-object p2, p0, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    .line 62
    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Landroidx/fragment/app/b$d;->d:Z

    .line 65
    :goto_40
    if-eqz p4, :cond_56

    .line 67
    if-eqz p3, :cond_4d

    .line 69
    iget-object p1, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    .line 77
    goto :goto_59

    .line 78
    :cond_4d
    iget-object p1, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    .line 86
    goto :goto_59

    .line 87
    :cond_56
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    .line 90
    :goto_59
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Landroidx/fragment/app/i0;
    .registers 5

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    sget-object v0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/e0;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    instance-of v1, p1, Landroid/transition/Transition;

    .line 11
    if-eqz v1, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    sget-object v0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/i0;

    .line 16
    if-eqz v0, :cond_18

    .line 18
    invoke-virtual {v0, p1}, Landroidx/fragment/app/i0;->e(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_18

    .line 24
    return-object v0

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v2, "Transition "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string p1, " for fragment "

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object p1, p0, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 47
    iget-object p1, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0
.end method
