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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    const/16 v0, 0xff

    .line 6
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 15

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    move-result-wide v1

    .line 8
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 10
    const-wide/16 v4, 0xff

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide/16 v7, 0x0

    .line 15
    if-eqz v3, :cond_36

    .line 17
    iget-wide v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 19
    cmp-long v11, v9, v7

    .line 21
    if-eqz v11, :cond_38

    .line 23
    cmp-long v11, v9, v1

    .line 25
    if-gtz v11, :cond_22

    .line 27
    iget v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 29
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 32
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 34
    goto :goto_38

    .line 35
    :cond_22
    sub-long/2addr v9, v1

    .line 36
    mul-long/2addr v9, v4

    .line 37
    long-to-int v9, v9

    .line 38
    iget-object v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 40
    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 42
    div-int/2addr v9, v10

    .line 43
    rsub-int v9, v9, 0xff

    .line 45
    iget v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 47
    mul-int/2addr v9, v10

    .line 48
    div-int/lit16 v9, v9, 0xff

    .line 50
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    move v3, v0

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 57
    :cond_38
    :goto_38
    move v3, v6

    .line 58
    :goto_39
    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 60
    if-eqz v9, :cond_61

    .line 62
    iget-wide v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 64
    cmp-long v12, v10, v7

    .line 66
    if-eqz v12, :cond_63

    .line 68
    cmp-long v12, v10, v1

    .line 70
    if-gtz v12, :cond_50

    .line 72
    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 75
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 80
    goto :goto_63

    .line 81
    :cond_50
    sub-long/2addr v10, v1

    .line 82
    mul-long/2addr v10, v4

    .line 83
    long-to-int v3, v10

    .line 84
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 86
    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 88
    div-int/2addr v3, v4

    .line 89
    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 91
    mul-int/2addr v3, v4

    .line 92
    div-int/lit16 v3, v3, 0xff

    .line 94
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 97
    goto :goto_64

    .line 98
    :cond_61
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 100
    :cond_63
    :goto_63
    move v0, v3

    .line 101
    :goto_64
    if-eqz p1, :cond_70

    .line 103
    if-eqz v0, :cond_70

    .line 105
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->i:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    .line 107
    const-wide/16 v3, 0x10

    .line 109
    add-long/2addr v1, v3

    .line 110
    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 113
    :cond_70
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    if-eqz p1, :cond_49

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    .line 8
    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 10
    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_d
    if-ge v4, v1, :cond_2c

    .line 16
    aget-object v5, v2, v4

    .line 18
    if-eqz v5, :cond_29

    .line 20
    invoke-static {v5}, Lg0/a$b;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_29

    .line 26
    aget-object v5, v2, v4

    .line 28
    invoke-static {v5, p1}, Lg0/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 31
    iget v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 33
    aget-object v6, v2, v4

    .line 35
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 38
    move-result v6

    .line 39
    or-int/2addr v5, v6

    .line 40
    iput v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 42
    :cond_29
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_d

    .line 45
    :cond_2c
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_4c

    .line 51
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    .line 53
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 56
    move-result-object p1

    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 59
    if-nez p1, :cond_3e

    .line 61
    const/16 p1, 0xa0

    .line 63
    :cond_3e
    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    .line 65
    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    .line 67
    if-eq v1, p1, :cond_4c

    .line 69
    iput-boolean v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 71
    iput-boolean v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 73
    goto :goto_4c

    .line 74
    :cond_49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    :cond_4c
    :goto_4c
    return-void
.end method

