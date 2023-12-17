.class public final Landroidx/appcompat/widget/g;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field public static final b:Landroid/graphics/PorterDuff$Mode;

.field public static c:Landroidx/appcompat/widget/g;


# instance fields
.field public a:Landroidx/appcompat/widget/n0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3
    sput-object v0, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Landroidx/appcompat/widget/g;
    .registers 2

    .line 1
    const-class v0, Landroidx/appcompat/widget/g;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    .line 6
    if-nez v1, :cond_a

    .line 8
    invoke-static {}, Landroidx/appcompat/widget/g;->d()V

    .line 11
    :cond_a
    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    monitor-exit v0

    .line 17
    throw v1
.end method

.method public static declared-synchronized c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 3

    .line 1
    const-class v0, Landroidx/appcompat/widget/g;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p0, p1}, Landroidx/appcompat/widget/n0;->g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 7
    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0
.end method

.method public static declared-synchronized d()V
    .registers 3

    .line 1
    const-class v0, Landroidx/appcompat/widget/g;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    .line 6
    if-nez v1, :cond_25

    .line 8
    new-instance v1, Landroidx/appcompat/widget/g;

    .line 10
    invoke-direct {v1}, Landroidx/appcompat/widget/g;-><init>()V

    .line 13
    sput-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    .line 15
    invoke-static {}, Landroidx/appcompat/widget/n0;->c()Landroidx/appcompat/widget/n0;

    .line 18
    move-result-object v2

    .line 19
    iput-object v2, v1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 21
    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    .line 23
    iget-object v1, v1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 25
    new-instance v2, Landroidx/appcompat/widget/g$a;

    .line 27
    invoke-direct {v2}, Landroidx/appcompat/widget/g$a;-><init>()V

    .line 30
    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_27

    .line 31
    :try_start_1e
    iput-object v2, v1, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_22

    .line 33
    :try_start_20
    monitor-exit v1

    .line 34
    goto :goto_25

    .line 35
    :catchall_22
    move-exception v2

    .line 36
    monitor-exit v1

    .line 37
    throw v2
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27

    .line 38
    :cond_25
    :goto_25
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    monitor-exit v0

    .line 42
    throw v1
.end method

.method public static e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V
    .registers 7

    .line 1
    sget-object v0, Landroidx/appcompat/widget/n0;->f:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/appcompat/widget/e0;->a:[I

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v1, p0, :cond_11

    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v1, v2

    .line 19
    :goto_12
    if-nez v1, :cond_1c

    .line 21
    const-string p0, "ResourceManagerInternal"

    .line 23
    const-string p1, "Mutated drawable is not the same instance as the input."

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_5b

    .line 29
    :cond_1c
    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    .line 31
    if-eqz v1, :cond_2e

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2e

    .line 39
    new-array v1, v2, [I

    .line 41
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 44
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 47
    :cond_2e
    iget-boolean v0, p1, Landroidx/appcompat/widget/w0;->d:Z

    .line 49
    if-nez v0, :cond_3b

    .line 51
    iget-boolean v1, p1, Landroidx/appcompat/widget/w0;->c:Z

    .line 53
    if-eqz v1, :cond_37

    .line 55
    goto :goto_3b

    .line 56
    :cond_37
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 59
    goto :goto_5b

    .line 60
    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    .line 61
    if-eqz v0, :cond_41

    .line 63
    iget-object v0, p1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move-object v0, v1

    .line 67
    :goto_42
    iget-boolean v3, p1, Landroidx/appcompat/widget/w0;->c:Z

    .line 69
    if-eqz v3, :cond_49

    .line 71
    iget-object p1, p1, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 73
    goto :goto_4b

    .line 74
    :cond_49
    sget-object p1, Landroidx/appcompat/widget/n0;->f:Landroid/graphics/PorterDuff$Mode;

    .line 76
    :goto_4b
    if-eqz v0, :cond_58

    .line 78
    if-nez p1, :cond_50

    .line 80
    goto :goto_58

    .line 81
    :cond_50
    invoke-virtual {v0, p2, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 84
    move-result p2

    .line 85
    invoke-static {p2, p1}, Landroidx/appcompat/widget/n0;->g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 88
    move-result-object v1

    .line 89
    :cond_58
    :goto_58
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 92
    :goto_5b
    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method
