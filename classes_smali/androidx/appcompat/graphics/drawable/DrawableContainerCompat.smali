.class public Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainerCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;,
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Z

.field public g:I

.field public h:Z

.field public i:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

.field public j:J

.field public k:J

.field public l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 15

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_36

    iget-wide v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_38

    cmp-long v11, v9, v1

    if-gtz v11, :cond_22

    iget v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    goto :goto_38

    :cond_22
    sub-long/2addr v9, v1

    mul-long/2addr v9, v4

    long-to-int v9, v9

    iget-object v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    div-int/2addr v9, v10

    rsub-int v9, v9, 0xff

    iget v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v0

    goto :goto_39

    :cond_36
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    :cond_38
    :goto_38
    move v3, v6

    :goto_39
    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_61

    iget-wide v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_63

    cmp-long v12, v10, v1

    if-gtz v12, :cond_50

    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    goto :goto_63

    :cond_50
    sub-long/2addr v10, v1

    mul-long/2addr v10, v4

    long-to-int v3, v10

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    div-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_64

    :cond_61
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    :cond_63
    :goto_63
    move v0, v3

    :goto_64
    if-eqz p1, :cond_70

    if-eqz v0, :cond_70

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->i:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_70
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 9

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    if-eqz p1, :cond_49

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v1, :cond_2c

    aget-object v5, v2, v4

    if-eqz v5, :cond_29

    invoke-static {v5}, Lg0/a$b;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_29

    aget-object v5, v2, v4

    invoke-static {v5, p1}, Lg0/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    iget v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_2c
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_4c

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez p1, :cond_3e

    const/16 p1, 0xa0

    :cond_3e
    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    if-eq v1, p1, :cond_4c

    iput-boolean v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    iput-boolean v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    goto :goto_4c

    :cond_49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4c
    :goto_4c
    return-void
.end method

.method public b()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    return-object v0
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    :try_start_17
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    if-gtz v1, :cond_26

    iget-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    if-eqz v1, :cond_26

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_26
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    if-eqz v2, :cond_32

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_46

    :cond_32
    iget-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    if-eqz v2, :cond_3b

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_3b
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    if-eqz v2, :cond_46

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_46
    :goto_46
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {p1, v1}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    invoke-static {p1, v1}, Lg0/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    if-eqz v1, :cond_87

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v2, v3, v4, v1}, Lg0/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_87
    .catchall {:try_start_17 .. :try_end_87} :catchall_91

    :cond_87
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    iget-object v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    iput-object v0, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_91
    move-exception v1

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    iget-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    iput-object v0, v2, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v1
.end method

.method public final canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method final d(I)Z
    .registers 11

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_2e

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    goto :goto_35

    :cond_29
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    iput-wide v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    goto :goto_35

    :cond_2e
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_35

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_35
    :goto_35
    if-ltz p1, :cond_55

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    if-ge p1, v1, :cond_55

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    if-eqz v0, :cond_5a

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    if-lez p1, :cond_51

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    :cond_51
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a

    :cond_55
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    :cond_5a
    :goto_5a
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    cmp-long p1, v0, v5

    const/4 v0, 0x1

    if-nez p1, :cond_67

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_7c

    :cond_67
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->i:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    if-nez p1, :cond_76

    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    invoke-direct {p1, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;)V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->i:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    goto :goto_79

    :cond_76
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_79
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a(Z)V

    :cond_7c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    return-void
.end method

.method public e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    if-ltz v0, :cond_11

    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final getAlpha()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    return v0
.end method

.method public final getChangingConfigurations()I
    .registers 4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 8

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    goto :goto_28

    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    iput-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v1, :cond_26

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-nez v6, :cond_23

    iput-boolean v4, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    move v2, v4

    goto :goto_28

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_26
    iput-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    :goto_28
    if-eqz v2, :cond_35

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    return-object v0

    :cond_35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_b
    return-void
.end method

.method public final getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    return v0

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    return v0

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    return v0
.end method

.method public final getMinimumHeight()I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    return v0

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public final getMinimumWidth()I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    return v0

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public final getOpacity()I
    .registers 8

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x2

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3b

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    if-eqz v2, :cond_16

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    move v1, v0

    goto :goto_3b

    :cond_16
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    iget v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    if-lez v2, :cond_26

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    :cond_26
    const/4 v4, 0x1

    move v5, v4

    :goto_28
    if-ge v5, v2, :cond_37

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v1, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_37
    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    iput-boolean v4, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    :cond_3b
    :goto_3b
    return v1
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_7
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .registers 12

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_a

    goto :goto_5a

    :cond_a
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    if-nez v1, :cond_59

    iget-boolean v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    if-eqz v5, :cond_13

    goto :goto_59

    :cond_13
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v6, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    move v7, v3

    :goto_20
    if-ge v7, v5, :cond_54

    aget-object v8, v6, v7

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_51

    if-nez v2, :cond_31

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_31
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    if-le v8, v9, :cond_39

    iput v8, v2, Landroid/graphics/Rect;->left:I

    :cond_39
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    if-le v8, v9, :cond_41

    iput v8, v2, Landroid/graphics/Rect;->top:I

    :cond_41
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_49

    iput v8, v2, Landroid/graphics/Rect;->right:I

    :cond_49
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_51

    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_54
    iput-boolean v4, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    iput-object v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    goto :goto_5a

    :cond_59
    :goto_59
    move-object v2, v1

    :goto_5a
    if-eqz v2, :cond_70

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    or-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_6e

    move v0, v4

    goto :goto_7d

    :cond_6e
    move v0, v3

    goto :goto_7d

    :cond_70
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_79

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_7d

    :cond_79
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_7d
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-ne v1, v4, :cond_8a

    move v3, v4

    :cond_8a
    if-eqz v3, :cond_94

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_94
    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    return v0
.end method

.method public isStateful()Z
    .registers 8

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    if-eqz v1, :cond_9

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    goto :goto_27

    :cond_9
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    const/4 v5, 0x1

    if-ge v4, v1, :cond_22

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_1f

    move v3, v5

    goto :goto_22

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_22
    :goto_22
    iput-boolean v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    iput-boolean v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    move v0, v3

    :goto_27
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_20
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2b

    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    move v0, v1

    :cond_2b
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    goto :goto_35

    :cond_34
    move v1, v0

    :goto_35
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3a
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->h:Z

    if-nez v0, :cond_17

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_17

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->h:Z

    :cond_17
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public final onLayoutDirectionChanged(I)Z
    .registers 9

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move v5, v4

    :goto_a
    if-ge v4, v2, :cond_1a

    aget-object v6, v3, v4

    if-eqz v6, :cond_17

    invoke-static {v6, p1}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v6

    if-ne v4, v1, :cond_17

    move v5, v6

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1a
    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    return v5
.end method

.method public final onLevelChange(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public onStateChange([I)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method public final setAlpha(I)V
    .registers 7

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    if-eq v0, p1, :cond_21

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_21

    :cond_1d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    if-eq v1, p1, :cond_f

    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    invoke-static {v0, p1}, Lg0/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    :cond_f
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_12

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    return-void
.end method

.method public final setDither(Z)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    if-eq v1, p1, :cond_f

    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_f
    return-void
.end method

.method public final setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0, p1, p2}, Lg0/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_7
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    goto :goto_f

    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_f
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-static {v0, p1, p2, p3, p4}, Lg0/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_16
    return-void
.end method

.method public final setTint(I)V
    .registers 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_10

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lg0/a;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_10
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_10

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lg0/a;->c(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_b
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_12
    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
