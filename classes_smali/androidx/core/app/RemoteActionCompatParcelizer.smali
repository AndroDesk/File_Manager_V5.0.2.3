.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "RemoteActionCompatParcelizer.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lh1/a;)Landroidx/core/app/RemoteActionCompat;
    .registers 4

    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lh1/a;->l()Lh1/c;

    move-result-object v1

    :goto_13
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Lh1/a;->g()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_25
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_35

    :cond_31
    invoke-virtual {p0}, Lh1/a;->g()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_35
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_45

    :cond_41
    invoke-virtual {p0}, Lh1/a;->j()Landroid/os/Parcelable;

    move-result-object v1

    :goto_45
    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_57

    :cond_53
    invoke-virtual {p0}, Lh1/a;->e()Z

    move-result v1

    :goto_57
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_67

    :cond_63
    invoke-virtual {p0}, Lh1/a;->e()Z

    move-result v1

    :goto_67
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Lh1/a;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->t(Lh1/c;)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->p(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->p(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->r(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->n(Z)V

    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lh1/a;->m(I)V

    invoke-virtual {p1, p0}, Lh1/a;->n(Z)V

    return-void
.end method
