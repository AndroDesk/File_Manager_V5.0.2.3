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

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/n0;->f:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroidx/appcompat/widget/n0$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/n0$a;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/n0;->h:Landroidx/appcompat/widget/n0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized c()Landroidx/appcompat/widget/n0;
    .registers 2

    const-class v0, Landroidx/appcompat/widget/n0;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/n0;->g:Landroidx/appcompat/widget/n0;

    if-nez v1, :cond_e

    new-instance v1, Landroidx/appcompat/widget/n0;

    invoke-direct {v1}, Landroidx/appcompat/widget/n0;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/n0;->g:Landroidx/appcompat/widget/n0;

    :cond_e
    sget-object v1, Landroidx/appcompat/widget/n0;->g:Landroidx/appcompat/widget/n0;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6

    const-class v0, Landroidx/appcompat/widget/n0;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/n0;->h:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, p0, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_34

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroidx/collection/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit v0

    return-object v3

    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_25

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/d;

    if-nez v0, :cond_1b

    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    monitor-exit p0

    return-void

    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroid/util/TypedValue;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    invoke-virtual {p0, p1, v3, v4}, Landroidx/appcompat/widget/n0;->d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    return-object v1

    :cond_26
    iget-object v1, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    const/4 v5, 0x0

    if-nez v1, :cond_2c

    goto :goto_6a

    :cond_2c
    sget v1, Lh/e;->abc_cab_background_top_material:I

    if-ne p2, v1, :cond_4a

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    sget v6, Lh/e;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v6}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, p2, v1

    sget v1, Lh/e;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-direct {v5, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_6a

    :cond_4a
    sget v1, Lh/e;->abc_ratingbar_material:I

    if-ne p2, v1, :cond_55

    sget p2, Lh/d;->abc_star_big:I

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/g$a;->c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    goto :goto_6a

    :cond_55
    sget v1, Lh/e;->abc_ratingbar_indicator_material:I

    if-ne p2, v1, :cond_60

    sget p2, Lh/d;->abc_star_medium:I

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/g$a;->c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    goto :goto_6a

    :cond_60
    sget v1, Lh/e;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_6a

    sget p2, Lh/d;->abc_star_small:I

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/g$a;->c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    :cond_6a
    :goto_6a
    if-eqz v5, :cond_74

    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v3, v4, v5}, Landroidx/appcompat/widget/n0;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    :cond_74
    return-object v5
.end method