.method public b()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    return-object v0
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    .line 7
    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    :try_start_17
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 26
    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 28
    if-gtz v1, :cond_26

    .line 30
    iget-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    .line 32
    if-eqz v1, :cond_26

    .line 34
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 36
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 39
    :cond_26
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 41
    iget-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    .line 43
    if-eqz v2, :cond_32

    .line 45
    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    .line 47
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 50
    goto :goto_46

    .line 51
    :cond_32
    iget-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    .line 53
    if-eqz v2, :cond_3b

    .line 55
    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    .line 57
    invoke-static {p1, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 60
    :cond_3b
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 62
    iget-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    .line 64
    if-eqz v2, :cond_46

    .line 66
    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    .line 68
    invoke-static {p1, v1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 71
    :cond_46
    :goto_46
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 79
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 81
    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 86
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 110
    move-result v1

    .line 111
    invoke-static {p1, v1}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 114
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 116
    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    .line 118
    invoke-static {p1, v1}, Lg0/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    .line 121
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    .line 123
    if-eqz v1, :cond_87

    .line 125
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 127
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 129
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 131
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 133
    invoke-static {p1, v2, v3, v4, v1}, Lg0/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_87
    .catchall {:try_start_17 .. :try_end_87} :catchall_91

    .line 136
    :cond_87
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    .line 138
    iget-object v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 140
    iput-object v0, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 142
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 145
    return-void

    .line 146
    :catchall_91
    move-exception v1

    .line 147
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->l:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;

    .line 149
    iget-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 151
    iput-object v0, v2, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$b;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 153
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 156
    throw v1
.end method

.method public final canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->canApplyTheme()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final d(I)Z
    .registers 11

    .line 1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    move-result-wide v2

    .line 11
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 13
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 15
    const/4 v4, 0x0

    .line 16
    const-wide/16 v5, 0x0

    .line 18
    if-lez v0, :cond_2e

    .line 20
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 27
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 29
    if-eqz v0, :cond_29

    .line 31
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 35
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 37
    int-to-long v0, v0

    .line 38
    add-long/2addr v0, v2

    .line 39
    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 41
    goto :goto_35

    .line 42
    :cond_29
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-wide v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 46
    goto :goto_35

    .line 47
    :cond_2e
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 49
    if-eqz v0, :cond_35

    .line 51
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 54
    :cond_35
    :goto_35
    if-ltz p1, :cond_55

    .line 56
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 58
    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 60
    if-ge p1, v1, :cond_55

    .line 62
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c(I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 68
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    .line 70
    if-eqz v0, :cond_5a

    .line 72
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 74
    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 76
    if-lez p1, :cond_51

    .line 78
    int-to-long v7, p1

    .line 79
    add-long/2addr v2, v7

    .line 80
    iput-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 82
    :cond_51
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c(Landroid/graphics/drawable/Drawable;)V

    .line 85
    goto :goto_5a

    .line 86
    :cond_55
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 88
    const/4 p1, -0x1

    .line 89
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    .line 91
    :cond_5a
    :goto_5a
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 93
    cmp-long p1, v0, v5

    .line 95
    const/4 v0, 0x1

    .line 96
    if-nez p1, :cond_67

    .line 98
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 100
    cmp-long p1, v1, v5

    .line 102
    if-eqz p1, :cond_7c

    .line 104
    :cond_67
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->i:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    .line 106
    if-nez p1, :cond_76

    .line 108
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    .line 110
    move-object v1, p0

    .line 111
    check-cast v1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    .line 113
    invoke-direct {p1, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;)V

    .line 116
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->i:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;

    .line 118
    goto :goto_79

    .line 119
    :cond_76
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 122
    :goto_79
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a(Z)V

    .line 125
    :cond_7c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 128
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    :cond_e
    return-void
.end method

.method public e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    .line 5
    if-ltz v0, :cond_11

    .line 7
    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz p1, :cond_11

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 21
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 3
    return v0
.end method

.method public final getChangingConfigurations()I
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 7
    iget v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 9
    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 11
    or-int/2addr v1, v2

    .line 12
    or-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_a

    .line 8
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    .line 10
    goto :goto_28

    .line 11
    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    .line 14
    iput-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    .line 16
    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 18
    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    :goto_15
    if-ge v5, v1, :cond_26

    .line 24
    aget-object v6, v3, v5

    .line 26
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 29
    move-result-object v6

    .line 30
    if-nez v6, :cond_23

    .line 32
    iput-boolean v4, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    .line 34
    move v2, v4

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    add-int/lit8 v5, v5, 0x1

    .line 38
    goto :goto_15

    .line 39
    :cond_26
    iput-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    .line 41
    :goto_28
    if-eqz v2, :cond_35

    .line 43
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 45
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getChangingConfigurations()I

    .line 48
    move-result v1

    .line 49
    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 51
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 53
    return-object v0

    .line 54
    :cond_35
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method public final getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public final getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 12
    :goto_b
    return-void
.end method

.method public final getIntrinsicHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 5
    if-eqz v1, :cond_10

    .line 7
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 9
    if-nez v1, :cond_d

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 14
    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 16
    return v0

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 24
    move-result v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, -0x1

    .line 27
    :goto_1a
    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 5
    if-eqz v1, :cond_10

    .line 7
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 9
    if-nez v1, :cond_d

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 14
    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 16
    return v0

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    move-result v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, -0x1

    .line 27
    :goto_1a
    return v0
.end method

.method public final getMinimumHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 5
    if-eqz v1, :cond_10

    .line 7
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 9
    if-nez v1, :cond_d

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 14
    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    .line 16
    return v0

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 24
    move-result v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    return v0
.end method

.method public final getMinimumWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 5
    if-eqz v1, :cond_10

    .line 7
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 9
    if-nez v1, :cond_d

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 14
    :cond_d
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 16
    return v0

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 24
    move-result v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    return v0
.end method

.method public final getOpacity()I
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, -0x2

    .line 4
    if-eqz v0, :cond_3b

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_3b

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 15
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    .line 17
    if-eqz v2, :cond_16

    .line 19
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    .line 21
    move v1, v0

    .line 22
    goto :goto_3b

    .line 23
    :cond_16
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    .line 26
    iget v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 28
    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 30
    if-lez v2, :cond_26

    .line 32
    const/4 v1, 0x0

    .line 33
    aget-object v1, v3, v1

    .line 35
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 38
    move-result v1

    .line 39
    :cond_26
    const/4 v4, 0x1

    .line 40
    move v5, v4

    .line 41
    :goto_28
    if-ge v5, v2, :cond_37

    .line 43
    aget-object v6, v3, v5

    .line 45
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 48
    move-result v6

    .line 49
    invoke-static {v1, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    .line 52
    move-result v1

    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 55
    goto :goto_28

    .line 56
    :cond_37
    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    .line 58
    iput-boolean v4, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    .line 60
    :cond_3b
    :goto_3b
    return v1
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 8
    :cond_7
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_5a

    .line 11
    :cond_a
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    .line 13
    if-nez v1, :cond_59

    .line 15
    iget-boolean v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 17
    if-eqz v5, :cond_13

    .line 19
    goto :goto_59

    .line 20
    :cond_13
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 25
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iget v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 30
    iget-object v6, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 32
    move v7, v3

    .line 33
    :goto_20
    if-ge v7, v5, :cond_54

    .line 35
    aget-object v8, v6, v7

    .line 37
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_51

    .line 43
    if-nez v2, :cond_31

    .line 45
    new-instance v2, Landroid/graphics/Rect;

    .line 47
    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    :cond_31
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 52
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 54
    if-le v8, v9, :cond_39

    .line 56
    iput v8, v2, Landroid/graphics/Rect;->left:I

    .line 58
    :cond_39
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 60
    iget v9, v2, Landroid/graphics/Rect;->top:I

    .line 62
    if-le v8, v9, :cond_41

    .line 64
    iput v8, v2, Landroid/graphics/Rect;->top:I

    .line 66
    :cond_41
    iget v8, v1, Landroid/graphics/Rect;->right:I

    .line 68
    iget v9, v2, Landroid/graphics/Rect;->right:I

    .line 70
    if-le v8, v9, :cond_49

    .line 72
    iput v8, v2, Landroid/graphics/Rect;->right:I

    .line 74
    :cond_49
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 76
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 78
    if-le v8, v9, :cond_51

    .line 80
    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 82
    :cond_51
    add-int/lit8 v7, v7, 0x1

    .line 84
    goto :goto_20

    .line 85
    :cond_54
    iput-boolean v4, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 87
    iput-object v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    :goto_59
    move-object v2, v1

    .line 91
    :goto_5a
    if-eqz v2, :cond_70

    .line 93
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 96
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 98
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 100
    or-int/2addr v0, v1

    .line 101
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 103
    or-int/2addr v0, v1

    .line 104
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 106
    or-int/2addr v0, v1

    .line 107
    if-eqz v0, :cond_6e

    .line 109
    move v0, v4

    .line 110
    goto :goto_7d

    .line 111
    :cond_6e
    move v0, v3

    .line 112
    goto :goto_7d

    .line 113
    :cond_70
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 115
    if-eqz v0, :cond_79

    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 120
    move-result v0

    .line 121
    goto :goto_7d

    .line 122
    :cond_79
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 125
    move-result v0

    .line 126
    :goto_7d
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->isAutoMirrored()Z

    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_8a

    .line 132
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 135
    move-result v1

    .line 136
    if-ne v1, v4, :cond_8a

    .line 138
    move v3, v4

    .line 139
    :cond_8a
    if-eqz v3, :cond_94

    .line 141
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 143
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 145
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 147
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 149
    :cond_94
    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    .line 8
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 12
    if-ne p1, v0, :cond_1a

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1a

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    .line 5
    return v0
.end method

.method public isStateful()Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    .line 5
    if-eqz v1, :cond_9

    .line 7
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    .line 9
    goto :goto_27

    .line 10
    :cond_9
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    .line 13
    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 15
    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_12
    const/4 v5, 0x1

    .line 20
    if-ge v4, v1, :cond_22

    .line 22
    aget-object v6, v2, v4

    .line 24
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1f

    .line 30
    move v3, v5

    .line 31
    goto :goto_22

    .line 32
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    :goto_22
    iput-boolean v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    .line 37
    iput-boolean v5, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    .line 39
    move v0, v3

    .line 40
    :goto_27
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_d

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 12
    move v0, v1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 17
    if-eqz v2, :cond_20

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 22
    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    .line 24
    if-eqz v2, :cond_20

    .line 26
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 30
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    :cond_20
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 35
    const-wide/16 v4, 0x0

    .line 37
    cmp-long v2, v2, v4

    .line 39
    if-eqz v2, :cond_2b

    .line 41
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->k:J

    .line 43
    move v0, v1

    .line 44
    :cond_2b
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 46
    cmp-long v2, v2, v4

    .line 48
    if-eqz v2, :cond_34

    .line 50
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v1, v0

    .line 54
    :goto_35
    if-eqz v1, :cond_3a

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 59
    :cond_3a
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->h:Z

    .line 3
    if-nez v0, :cond_17

    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_17

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d()V

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->h:Z

    .line 24
    :cond_17
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 15
    :cond_e
    return-void
.end method

.method public final onLayoutDirectionChanged(I)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    .line 5
    iget v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 7
    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    :goto_a
    if-ge v4, v2, :cond_1a

    .line 13
    aget-object v6, v3, v4

    .line 15
    if-eqz v6, :cond_17

    .line 17
    invoke-static {v6, p1}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 20
    move-result v6

    .line 21
    if-ne v4, v1, :cond_17

    .line 23
    move v5, v6

    .line 24
    :cond_17
    add-int/lit8 v4, v4, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    .line 29
    return v5
.end method

.method public final onLevelChange(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_11

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 18
    :cond_11
    return-void
.end method

.method public final setAlpha(I)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 7
    if-eq v0, p1, :cond_21

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->f:Z

    .line 12
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e:I

    .line 14
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 16
    if-eqz v0, :cond_21

    .line 18
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->j:J

    .line 20
    const-wide/16 v3, 0x0

    .line 22
    cmp-long v1, v1, v3

    .line 24
    if-nez v1, :cond_1d

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a(Z)V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    .line 5
    if-eq v1, p1, :cond_f

    .line 7
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    .line 9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-static {v0, p1}, Lg0/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    .line 16
    :cond_f
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    .line 6
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    .line 8
    if-eq v1, p1, :cond_12

    .line 10
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    .line 12
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 19
    :cond_12
    return-void
.end method

.method public final setDither(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 5
    if-eq v1, p1, :cond_f

    .line 7
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 16
    :cond_f
    return-void
.end method

.method public final setHotspot(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0, p1, p2}, Lg0/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    .line 8
    :cond_7
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->b:Landroid/graphics/Rect;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 18
    if-eqz v0, :cond_16

    .line 20
    invoke-static {v0, p1, p2, p3, p4}, Lg0/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    .line 23
    :cond_16
    return-void
.end method

.method public final setTint(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    .line 6
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    .line 8
    if-eq v1, p1, :cond_10

    .line 10
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-static {v0, p1}, Lg0/a;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 17
    :cond_10
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    .line 6
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    .line 8
    if-eq v1, p1, :cond_10

    .line 10
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-static {v0, p1}, Lg0/a;->c(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 17
    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 12
    :cond_b
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 19
    :cond_12
    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_11

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 18
    :cond_11
    return-void
.end method
