.class public final Landroidx/appcompat/widget/n0;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/n0$a;,
        Landroidx/appcompat/widget/n0$b;
    }
.end annotation


# static fields
.field public static final f:Landroid/graphics/PorterDuff$Mode;

.field public static g:Landroidx/appcompat/widget/n0;

.field public static final h:Landroidx/appcompat/widget/n0$a;


# instance fields
.field public a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/g<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/d<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public c:Landroid/util/TypedValue;

.field public d:Z

.field public e:Landroidx/appcompat/widget/n0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3
    sput-object v0, Landroidx/appcompat/widget/n0;->f:Landroid/graphics/PorterDuff$Mode;

    .line 5
    new-instance v0, Landroidx/appcompat/widget/n0$a;

    .line 7
    invoke-direct {v0}, Landroidx/appcompat/widget/n0$a;-><init>()V

    .line 10
    sput-object v0, Landroidx/appcompat/widget/n0;->h:Landroidx/appcompat/widget/n0$a;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    .line 12
    return-void
.end method

.method public static declared-synchronized c()Landroidx/appcompat/widget/n0;
    .registers 2

    .line 1
    const-class v0, Landroidx/appcompat/widget/n0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/n0;->g:Landroidx/appcompat/widget/n0;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Landroidx/appcompat/widget/n0;

    .line 10
    invoke-direct {v1}, Landroidx/appcompat/widget/n0;-><init>()V

    .line 13
    sput-object v1, Landroidx/appcompat/widget/n0;->g:Landroidx/appcompat/widget/n0;

    .line 15
    :cond_e
    sget-object v1, Landroidx/appcompat/widget/n0;->g:Landroidx/appcompat/widget/n0;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public static declared-synchronized g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6

    .line 1
    const-class v0, Landroidx/appcompat/widget/n0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/n0;->h:Landroidx/appcompat/widget/n0$a;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    add-int/lit8 v2, p0, 0x1f

    .line 11
    mul-int/lit8 v2, v2, 0x1f

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, v2

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1, v3}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    .line 28
    if-nez v3, :cond_34

    .line 30
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v2

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0, v3}, Landroidx/collection/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    .line 53
    :cond_34
    monitor-exit v0

    .line 54
    return-object v3

    .line 55
    :catchall_36
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 5
    move-result-object p4

    .line 6
    if-eqz p4, :cond_25

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/collection/d;

    .line 16
    if-nez v0, :cond_1b

    .line 18
    new-instance v0, Landroidx/collection/d;

    .line 20
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 23
    iget-object v1, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    .line 25
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 30
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :cond_25
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
.end method