.method public final declared-synchronized d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    const/4 v1, 0x0

    if-nez v0, :cond_e

    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    invoke-virtual {v0, p2, p3, v1}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2d

    monitor-exit p0

    return-object p1

    :cond_28
    :try_start_28
    invoke-virtual {v0, p2, p3}, Landroidx/collection/d;->g(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit p0

    return-object v1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/n0;->f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/n0;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    goto :goto_2c

    :cond_8
    iput-boolean v2, p0, Landroidx/appcompat/widget/n0;->d:Z

    sget v0, Lk/b;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e3

    instance-of v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v3, :cond_29

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v2

    :goto_2a
    if-eqz v0, :cond_e3

    :goto_2c
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_36

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_36
    if-eqz v0, :cond_dc

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5b

    sget-object p1, Landroidx/appcompat/widget/e0;->a:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v3}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    if-nez p3, :cond_4d

    goto :goto_53

    :cond_4d
    sget p3, Lh/e;->abc_switch_thumb_material:I

    if-ne p2, p3, :cond_53

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_53
    :goto_53
    if-eqz v4, :cond_58

    invoke-static {p1, v4}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_58
    move-object v0, p1

    goto/16 :goto_dc

    :cond_5b
    iget-object v3, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    if-eqz v3, :cond_d3

    sget v3, Lh/e;->abc_seekbar_track_material:I

    const v5, 0x102000d

    const v6, 0x102000f

    const/high16 v7, 0x1020000

    if-ne p2, v3, :cond_96

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v7, Lh/a;->colorControlNormal:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v8, v9}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v7}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v3, v6, v9}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lh/a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3, v9}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_cf

    :cond_96
    sget v3, Lh/e;->abc_ratingbar_material:I

    if-eq p2, v3, :cond_a5

    sget v3, Lh/e;->abc_ratingbar_indicator_material:I

    if-eq p2, v3, :cond_a5

    sget v3, Lh/e;->abc_ratingbar_small_material:I

    if-ne p2, v3, :cond_d0

    goto :goto_a5

    :catchall_a3
    move-exception p1

    goto :goto_ed

    :cond_a5
    :goto_a5
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v7, Lh/a;->colorControlNormal:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/t0;->b(Landroid/content/Context;I)I

    move-result v7

    sget-object v8, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v7, v8}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v6, Lh/a;->colorControlActivated:I

    invoke-static {p1, v6}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v3, v7, v8}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v6}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3, v8}, Landroidx/appcompat/widget/g$a;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :goto_cf
    move v1, v2

    :cond_d0
    if-eqz v1, :cond_d3

    goto :goto_dc

    :cond_d3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/n0;->i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_dc

    if-eqz p3, :cond_dc

    move-object v0, v4

    :cond_dc
    :goto_dc
    if-eqz v0, :cond_e1

    invoke-static {v0}, Landroidx/appcompat/widget/e0;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_e1
    .catchall {:try_start_1 .. :try_end_e1} :catchall_a3

    :cond_e1
    monitor-exit p0

    return-object v0

    :cond_e3
    :try_start_e3
    iput-boolean v1, p0, Landroidx/appcompat/widget/n0;->d:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_a3

    :goto_ed
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/g;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-nez v0, :cond_4b

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    if-nez v0, :cond_1d

    goto :goto_23

    :cond_1d
    check-cast v0, Landroidx/appcompat/widget/g$a;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/g$a;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_23
    if-eqz v1, :cond_47

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_30

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    :cond_30
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/g;

    if-nez v0, :cond_44

    new-instance v0, Landroidx/collection/g;

    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/widget/n0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->a(ILjava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    :cond_47
    move-object v0, v1

    goto :goto_4b

    :catchall_49
    move-exception p1

    goto :goto_4d

    :cond_4b
    :goto_4b
    monitor-exit p0

    return-object v0

    :goto_4d
    monitor-exit p0

    throw p1
.end method

.method public final i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 11

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroidx/appcompat/widget/n0$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    check-cast v0, Landroidx/appcompat/widget/g$a;

    sget-object v3, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, v0, Landroidx/appcompat/widget/g$a;->a:[I

    invoke-static {v4, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    move-result v4

    const v5, 0x1010031

    const/4 v6, -0x1

    if-eqz v4, :cond_19

    sget v5, Lh/a;->colorControlNormal:I

    goto :goto_42

    :cond_19
    iget-object v4, v0, Landroidx/appcompat/widget/g$a;->c:[I

    invoke-static {v4, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    move-result v4

    if-eqz v4, :cond_24

    sget v5, Lh/a;->colorControlActivated:I

    goto :goto_42

    :cond_24
    iget-object v0, v0, Landroidx/appcompat/widget/g$a;->d:[I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_42

    :cond_2f
    sget v0, Lh/e;->abc_list_divider_mtrl_alpha:I

    if-ne p2, v0, :cond_3e

    const p2, 0x1010030

    const v0, 0x42233333  # 40.8f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_44

    :cond_3e
    sget v0, Lh/e;->abc_dialog_material_background:I

    if-ne p2, v0, :cond_46

    :goto_42
    move p2, v5

    move v0, v6

    :goto_44
    move v4, v1

    goto :goto_49

    :cond_46
    move p2, v2

    move v4, p2

    move v0, v6

    :goto_49
    if-eqz v4, :cond_63

    sget-object v4, Landroidx/appcompat/widget/e0;->a:[I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v3}, Landroidx/appcompat/widget/g;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v0, v6, :cond_61

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_61
    move p1, v1

    goto :goto_64

    :cond_63
    move p1, v2

    :goto_64
    if-eqz p1, :cond_67

    goto :goto_68

    :cond_67
    move v1, v2

    :goto_68
    return v1
.end method
