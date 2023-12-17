.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "RemoteActionCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lh1/a;)Landroidx/core/app/RemoteActionCompat;
    .registers 4

    .line 1
    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    .line 3
    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    .line 6
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_f

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {p0}, Lh1/a;->l()Lh1/c;

    .line 19
    move-result-object v1

    .line 20
    :goto_13
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    .line 22
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 24
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_21

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {p0}, Lh1/a;->g()Ljava/lang/CharSequence;

    .line 37
    move-result-object v1

    .line 38
    :goto_25
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 40
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_31

    .line 49
    goto :goto_35

    .line 50
    :cond_31
    invoke-virtual {p0}, Lh1/a;->g()Ljava/lang/CharSequence;

    .line 53
    move-result-object v1

    .line 54
    :goto_35
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 56
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 58
    const/4 v2, 0x4

    .line 59
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_41

    .line 65
    goto :goto_45

    .line 66
    :cond_41
    invoke-virtual {p0}, Lh1/a;->j()Landroid/os/Parcelable;

    .line 69
    move-result-object v1

    .line 70
    :goto_45
    check-cast v1, Landroid/app/PendingIntent;

    .line 72
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 74
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 76
    const/4 v2, 0x5

    .line 77
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_53

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    invoke-virtual {p0}, Lh1/a;->e()Z

    .line 87
    move-result v1

    .line 88
    :goto_57
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 90
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 92
    const/4 v2, 0x6

    .line 93
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_63

    .line 99
    goto :goto_67

    .line 100
    :cond_63
    invoke-virtual {p0}, Lh1/a;->e()Z

    .line 103
    move-result v1

    .line 104
    :goto_67
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 106
    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Lh1/a;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 10
    invoke-virtual {p1, v0}, Lh1/a;->t(Lh1/c;)V

    .line 13
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 19
    invoke-virtual {p1, v0}, Lh1/a;->p(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 28
    invoke-virtual {p1, v0}, Lh1/a;->p(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 37
    invoke-virtual {p1, v0}, Lh1/a;->r(Landroid/os/Parcelable;)V

    .line 40
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 46
    invoke-virtual {p1, v0}, Lh1/a;->n(Z)V

    .line 49
    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-virtual {p1, v0}, Lh1/a;->m(I)V

    .line 55
    invoke-virtual {p1, p0}, Lh1/a;->n(Z)V

    .line 58
    return-void
.end method