.method public final b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroid/util/TypedValue;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroid/util/TypedValue;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroid/util/TypedValue;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 22
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 24
    int-to-long v3, v1

    .line 25
    const/16 v1, 0x20

    .line 27
    shl-long/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 30
    int-to-long v5, v1

    .line 31
    or-long/2addr v3, v5

    .line 32
    invoke-virtual {p0, p1, v3, v4}, Landroidx/appcompat/widget/n0;->d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_26

    .line 38
    return-object v1

    .line 39
    :cond_26
    iget-object v1, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v1, :cond_2c

    .line 44
    goto :goto_6a

    .line 45
    :cond_2c
    sget v1, Lh/e;->abc_cab_background_top_material:I

    .line 47
    if-ne p2, v1, :cond_4a

    .line 49
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 51
    const/4 p2, 0x2

    .line 52
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 54
    const/4 v1, 0x0

    .line 55
    sget v6, Lh/e;->abc_cab_background_internal_bg:I

    .line 57
    invoke-virtual {p0, p1, v6}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v6

    .line 61
    aput-object v6, p2, v1

    .line 63
    sget v1, Lh/e;->abc_cab_background_top_mtrl_alpha:I

    .line 65
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object v1

    .line 69
    aput-object v1, p2, v2

    .line 71
    invoke-direct {v5, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 74
    goto :goto_6a

    .line 75
    :cond_4a
    sget v1, Lh/e;->abc_ratingbar_material:I

    .line 77
    if-ne p2, v1, :cond_55

    .line 79
    sget p2, Lh/d;->abc_star_big:I

    .line 81
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/g$a;->c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 84
    move-result-object v5

    .line 85
    goto :goto_6a

    .line 86
    :cond_55
    sget v1, Lh/e;->abc_ratingbar_indicator_material:I

    .line 88
    if-ne p2, v1, :cond_60

    .line 90
    sget p2, Lh/d;->abc_star_medium:I

    .line 92
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/g$a;->c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 95
    move-result-object v5

    .line 96
    goto :goto_6a

    .line 97
    :cond_60
    sget v1, Lh/e;->abc_ratingbar_small_material:I

    .line 99
    if-ne p2, v1, :cond_6a

    .line 101
    sget p2, Lh/d;->abc_star_small:I

    .line 103
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/g$a;->c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 106
    move-result-object v5

    .line 107
    :cond_6a
    :goto_6a
    if-eqz v5, :cond_74

    .line 109
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 111
    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 114
    invoke-virtual {p0, p1, v3, v4, v5}, Landroidx/appcompat/widget/n0;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_74
    return-object v5
.end method

.method public final declared-synchronized d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/collection/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_e

    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2, p3, v1}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    if-eqz v2, :cond_2b

    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 29
    if-eqz v2, :cond_28

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2d

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :cond_28
    :try_start_28
    invoke-virtual {v0, p2, p3}, Landroidx/collection/d;->g(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 44
    :cond_2b
    monitor-exit p0

    .line 45
    return-object v1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/n0;->f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-object p1

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/n0;->d:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    goto :goto_2c

    .line 9
    :cond_8
    iput-boolean v2, p0, Landroidx/appcompat/widget/n0;->d:Z

    .line 11
    sget v0, Lk/b;->abc_vector_test:I

    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_e3

    .line 19
    instance-of v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 21
    if-nez v3, :cond_29

    .line 23
    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_27

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    move v0, v1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    :goto_29
    move v0, v2

    .line 43
    :goto_2a
    if-eqz v0, :cond_e3

    .line 45
    :goto_2c
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_36

    .line 51
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v0

    .line 55
    :cond_36
    if-eqz v0, :cond_dc

    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 60
    move-result-object v3

    .line 61
    const/4 v4, 0x0

    .line 62
    if-eqz v3, :cond_5b

    .line 64
    sget-object p1, Landroidx/appcompat/widget/e0;->a:[I

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1, v3}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 73
    iget-object p3, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    .line 75
    if-nez p3, :cond_4d

    .line 77
    goto :goto_53

    .line 78
    :cond_4d
    sget p3, Lh/e;->abc_switch_thumb_material:I

    .line 80
    if-ne p2, p3, :cond_53

    .line 82
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 84
    :cond_53
    :goto_53
    if-eqz v4, :cond_58

    .line 86
    invoke-static {p1, v4}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 89
    :cond_58
    move-object v0, p1

    .line 90
    goto/16 :goto_dc

    .line 92
    :cond_5b
    iget-object v3, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    .line 94
    if-eqz v3, :cond_d3

    .line 96
    sget v3, Lh/e;->abc_seekbar_track_material:I

    .line 98
    const v5, 0x102000d

    .line 101
    const v6, 0x102000f

    .line 104
    const/high16 v7, 0x1020000

    .line 106
    if-ne p2, v3, :cond_96

    .line 108
    move-object v1, v0

    .line 109
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 111
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 114
    move-result-object v3

    .line 115
    sget v7, Lh/a;->colorControlNormal:I

    .line 117
    invoke-static {p1, v7}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 120
    move-result v8

    .line 121
    sget-object v9, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    .line 123
    invoke-static {v3, v8, v9}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 129
    move-result-object v3

    .line 130
    invoke-static {p1, v7}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 133
    move-result v6

    .line 134
    invoke-static {v3, v6, v9}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 140
    move-result-object v1

    .line 141
    sget v3, Lh/a;->colorControlActivated:I

    .line 143
    invoke-static {p1, v3}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 146
    move-result v3

    .line 147
    invoke-static {v1, v3, v9}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 150
    goto :goto_cf

    .line 151
    :cond_96
    sget v3, Lh/e;->abc_ratingbar_material:I

    .line 153
    if-eq p2, v3, :cond_a5

    .line 155
    sget v3, Lh/e;->abc_ratingbar_indicator_material:I

    .line 157
    if-eq p2, v3, :cond_a5

    .line 159
    sget v3, Lh/e;->abc_ratingbar_small_material:I

    .line 161
    if-ne p2, v3, :cond_d0

    .line 163
    goto :goto_a5

    .line 164
    :catchall_a3
    move-exception p1

    .line 165
    goto :goto_ed

    .line 166
    :cond_a5
    :goto_a5
    move-object v1, v0

    .line 167
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 169
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 172
    move-result-object v3

    .line 173
    sget v7, Lh/a;->colorControlNormal:I

    .line 175
    invoke-static {p1, v7}, Landroidx/appcompat/widget/t0;->b(Landroid/content/Context;I)I

    .line 178
    move-result v7

    .line 179
    sget-object v8, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    .line 181
    invoke-static {v3, v7, v8}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 187
    move-result-object v3

    .line 188
    sget v6, Lh/a;->colorControlActivated:I

    .line 190
    invoke-static {p1, v6}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 193
    move-result v7

    .line 194
    invoke-static {v3, v7, v8}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 197
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 200
    move-result-object v1

    .line 201
    invoke-static {p1, v6}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 204
    move-result v3

    .line 205
    invoke-static {v1, v3, v8}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    :goto_cf
    move v1, v2

    .line 209
    :cond_d0
    if-eqz v1, :cond_d3

    .line 211
    goto :goto_dc

    .line 212
    :cond_d3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/n0;->i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_dc

    .line 218
    if-eqz p3, :cond_dc

    .line 220
    move-object v0, v4

    .line 221
    :cond_dc
    :goto_dc
    if-eqz v0, :cond_e1

    .line 223
    invoke-static {v0}, Landroidx/appcompat/widget/e0;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_e1
    .catchall {:try_start_1 .. :try_end_e1} :catchall_a3

    .line 226
    :cond_e1
    monitor-exit p0

    .line 227
    return-object v0

    .line 228
    :cond_e3
    :try_start_e3
    iput-boolean v1, p0, Landroidx/appcompat/widget/n0;->d:Z

    .line 230
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 232
    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    .line 234
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    throw p1
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_a3

    .line 238
    :goto_ed
    monitor-exit p0

    .line 239
    throw p1
.end method

.method public final declared-synchronized h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/collection/g;

    .line 13
    if-eqz v0, :cond_15

    .line 15
    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move-object v0, v1

    .line 23
    :goto_16
    if-nez v0, :cond_4b

    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    .line 27
    if-nez v0, :cond_1d

    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    check-cast v0, Landroidx/appcompat/widget/g$a;

    .line 32
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/g$a;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 35
    move-result-object v1

    .line 36
    :goto_23
    if-eqz v1, :cond_47

    .line 38
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    .line 40
    if-nez v0, :cond_30

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    .line 44
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 47
    iput-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    .line 49
    :cond_30
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/collection/g;

    .line 57
    if-nez v0, :cond_44

    .line 59
    new-instance v0, Landroidx/collection/g;

    .line 61
    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    .line 64
    iget-object v2, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    .line 66
    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_44
    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->a(ILjava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    .line 72
    :cond_47
    move-object v0, v1

    .line 73
    goto :goto_4b

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    goto :goto_4d

    .line 76
    :cond_4b
    :goto_4b
    monitor-exit p0

    .line 77
    return-object v0

    .line 78
    :goto_4d
    monitor-exit p0

    .line 79
    throw p1
.end method

.method public final i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_67

    .line 7
    check-cast v0, Landroidx/appcompat/widget/g$a;

    .line 9
    sget-object v3, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v4, v0, Landroidx/appcompat/widget/g$a;->a:[I

    .line 13
    invoke-static {v4, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    .line 16
    move-result v4

    .line 17
    const v5, 0x1010031

    .line 20
    const/4 v6, -0x1

    .line 21
    if-eqz v4, :cond_19

    .line 23
    sget v5, Lh/a;->colorControlNormal:I

    .line 25
    goto :goto_42

    .line 26
    :cond_19
    iget-object v4, v0, Landroidx/appcompat/widget/g$a;->c:[I

    .line 28
    invoke-static {v4, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_24

    .line 34
    sget v5, Lh/a;->colorControlActivated:I

    .line 36
    goto :goto_42

    .line 37
    :cond_24
    iget-object v0, v0, Landroidx/appcompat/widget/g$a;->d:[I

    .line 39
    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2f

    .line 45
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 47
    goto :goto_42

    .line 48
    :cond_2f
    sget v0, Lh/e;->abc_list_divider_mtrl_alpha:I

    .line 50
    if-ne p2, v0, :cond_3e

    .line 52
    const p2, 0x1010030

    .line 55
    const v0, 0x42233333  # 40.8f

    .line 58
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 61
    move-result v0

    .line 62
    goto :goto_44

    .line 63
    :cond_3e
    sget v0, Lh/e;->abc_dialog_material_background:I

    .line 65
    if-ne p2, v0, :cond_46

    .line 67
    :goto_42
    move p2, v5

    .line 68
    move v0, v6

    .line 69
    :goto_44
    move v4, v1

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    move p2, v2

    .line 72
    move v4, p2

    .line 73
    move v0, v6

    .line 74
    :goto_49
    if-eqz v4, :cond_63

    .line 76
    sget-object v4, Landroidx/appcompat/widget/e0;->a:[I

    .line 78
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 81
    move-result-object p3

    .line 82
    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 85
    move-result p1

    .line 86
    invoke-static {p1, v3}, Landroidx/appcompat/widget/g;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 93
    if-eq v0, v6, :cond_61

    .line 95
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 98
    :cond_61
    move p1, v1

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move p1, v2

    .line 101
    :goto_64
    if-eqz p1, :cond_67

    .line 103
    goto :goto_68

    .line 104
    :cond_67
    move v1, v2

    .line 105
    :goto_68
    return v1
.end method
