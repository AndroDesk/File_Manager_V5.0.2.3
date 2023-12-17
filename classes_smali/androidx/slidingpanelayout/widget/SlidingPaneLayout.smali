.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;
    }
.end annotation


# static fields
.field public static A:Z


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Z

.field public f:Landroid/view/View;

.field public g:F

.field public h:F

.field public i:I

.field public j:Z

.field public k:I

.field public l:F

.field public m:F

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public o:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

.field public final p:Lr0/c;

.field public q:Z

.field public r:Z

.field public final s:Landroid/graphics/Rect;

.field public final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field public w:I

.field public x:Landroidx/window/layout/h;

.field public y:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

.field public z:Landroidx/slidingpanelayout/widget/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    sput-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->A:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    .line 8
    const/high16 v2, 0x3f800000  # 1.0f

    .line 10
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 12
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    iput-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 22
    new-instance v3, Landroid/graphics/Rect;

    .line 24
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 27
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    .line 36
    new-instance v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    .line 38
    invoke-direct {v3, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    .line 41
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->y:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    move-result-object v3

    .line 51
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 53
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 56
    new-instance v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;

    .line 58
    invoke-direct {v4, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    .line 61
    invoke-static {p0, v4}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 64
    invoke-static {p0, v2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 67
    new-instance v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    .line 69
    invoke-direct {v4, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    .line 72
    new-instance v5, Lr0/c;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v6

    .line 78
    invoke-direct {v5, v6, p0, v4}, Lr0/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr0/c$c;)V

    .line 81
    iget v4, v5, Lr0/c;->b:I

    .line 83
    int-to-float v4, v4

    .line 84
    const/high16 v6, 0x40000000  # 2.0f

    .line 86
    mul-float/2addr v6, v4

    .line 87
    float-to-int v4, v6

    .line 88
    iput v4, v5, Lr0/c;->b:I

    .line 90
    iput-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 92
    const/high16 v4, 0x43c80000  # 400.0f

    .line 94
    mul-float/2addr v3, v4

    .line 95
    iput v3, v5, Lr0/c;->n:F

    .line 97
    sget-object v3, Landroidx/window/layout/n;->a:Landroidx/window/layout/n$a;

    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    new-instance v3, Landroidx/window/layout/q;

    .line 104
    sget-object v4, Landroidx/window/layout/s;->a:Landroidx/window/layout/s;

    .line 106
    :try_start_69
    sget-object v5, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 108
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->c()Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 114
    move-result-object v5

    .line 115
    if-nez v5, :cond_75

    .line 117
    goto :goto_7b

    .line 118
    :cond_75
    new-instance v6, Landroidx/window/layout/f;

    .line 120
    invoke-direct {v6, v5}, Landroidx/window/layout/f;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7b

    .line 123
    goto :goto_7c

    .line 124
    :catchall_7b
    :goto_7b
    move-object v6, v0

    .line 125
    :goto_7c
    if-nez v6, :cond_e0

    .line 127
    sget-object v5, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    .line 129
    sget-object v5, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    .line 131
    if-nez v5, :cond_db

    .line 133
    sget-object v5, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 135
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 138
    :try_start_89
    sget-object v6, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_d6

    .line 140
    if-nez v6, :cond_d0

    .line 142
    :try_start_8d
    invoke-static {}, Landroidx/window/layout/SidecarCompat$a;->c()Landroidx/window/core/Version;

    .line 145
    move-result-object v6

    .line 146
    if-nez v6, :cond_94

    .line 148
    goto :goto_ba

    .line 149
    :cond_94
    sget-object v7, Landroidx/window/core/Version;->f:Landroidx/window/core/Version;

    .line 151
    const-string v8, "other"

    .line 153
    invoke-static {v7, v8}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v6, v6, Landroidx/window/core/Version;->e:Ly2/c;

    .line 158
    invoke-interface {v6}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 161
    move-result-object v6

    .line 162
    const-string v8, "<get-bigInteger>(...)"

    .line 164
    invoke-static {v6, v8}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    check-cast v6, Ljava/math/BigInteger;

    .line 169
    iget-object v7, v7, Landroidx/window/core/Version;->e:Ly2/c;

    .line 171
    invoke-interface {v7}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 175
    invoke-static {v7, v8}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    check-cast v7, Ljava/math/BigInteger;

    .line 180
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 183
    move-result v6

    .line 184
    if-ltz v6, :cond_ba

    .line 186
    move v1, v2

    .line 187
    :cond_ba
    :goto_ba
    if-eqz v1, :cond_c9

    .line 189
    new-instance v1, Landroidx/window/layout/SidecarCompat;

    .line 191
    invoke-direct {v1, p1}, Landroidx/window/layout/SidecarCompat;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->j()Z

    .line 197
    move-result v2
    :try_end_c5
    .catchall {:try_start_8d .. :try_end_c5} :catchall_c9

    .line 198
    if-nez v2, :cond_c8

    .line 200
    goto :goto_c9

    .line 201
    :cond_c8
    move-object v0, v1

    .line 202
    :catchall_c9
    :cond_c9
    :goto_c9
    :try_start_c9
    new-instance v1, Landroidx/window/layout/l;

    .line 204
    invoke-direct {v1, v0}, Landroidx/window/layout/l;-><init>(Landroidx/window/layout/SidecarCompat;)V

    .line 207
    sput-object v1, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    .line 209
    :cond_d0
    sget-object v0, Ly2/e;->a:Ly2/e;
    :try_end_d2
    .catchall {:try_start_c9 .. :try_end_d2} :catchall_d6

    .line 211
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    goto :goto_db

    .line 215
    :catchall_d6
    move-exception p1

    .line 216
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    throw p1

    .line 220
    :cond_db
    :goto_db
    sget-object v6, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    .line 222
    invoke-static {v6}, Li3/g;->b(Ljava/lang/Object;)V

    .line 225
    :cond_e0
    invoke-direct {v3, v4, v6}, Landroidx/window/layout/q;-><init>(Landroidx/window/layout/s;Landroidx/window/layout/m;)V

    .line 228
    sget-object v0, Landroidx/window/layout/n$a;->b:Landroidx/window/layout/d;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 236
    move-result-object p1

    .line 237
    new-instance v0, Landroidx/slidingpanelayout/widget/a;

    .line 239
    invoke-direct {v0, v3, p1}, Landroidx/slidingpanelayout/widget/a;-><init>(Landroidx/window/layout/q;Ljava/util/concurrent/Executor;)V

    .line 242
    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setFoldingFeatureObserver(Landroidx/slidingpanelayout/widget/a;)V

    .line 245
    return-void
.end method

.method private getSystemGestureInsets()Lf0/f;
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->A:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p0}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 15
    invoke-virtual {v0}, Lm0/r0$k;->i()Lf0/f;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    return-object v0
.end method

.method private setFoldingFeatureObserver(Landroidx/slidingpanelayout/widget/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->y:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/slidingpanelayout/widget/a;->setOnFoldingFeatureChangeListener(Landroidx/slidingpanelayout/widget/a$a;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 11
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 13
    if-eqz v1, :cond_1a

    .line 15
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->c:Z

    .line 17
    if-eqz p1, :cond_1a

    .line 19
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 21
    const/4 v1, 0x0

    .line 22
    cmpl-float p1, p1, v1

    .line 24
    if-lez p1, :cond_1a

    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_1a
    return v0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_10

    .line 8
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    .line 10
    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;-><init>(Landroid/view/View;)V

    .line 13
    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 20
    return-void
.end method

.method public final b()Z
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method public final c()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 16
    :goto_f
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public final computeScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 3
    invoke-virtual {v0}, Lr0/c;->h()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 11
    if-nez v0, :cond_12

    .line 13
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 15
    invoke-virtual {v0}, Lr0/c;->a()V

    .line 18
    return-void

    .line 19
    :cond_12
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 24
    :cond_17
    return-void
.end method

.method public final d(F)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v1, :cond_2f

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v3

    .line 16
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 18
    if-ne v3, v4, :cond_14

    .line 20
    goto :goto_2c

    .line 21
    :cond_14
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 23
    const/high16 v5, 0x3f800000  # 1.0f

    .line 25
    sub-float v4, v5, v4

    .line 27
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    .line 29
    int-to-float v7, v6

    .line 30
    mul-float/2addr v4, v7

    .line 31
    float-to-int v4, v4

    .line 32
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 34
    sub-float/2addr v5, p1

    .line 35
    int-to-float v6, v6

    .line 36
    mul-float/2addr v5, v6

    .line 37
    float-to-int v5, v5

    .line 38
    sub-int/2addr v4, v5

    .line 39
    if-eqz v0, :cond_29

    .line 41
    neg-int v4, v4

    .line 42
    :cond_29
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 45
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_9

    .line 48
    :cond_2f
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_c

    .line 10
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    .line 15
    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-le v1, v2, :cond_1a

    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v1, 0x0

    .line 28
    :goto_1b
    if-eqz v1, :cond_47

    .line 30
    if-nez v0, :cond_20

    .line 32
    goto :goto_47

    .line 33
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 44
    move-result v4

    .line 45
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_38

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 54
    move-result v1

    .line 55
    add-int/2addr v4, v1

    .line 56
    goto :goto_41

    .line 57
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 60
    move-result v1

    .line 61
    sub-int v4, v1, v4

    .line 63
    move v6, v4

    .line 64
    move v4, v1

    .line 65
    move v1, v6

    .line 66
    :goto_41
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    :cond_47
    :goto_47
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 8
    move-result v1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_23

    .line 12
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 14
    const/4 v1, 0x1

    .line 15
    iput v1, v0, Lr0/c;->q:I

    .line 17
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSystemGestureInsets()Lf0/f;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_3a

    .line 23
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 25
    iget v2, v1, Lr0/c;->p:I

    .line 27
    iget v0, v0, Lf0/f;->a:I

    .line 29
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 33
    iput v0, v1, Lr0/c;->o:I

    .line 35
    goto :goto_3a

    .line 36
    :cond_23
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 38
    const/4 v1, 0x2

    .line 39
    iput v1, v0, Lr0/c;->q:I

    .line 41
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSystemGestureInsets()Lf0/f;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3a

    .line 47
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 49
    iget v2, v1, Lr0/c;->p:I

    .line 51
    iget v0, v0, Lf0/f;->c:I

    .line 53
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 56
    move-result v0

    .line 57
    iput v0, v1, Lr0/c;->o:I

    .line 59
    :cond_3a
    :goto_3a
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    move-result v1

    .line 69
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 71
    if-eqz v2, :cond_81

    .line 73
    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    .line 75
    if-nez v0, :cond_81

    .line 77
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 79
    if-eqz v0, :cond_81

    .line 81
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 86
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_6c

    .line 92
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    .line 94
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 96
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 98
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 101
    move-result v3

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 105
    move-result v2

    .line 106
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 108
    goto :goto_7c

    .line 109
    :cond_6c
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    .line 111
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 113
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 118
    move-result v3

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 122
    move-result v2

    .line 123
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 125
    :goto_7c
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    .line 127
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 130
    :cond_81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 133
    move-result p2

    .line 134
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 137
    return p2
.end method

.method public final e(F)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 19
    if-eqz v0, :cond_31

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 24
    move-result v0

    .line 25
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 27
    add-int/2addr v0, v2

    .line 28
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    int-to-float v0, v0

    .line 40
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 42
    int-to-float v4, v4

    .line 43
    mul-float/2addr p1, v4

    .line 44
    add-float/2addr p1, v0

    .line 45
    int-to-float v0, v2

    .line 46
    add-float/2addr p1, v0

    .line 47
    sub-float/2addr v3, p1

    .line 48
    float-to-int p1, v3

    .line 49
    goto :goto_3f

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 53
    move-result v0

    .line 54
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 56
    add-int/2addr v0, v2

    .line 57
    int-to-float v0, v0

    .line 58
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 60
    int-to-float v2, v2

    .line 61
    mul-float/2addr p1, v2

    .line 62
    add-float/2addr p1, v0

    .line 63
    float-to-int p1, p1

    .line 64
    :goto_3f
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 66
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 71
    move-result v3

    .line 72
    iput-object v2, v0, Lr0/c;->t:Landroid/view/View;

    .line 74
    const/4 v2, -0x1

    .line 75
    iput v2, v0, Lr0/c;->c:I

    .line 77
    invoke-virtual {v0, p1, v3, v1, v1}, Lr0/c;->j(IIII)Z

    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_5d

    .line 83
    iget v2, v0, Lr0/c;->a:I

    .line 85
    if-nez v2, :cond_5d

    .line 87
    iget-object v2, v0, Lr0/c;->t:Landroid/view/View;

    .line 89
    if-eqz v2, :cond_5d

    .line 91
    const/4 v2, 0x0

    .line 92
    iput-object v2, v0, Lr0/c;->t:Landroid/view/View;

    .line 94
    :cond_5d
    if-eqz p1, :cond_7e

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 99
    move-result p1

    .line 100
    move v0, v1

    .line 101
    :goto_64
    if-ge v0, p1, :cond_77

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 110
    move-result v3

    .line 111
    const/4 v4, 0x4

    .line 112
    if-ne v3, v4, :cond_74

    .line 114
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_74
    add-int/lit8 v0, v0, 0x1

    .line 119
    goto :goto_64

    .line 120
    :cond_77
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 122
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 125
    const/4 p1, 0x1

    .line 126
    return p1

    .line 127
    :cond_7e
    return v1
.end method

.method public final f(Landroid/view/View;)V
    .registers 19

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_12

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    move-result v2

    .line 23
    :goto_16
    if-eqz v1, :cond_1d

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    move-result v3

    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v3

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    move-result v4

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 46
    move-result v5

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    move-result v6

    .line 51
    sub-int/2addr v5, v6

    .line 52
    if-eqz v0, :cond_4c

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_4c

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 63
    move-result v7

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    .line 67
    move-result v8

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 71
    move-result v9

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    .line 75
    move-result v10

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v10, 0x0

    .line 81
    :goto_50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 84
    move-result v11

    .line 85
    const/4 v12, 0x0

    .line 86
    :goto_55
    move-object/from16 v13, p0

    .line 88
    if-ge v12, v11, :cond_ac

    .line 90
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 93
    move-result-object v14

    .line 94
    if-ne v14, v0, :cond_60

    .line 96
    goto :goto_ac

    .line 97
    :cond_60
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 100
    move-result v15

    .line 101
    const/16 v6, 0x8

    .line 103
    if-ne v15, v6, :cond_6b

    .line 105
    move/from16 v16, v1

    .line 107
    goto :goto_a5

    .line 108
    :cond_6b
    if-eqz v1, :cond_6f

    .line 110
    move v6, v3

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move v6, v2

    .line 113
    :goto_70
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 116
    move-result v15

    .line 117
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 120
    move-result v6

    .line 121
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 124
    move-result v15

    .line 125
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    .line 128
    move-result v15

    .line 129
    move/from16 v16, v1

    .line 131
    if-eqz v1, :cond_86

    .line 133
    move v0, v2

    .line 134
    goto :goto_87

    .line 135
    :cond_86
    move v0, v3

    .line 136
    :goto_87
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 139
    move-result v1

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 143
    move-result v0

    .line 144
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 147
    move-result v1

    .line 148
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 151
    move-result v1

    .line 152
    if-lt v6, v7, :cond_a1

    .line 154
    if-lt v15, v9, :cond_a1

    .line 156
    if-gt v0, v8, :cond_a1

    .line 158
    if-gt v1, v10, :cond_a1

    .line 160
    const/4 v0, 0x4

    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    const/4 v0, 0x0

    .line 163
    :goto_a2
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_a5
    add-int/lit8 v12, v12, 0x1

    .line 168
    move-object/from16 v0, p1

    .line 170
    move/from16 v1, v16

    .line 172
    goto :goto_55

    .line 173
    :cond_ac
    :goto_ac
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 3
    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>()V

    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 4
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_11

    .line 3
    :cond_c
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:I

    .line 3
    return v0
.end method

.method public final getLockMode()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:I

    .line 3
    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    .line 3
    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    .line 3
    return v0
.end method

.method public final onAttachedToWindow()V
    .registers 7

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 7
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    .line 9
    if-eqz v0, :cond_61

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    :goto_e
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_21

    .line 20
    instance-of v1, v0, Landroid/app/Activity;

    .line 22
    if-eqz v1, :cond_1a

    .line 24
    check-cast v0, Landroid/app/Activity;

    .line 26
    goto :goto_22

    .line 27
    :cond_1a
    check-cast v0, Landroid/content/ContextWrapper;

    .line 29
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_e

    .line 34
    :cond_21
    move-object v0, v2

    .line 35
    :goto_22
    if-eqz v0, :cond_61

    .line 37
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iget-object v3, v1, Landroidx/slidingpanelayout/widget/a;->c:Lp3/w0;

    .line 44
    if-nez v3, :cond_2e

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    invoke-virtual {v3, v2}, Lp3/o0;->o(Ljava/util/concurrent/CancellationException;)V

    .line 50
    :goto_31
    iget-object v3, v1, Landroidx/slidingpanelayout/widget/a;->b:Ljava/util/concurrent/Executor;

    .line 52
    instance-of v4, v3, Lp3/z;

    .line 54
    if-eqz v4, :cond_3a

    .line 56
    move-object v4, v3

    .line 57
    check-cast v4, Lp3/z;

    .line 59
    :cond_3a
    new-instance v4, Lp3/f0;

    .line 61
    invoke-direct {v4, v3}, Lp3/f0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 64
    new-instance v3, Lu3/e;

    .line 66
    sget-object v5, Lp3/k0$b;->a:Lp3/k0$b;

    .line 68
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/CoroutineDispatcher;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 71
    move-result-object v5

    .line 72
    if-eqz v5, :cond_4a

    .line 74
    goto :goto_53

    .line 75
    :cond_4a
    new-instance v5, Lp3/m0;

    .line 77
    invoke-direct {v5, v2}, Lp3/m0;-><init>(Lp3/k0;)V

    .line 80
    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 83
    move-result-object v4

    .line 84
    :goto_53
    invoke-direct {v3, v4}, Lu3/e;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 87
    new-instance v4, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;

    .line 89
    invoke-direct {v4, v1, v0, v2}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;-><init>(Landroidx/slidingpanelayout/widget/a;Landroid/app/Activity;La3/c;)V

    .line 92
    invoke-static {v3, v4}, Lkotlinx/coroutines/a;->c(Lu3/e;Lh3/p;)Lp3/w0;

    .line 95
    move-result-object v0

    .line 96
    iput-object v0, v1, Landroidx/slidingpanelayout/widget/a;->c:Lp3/w0;

    .line 98
    :cond_61
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 7
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_13

    .line 12
    iget-object v0, v0, Landroidx/slidingpanelayout/widget/a;->c:Lp3/w0;

    .line 14
    if-nez v0, :cond_10

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-virtual {v0, v1}, Lp3/o0;->o(Ljava/util/concurrent/CancellationException;)V

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 21
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 27
    if-gtz v2, :cond_22

    .line 29
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    return-void

    .line 35
    :cond_22
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    throw v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_2c

    .line 10
    if-nez v0, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v1

    .line 16
    if-le v1, v2, :cond_2c

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_2c

    .line 24
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    move-result v4

    .line 30
    float-to-int v4, v4

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 34
    move-result v5

    .line 35
    float-to-int v5, v5

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v1, v4, v5}, Lr0/c;->l(Landroid/view/View;II)Z

    .line 42
    move-result v1

    .line 43
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 45
    :cond_2c
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 47
    if-eqz v1, :cond_a9

    .line 49
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    .line 51
    if-eqz v1, :cond_38

    .line 53
    if-eqz v0, :cond_38

    .line 55
    goto/16 :goto_a9

    .line 57
    :cond_38
    const/4 v1, 0x3

    .line 58
    const/4 v3, 0x0

    .line 59
    if-eq v0, v1, :cond_a3

    .line 61
    if-ne v0, v2, :cond_3f

    .line 63
    goto :goto_a3

    .line 64
    :cond_3f
    if-eqz v0, :cond_6e

    .line 66
    const/4 v1, 0x2

    .line 67
    if-eq v0, v1, :cond_45

    .line 69
    goto :goto_95

    .line 70
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 77
    move-result v1

    .line 78
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    .line 80
    sub-float/2addr v0, v4

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 84
    move-result v0

    .line 85
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 87
    sub-float/2addr v1, v4

    .line 88
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 91
    move-result v1

    .line 92
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 94
    iget v5, v4, Lr0/c;->b:I

    .line 96
    int-to-float v5, v5

    .line 97
    cmpl-float v5, v0, v5

    .line 99
    if-lez v5, :cond_95

    .line 101
    cmpl-float v0, v1, v0

    .line 103
    if-lez v0, :cond_95

    .line 105
    invoke-virtual {v4}, Lr0/c;->b()V

    .line 108
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    .line 110
    return v3

    .line 111
    :cond_6e
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 116
    move-result v0

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 120
    move-result v1

    .line 121
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    .line 123
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 125
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 127
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 129
    float-to-int v0, v0

    .line 130
    float-to-int v1, v1

    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {v5, v0, v1}, Lr0/c;->l(Landroid/view/View;II)Z

    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_95

    .line 140
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 142
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;)Z

    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_95

    .line 148
    move v0, v2

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    :goto_95
    move v0, v3

    .line 151
    :goto_96
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 153
    invoke-virtual {v1, p1}, Lr0/c;->t(Landroid/view/MotionEvent;)Z

    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_a2

    .line 159
    if-eqz v0, :cond_a1

    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    move v2, v3

    .line 163
    :cond_a2
    :goto_a2
    return v2

    .line 164
    :cond_a3
    :goto_a3
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 166
    invoke-virtual {p1}, Lr0/c;->b()V

    .line 169
    return v3

    .line 170
    :cond_a9
    :goto_a9
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 172
    invoke-virtual {v0}, Lr0/c;->b()V

    .line 175
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
    move-result p1

    .line 179
    return p1
.end method

.method public final onLayout(ZIIII)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v3

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    move-result v3

    .line 20
    :goto_13
    if-eqz v1, :cond_1a

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    move-result v4

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v4

    .line 31
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    move-result v5

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    move-result v6

    .line 39
    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 41
    if-eqz v7, :cond_38

    .line 43
    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 45
    if-eqz v7, :cond_34

    .line 47
    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 49
    if-eqz v7, :cond_34

    .line 51
    const/4 v7, 0x0

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    const/high16 v7, 0x3f800000  # 1.0f

    .line 55
    :goto_36
    iput v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 57
    :cond_38
    move v9, v3

    .line 58
    const/4 v10, 0x0

    .line 59
    :goto_3a
    if-ge v10, v6, :cond_ee

    .line 61
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 68
    move-result v12

    .line 69
    const/16 v13, 0x8

    .line 71
    if-ne v12, v13, :cond_4d

    .line 73
    move v7, v9

    .line 74
    const/high16 v9, 0x3f800000  # 1.0f

    .line 76
    goto/16 :goto_e9

    .line 78
    :cond_4d
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    move-result-object v12

    .line 82
    check-cast v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 84
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    move-result v13

    .line 88
    iget-boolean v14, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    .line 90
    if-eqz v14, :cond_92

    .line 92
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 94
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 96
    add-int/2addr v14, v15

    .line 97
    sub-int v15, v2, v4

    .line 99
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result v16

    .line 103
    sub-int v16, v16, v9

    .line 105
    sub-int v14, v16, v14

    .line 107
    iput v14, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 109
    if-eqz v1, :cond_71

    .line 111
    iget v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 113
    goto :goto_73

    .line 114
    :cond_71
    iget v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 116
    :goto_73
    add-int v16, v9, v7

    .line 118
    add-int v16, v16, v14

    .line 120
    div-int/lit8 v17, v13, 0x2

    .line 122
    add-int v8, v17, v16

    .line 124
    if-le v8, v15, :cond_7f

    .line 126
    const/4 v8, 0x1

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    const/4 v8, 0x0

    .line 129
    :goto_80
    iput-boolean v8, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->c:Z

    .line 131
    int-to-float v8, v14

    .line 132
    iget v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 134
    mul-float/2addr v8, v12

    .line 135
    float-to-int v8, v8

    .line 136
    add-int/2addr v7, v8

    .line 137
    add-int/2addr v7, v9

    .line 138
    int-to-float v8, v8

    .line 139
    int-to-float v9, v14

    .line 140
    div-float/2addr v8, v9

    .line 141
    iput v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 143
    const/4 v8, 0x0

    .line 144
    const/high16 v9, 0x3f800000  # 1.0f

    .line 146
    goto :goto_aa

    .line 147
    :cond_92
    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 149
    if-eqz v7, :cond_a6

    .line 151
    iget v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    .line 153
    if-eqz v7, :cond_a6

    .line 155
    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 157
    const/high16 v9, 0x3f800000  # 1.0f

    .line 159
    sub-float v8, v9, v8

    .line 161
    int-to-float v7, v7

    .line 162
    mul-float/2addr v8, v7

    .line 163
    float-to-int v7, v8

    .line 164
    move v8, v7

    .line 165
    move v7, v3

    .line 166
    goto :goto_aa

    .line 167
    :cond_a6
    const/high16 v9, 0x3f800000  # 1.0f

    .line 169
    move v7, v3

    .line 170
    const/4 v8, 0x0

    .line 171
    :goto_aa
    if-eqz v1, :cond_b2

    .line 173
    sub-int v12, v2, v7

    .line 175
    add-int/2addr v12, v8

    .line 176
    sub-int v8, v12, v13

    .line 178
    goto :goto_b6

    .line 179
    :cond_b2
    sub-int v8, v7, v8

    .line 181
    add-int v12, v8, v13

    .line 183
    :goto_b6
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 186
    move-result v13

    .line 187
    add-int/2addr v13, v5

    .line 188
    invoke-virtual {v11, v8, v5, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 191
    iget-object v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 193
    if-eqz v8, :cond_dd

    .line 195
    invoke-interface {v8}, Landroidx/window/layout/h;->b()Landroidx/window/layout/h$a;

    .line 198
    move-result-object v8

    .line 199
    sget-object v12, Landroidx/window/layout/h$a;->b:Landroidx/window/layout/h$a;

    .line 201
    if-ne v8, v12, :cond_dd

    .line 203
    iget-object v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 205
    invoke-interface {v8}, Landroidx/window/layout/h;->a()Z

    .line 208
    move-result v8

    .line 209
    if-eqz v8, :cond_dd

    .line 211
    iget-object v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 213
    invoke-interface {v8}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    .line 216
    move-result-object v8

    .line 217
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 220
    move-result v8

    .line 221
    goto :goto_de

    .line 222
    :cond_dd
    const/4 v8, 0x0

    .line 223
    :goto_de
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 226
    move-result v11

    .line 227
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 230
    move-result v8

    .line 231
    add-int/2addr v8, v11

    .line 232
    add-int/2addr v8, v3

    .line 233
    move v3, v8

    .line 234
    :goto_e9
    add-int/lit8 v10, v10, 0x1

    .line 236
    move v9, v7

    .line 237
    goto/16 :goto_3a

    .line 239
    :cond_ee
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 241
    if-eqz v1, :cond_104

    .line 243
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 245
    if-eqz v1, :cond_ff

    .line 247
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    .line 249
    if-eqz v1, :cond_ff

    .line 251
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 253
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d(F)V

    .line 256
    :cond_ff
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 258
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f(Landroid/view/View;)V

    .line 261
    :cond_104
    const/4 v1, 0x0

    .line 262
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 264
    return-void
.end method

.method public final onMeasure(II)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v2

    .line 9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result v3

    .line 13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    move-result v4

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result v5

    .line 21
    const/high16 v6, -0x80000000

    .line 23
    const/high16 v7, 0x40000000  # 2.0f

    .line 25
    const/4 v8, 0x0

    .line 26
    if-eq v4, v6, :cond_2b

    .line 28
    if-eq v4, v7, :cond_1f

    .line 30
    move v5, v8

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v9

    .line 36
    sub-int/2addr v5, v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    move-result v9

    .line 41
    sub-int/2addr v5, v9

    .line 42
    :goto_29
    move v9, v5

    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    move-result v9

    .line 48
    sub-int/2addr v5, v9

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v9

    .line 53
    sub-int/2addr v5, v9

    .line 54
    move v9, v5

    .line 55
    move v5, v8

    .line 56
    :goto_37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 59
    move-result v10

    .line 60
    sub-int v10, v3, v10

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 65
    move-result v11

    .line 66
    sub-int/2addr v10, v11

    .line 67
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 70
    move-result v10

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    move-result v11

    .line 75
    const/4 v12, 0x2

    .line 76
    if-le v11, v12, :cond_54

    .line 78
    const-string v13, "SlidingPaneLayout"

    .line 80
    const-string v14, "onMeasure: More than two child views are not supported."

    .line 82
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_54
    const/4 v13, 0x0

    .line 86
    iput-object v13, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 88
    move v15, v8

    .line 89
    move/from16 v16, v15

    .line 91
    move v13, v10

    .line 92
    const/16 v17, 0x0

    .line 94
    :goto_5d
    const/16 v12, 0x8

    .line 96
    if-ge v15, v11, :cond_f2

    .line 98
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    move-result-object v18

    .line 106
    move-object/from16 v7, v18

    .line 108
    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 110
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 113
    move-result v14

    .line 114
    if-ne v14, v12, :cond_77

    .line 116
    iput-boolean v8, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->c:Z

    .line 118
    goto/16 :goto_e9

    .line 120
    :cond_77
    iget v12, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    .line 122
    const/4 v14, 0x0

    .line 123
    cmpl-float v19, v12, v14

    .line 125
    if-lez v19, :cond_86

    .line 127
    add-float v17, v17, v12

    .line 129
    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 131
    if-nez v12, :cond_86

    .line 133
    goto/16 :goto_e9

    .line 135
    :cond_86
    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 137
    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 139
    add-int/2addr v12, v14

    .line 140
    sub-int v12, v10, v12

    .line 142
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 145
    move-result v12

    .line 146
    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 148
    const/4 v8, -0x2

    .line 149
    if-ne v14, v8, :cond_a1

    .line 151
    if-nez v2, :cond_9a

    .line 153
    move v8, v2

    .line 154
    goto :goto_9c

    .line 155
    :cond_9a
    const/high16 v8, -0x80000000

    .line 157
    :goto_9c
    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 160
    move-result v8

    .line 161
    goto :goto_b0

    .line 162
    :cond_a1
    const/4 v8, -0x1

    .line 163
    if-ne v14, v8, :cond_a9

    .line 165
    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 168
    move-result v8

    .line 169
    goto :goto_b0

    .line 170
    :cond_a9
    const/high16 v8, 0x40000000  # 2.0f

    .line 172
    invoke-static {v14, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 175
    move-result v12

    .line 176
    move v8, v12

    .line 177
    :goto_b0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 180
    move-result v12

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 184
    move-result v14

    .line 185
    add-int/2addr v14, v12

    .line 186
    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 188
    invoke-static {v1, v14, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 191
    move-result v12

    .line 192
    invoke-virtual {v6, v8, v12}, Landroid/view/View;->measure(II)V

    .line 195
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 198
    move-result v8

    .line 199
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 202
    move-result v12

    .line 203
    if-le v12, v5, :cond_d8

    .line 205
    const/high16 v14, -0x80000000

    .line 207
    if-ne v4, v14, :cond_d5

    .line 209
    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    .line 212
    move-result v5

    .line 213
    goto :goto_d8

    .line 214
    :cond_d5
    if-nez v4, :cond_d8

    .line 216
    move v5, v12

    .line 217
    :cond_d8
    :goto_d8
    sub-int/2addr v13, v8

    .line 218
    if-nez v15, :cond_dc

    .line 220
    goto :goto_e9

    .line 221
    :cond_dc
    if-gez v13, :cond_e0

    .line 223
    const/4 v8, 0x1

    .line 224
    goto :goto_e1

    .line 225
    :cond_e0
    const/4 v8, 0x0

    .line 226
    :goto_e1
    iput-boolean v8, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    .line 228
    or-int v16, v16, v8

    .line 230
    if-eqz v8, :cond_e9

    .line 232
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 234
    :cond_e9
    :goto_e9
    add-int/lit8 v15, v15, 0x1

    .line 236
    const/high16 v6, -0x80000000

    .line 238
    const/high16 v7, 0x40000000  # 2.0f

    .line 240
    const/4 v8, 0x0

    .line 241
    goto/16 :goto_5d

    .line 243
    :cond_f2
    if-nez v16, :cond_f9

    .line 245
    const/4 v2, 0x0

    .line 246
    cmpl-float v6, v17, v2

    .line 248
    if-lez v6, :cond_1ac

    .line 250
    :cond_f9
    const/4 v2, 0x0

    .line 251
    :goto_fa
    if-ge v2, v11, :cond_1ac

    .line 253
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 260
    move-result v7

    .line 261
    if-ne v7, v12, :cond_10c

    .line 263
    move/from16 v20, v13

    .line 265
    const/16 v18, 0x0

    .line 267
    goto/16 :goto_1a4

    .line 269
    :cond_10c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 272
    move-result-object v7

    .line 273
    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 275
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 277
    if-nez v8, :cond_11f

    .line 279
    iget v8, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    .line 281
    const/4 v14, 0x0

    .line 282
    cmpl-float v8, v8, v14

    .line 284
    if-lez v8, :cond_11f

    .line 286
    const/4 v8, 0x1

    .line 287
    goto :goto_120

    .line 288
    :cond_11f
    const/4 v8, 0x0

    .line 289
    :goto_120
    if-eqz v8, :cond_124

    .line 291
    const/4 v8, 0x0

    .line 292
    goto :goto_128

    .line 293
    :cond_124
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 296
    move-result v8

    .line 297
    :goto_128
    if-eqz v16, :cond_138

    .line 299
    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 301
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 303
    add-int/2addr v14, v7

    .line 304
    sub-int v7, v10, v14

    .line 306
    const/high16 v14, 0x40000000  # 2.0f

    .line 308
    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 311
    move-result v15

    .line 312
    goto :goto_155

    .line 313
    :cond_138
    iget v14, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    .line 315
    const/4 v15, 0x0

    .line 316
    cmpl-float v14, v14, v15

    .line 318
    if-lez v14, :cond_153

    .line 320
    const/4 v14, 0x0

    .line 321
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 324
    move-result v15

    .line 325
    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    .line 327
    int-to-float v14, v15

    .line 328
    mul-float/2addr v7, v14

    .line 329
    div-float v7, v7, v17

    .line 331
    float-to-int v7, v7

    .line 332
    add-int/2addr v7, v8

    .line 333
    const/high16 v14, 0x40000000  # 2.0f

    .line 335
    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 338
    move-result v15

    .line 339
    goto :goto_155

    .line 340
    :cond_153
    move v7, v8

    .line 341
    const/4 v15, 0x0

    .line 342
    :goto_155
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 345
    move-result v14

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 349
    move-result v20

    .line 350
    add-int v14, v20, v14

    .line 352
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 355
    move-result-object v20

    .line 356
    move-object/from16 v12, v20

    .line 358
    check-cast v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 360
    move/from16 v20, v13

    .line 362
    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 364
    if-nez v13, :cond_177

    .line 366
    iget v13, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    .line 368
    const/16 v18, 0x0

    .line 370
    cmpl-float v13, v13, v18

    .line 372
    if-lez v13, :cond_179

    .line 374
    const/4 v13, 0x1

    .line 375
    goto :goto_17a

    .line 376
    :cond_177
    const/16 v18, 0x0

    .line 378
    :cond_179
    const/4 v13, 0x0

    .line 379
    :goto_17a
    if-eqz v13, :cond_183

    .line 381
    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 383
    invoke-static {v1, v14, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 386
    move-result v12

    .line 387
    goto :goto_18d

    .line 388
    :cond_183
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 391
    move-result v12

    .line 392
    const/high16 v13, 0x40000000  # 2.0f

    .line 394
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 397
    move-result v12

    .line 398
    :goto_18d
    if-eq v8, v7, :cond_1a4

    .line 400
    invoke-virtual {v6, v15, v12}, Landroid/view/View;->measure(II)V

    .line 403
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 406
    move-result v6

    .line 407
    if-le v6, v5, :cond_1a4

    .line 409
    const/high16 v7, -0x80000000

    .line 411
    if-ne v4, v7, :cond_1a1

    .line 413
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 416
    move-result v5

    .line 417
    goto :goto_1a4

    .line 418
    :cond_1a1
    if-nez v4, :cond_1a4

    .line 420
    move v5, v6

    .line 421
    :cond_1a4
    :goto_1a4
    add-int/lit8 v2, v2, 0x1

    .line 423
    move/from16 v13, v20

    .line 425
    const/16 v12, 0x8

    .line 427
    goto/16 :goto_fa

    .line 429
    :cond_1ac
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 431
    if-eqz v1, :cond_26c

    .line 433
    invoke-interface {v1}, Landroidx/window/layout/h;->a()Z

    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_1b8

    .line 439
    goto/16 :goto_26c

    .line 441
    :cond_1b8
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 443
    invoke-interface {v1}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    .line 446
    move-result-object v1

    .line 447
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 449
    if-nez v1, :cond_1c4

    .line 451
    goto/16 :goto_26c

    .line 453
    :cond_1c4
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 455
    invoke-interface {v1}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    .line 458
    move-result-object v1

    .line 459
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 461
    if-nez v1, :cond_26c

    .line 463
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 465
    const/4 v2, 0x2

    .line 466
    new-array v4, v2, [I

    .line 468
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 471
    new-instance v2, Landroid/graphics/Rect;

    .line 473
    const/4 v6, 0x0

    .line 474
    aget v7, v4, v6

    .line 476
    const/4 v6, 0x1

    .line 477
    aget v8, v4, v6

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 482
    move-result v9

    .line 483
    add-int/2addr v9, v7

    .line 484
    aget v12, v4, v6

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 489
    move-result v6

    .line 490
    add-int/2addr v6, v12

    .line 491
    invoke-direct {v2, v7, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 494
    new-instance v6, Landroid/graphics/Rect;

    .line 496
    invoke-interface {v1}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    .line 499
    move-result-object v1

    .line 500
    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 503
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 506
    move-result v1

    .line 507
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 510
    move-result v2

    .line 511
    if-nez v2, :cond_206

    .line 513
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_208

    .line 519
    :cond_206
    if-nez v1, :cond_20a

    .line 521
    :cond_208
    const/4 v6, 0x0

    .line 522
    goto :goto_215

    .line 523
    :cond_20a
    const/4 v1, 0x0

    .line 524
    aget v2, v4, v1

    .line 526
    neg-int v1, v2

    .line 527
    const/4 v2, 0x1

    .line 528
    aget v4, v4, v2

    .line 530
    neg-int v2, v4

    .line 531
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 534
    :goto_215
    if-nez v6, :cond_218

    .line 536
    goto :goto_26c

    .line 537
    :cond_218
    new-instance v1, Landroid/graphics/Rect;

    .line 539
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 542
    move-result v2

    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 546
    move-result v4

    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 550
    move-result v7

    .line 551
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 553
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 556
    move-result v7

    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 560
    move-result v8

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 564
    move-result v9

    .line 565
    sub-int/2addr v8, v9

    .line 566
    invoke-direct {v1, v2, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 572
    move-result v2

    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 576
    move-result v4

    .line 577
    sub-int/2addr v2, v4

    .line 578
    new-instance v4, Landroid/graphics/Rect;

    .line 580
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 582
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 585
    move-result v6

    .line 586
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 589
    move-result v7

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 593
    move-result v8

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 597
    move-result v9

    .line 598
    sub-int/2addr v8, v9

    .line 599
    invoke-direct {v4, v6, v7, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 602
    new-instance v13, Ljava/util/ArrayList;

    .line 604
    const/4 v2, 0x2

    .line 605
    new-array v2, v2, [Landroid/graphics/Rect;

    .line 607
    const/4 v6, 0x0

    .line 608
    aput-object v1, v2, v6

    .line 610
    const/4 v1, 0x1

    .line 611
    aput-object v4, v2, v1

    .line 613
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 616
    move-result-object v1

    .line 617
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 620
    goto :goto_26d

    .line 621
    :cond_26c
    :goto_26c
    const/4 v13, 0x0

    .line 622
    :goto_26d
    if-eqz v13, :cond_31b

    .line 624
    if-nez v16, :cond_31b

    .line 626
    const/4 v14, 0x0

    .line 627
    :goto_272
    if-ge v14, v11, :cond_31b

    .line 629
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 632
    move-result-object v1

    .line 633
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 636
    move-result v2

    .line 637
    const/16 v4, 0x8

    .line 639
    if-ne v2, v4, :cond_287

    .line 641
    const/high16 v4, 0x40000000  # 2.0f

    .line 643
    const/high16 v12, -0x80000000

    .line 645
    const/4 v15, 0x0

    .line 646
    goto/16 :goto_30e

    .line 648
    :cond_287
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 651
    move-result-object v2

    .line 652
    check-cast v2, Landroid/graphics/Rect;

    .line 654
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 657
    move-result-object v6

    .line 658
    check-cast v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 660
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 662
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 664
    add-int/2addr v7, v8

    .line 665
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 668
    move-result v8

    .line 669
    const/high16 v9, 0x40000000  # 2.0f

    .line 671
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 674
    move-result v8

    .line 675
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 678
    move-result v9

    .line 679
    const/high16 v12, -0x80000000

    .line 681
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 684
    move-result v9

    .line 685
    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    .line 688
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 691
    move-result v9

    .line 692
    const/high16 v15, 0x1000000

    .line 694
    and-int/2addr v9, v15

    .line 695
    const/4 v15, 0x1

    .line 696
    if-eq v9, v15, :cond_300

    .line 698
    instance-of v9, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    .line 700
    if-eqz v9, :cond_2cc

    .line 702
    move-object v15, v1

    .line 703
    check-cast v15, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    .line 705
    const/4 v4, 0x0

    .line 706
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 709
    move-result-object v15

    .line 710
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 712
    invoke-static {v15}, Lm0/g0$d;->e(Landroid/view/View;)I

    .line 715
    move-result v4

    .line 716
    goto :goto_2d2

    .line 717
    :cond_2cc
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 719
    invoke-static {v1}, Lm0/g0$d;->e(Landroid/view/View;)I

    .line 722
    move-result v4

    .line 723
    :goto_2d2
    if-eqz v4, :cond_2f1

    .line 725
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 728
    move-result v4

    .line 729
    if-eqz v9, :cond_2e7

    .line 731
    move-object v9, v1

    .line 732
    check-cast v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    .line 734
    const/4 v15, 0x0

    .line 735
    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 738
    move-result-object v9

    .line 739
    invoke-static {v9}, Lm0/g0$d;->e(Landroid/view/View;)I

    .line 742
    move-result v9

    .line 743
    goto :goto_2ec

    .line 744
    :cond_2e7
    const/4 v15, 0x0

    .line 745
    invoke-static {v1}, Lm0/g0$d;->e(Landroid/view/View;)I

    .line 748
    move-result v9

    .line 749
    :goto_2ec
    if-ge v4, v9, :cond_2f2

    .line 751
    const/high16 v4, 0x40000000  # 2.0f

    .line 753
    goto :goto_303

    .line 754
    :cond_2f1
    const/4 v15, 0x0

    .line 755
    :cond_2f2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 758
    move-result v2

    .line 759
    const/high16 v4, 0x40000000  # 2.0f

    .line 761
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 764
    move-result v2

    .line 765
    invoke-virtual {v1, v2, v8}, Landroid/view/View;->measure(II)V

    .line 768
    goto :goto_30e

    .line 769
    :cond_300
    const/high16 v4, 0x40000000  # 2.0f

    .line 771
    const/4 v15, 0x0

    .line 772
    :goto_303
    sub-int v2, v10, v7

    .line 774
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 777
    move-result v2

    .line 778
    invoke-virtual {v1, v2, v8}, Landroid/view/View;->measure(II)V

    .line 781
    if-nez v14, :cond_310

    .line 783
    :goto_30e
    const/4 v2, 0x1

    .line 784
    goto :goto_317

    .line 785
    :cond_310
    const/4 v2, 0x1

    .line 786
    iput-boolean v2, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    .line 788
    iput-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 790
    move/from16 v16, v2

    .line 792
    :goto_317
    add-int/lit8 v14, v14, 0x1

    .line 794
    goto/16 :goto_272

    .line 796
    :cond_31b
    move/from16 v1, v16

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 801
    move-result v2

    .line 802
    add-int/2addr v2, v5

    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 806
    move-result v4

    .line 807
    add-int/2addr v4, v2

    .line 808
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 811
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 813
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 815
    iget v3, v2, Lr0/c;->a:I

    .line 817
    if-eqz v3, :cond_337

    .line 819
    if-nez v1, :cond_337

    .line 821
    invoke-virtual {v2}, Lr0/c;->a()V

    .line 824
    :cond_337
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->a:Z

    .line 20
    if-eqz v0, :cond_2a

    .line 22
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 24
    const/4 v1, 0x1

    .line 25
    if-nez v0, :cond_1c

    .line 27
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 29
    :cond_1c
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 31
    if-nez v0, :cond_27

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3f

    .line 40
    :cond_27
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 42
    goto :goto_3f

    .line 43
    :cond_2a
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 45
    const/4 v1, 0x0

    .line 46
    if-nez v0, :cond_31

    .line 48
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 50
    :cond_31
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 52
    if-nez v0, :cond_3d

    .line 54
    const/high16 v0, 0x3f800000  # 1.0f

    .line 56
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3f

    .line 62
    :cond_3d
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 64
    :cond_3f
    :goto_3f
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->a:Z

    .line 66
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 68
    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->b:I

    .line 70
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setLockMode(I)V

    .line 73
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 7
    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 17
    move-result v0

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 21
    :goto_14
    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->a:Z

    .line 23
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:I

    .line 25
    iput v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->b:I

    .line 27
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    if-eq p1, p3, :cond_8

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 9
    :cond_8
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 12
    invoke-virtual {v0, p1}, Lr0/c;->m(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_5d

    .line 22
    if-eq v0, v1, :cond_18

    .line 24
    goto :goto_69

    .line 25
    :cond_18
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 27
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_69

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 40
    move-result p1

    .line 41
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    .line 43
    sub-float v2, v0, v2

    .line 45
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 47
    sub-float v3, p1, v3

    .line 49
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 51
    iget v4, v4, Lr0/c;->b:I

    .line 53
    mul-float/2addr v2, v2

    .line 54
    mul-float/2addr v3, v3

    .line 55
    add-float/2addr v3, v2

    .line 56
    mul-int/2addr v4, v4

    .line 57
    int-to-float v2, v4

    .line 58
    cmpg-float v2, v3, v2

    .line 60
    if-gez v2, :cond_69

    .line 62
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 64
    float-to-int v0, v0

    .line 65
    float-to-int p1, p1

    .line 66
    invoke-static {v2, v0, p1}, Lr0/c;->l(Landroid/view/View;II)Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_69

    .line 72
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 74
    const/4 v0, 0x0

    .line 75
    if-nez p1, :cond_4e

    .line 77
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 79
    :cond_4e
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 81
    if-nez p1, :cond_5a

    .line 83
    const/high16 p1, 0x3f800000  # 1.0f

    .line 85
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_69

    .line 91
    :cond_5a
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 93
    goto :goto_69

    .line 94
    :cond_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 101
    move-result p1

    .line 102
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    .line 104
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 106
    :cond_69
    :goto_69
    return v1
.end method

.method public final removeView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    .line 7
    if-eqz v0, :cond_12

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_16

    .line 10
    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 12
    if-nez p2, :cond_16

    .line 14
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 16
    if-ne p1, p2, :cond_13

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 23
    :cond_16
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:I

    .line 3
    return-void
.end method

.method public final setLockMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:I

    .line 3
    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_9
    if-eqz p1, :cond_10

    .line 12
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_10
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    .line 19
    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    .line 3
    return-void
.end method
