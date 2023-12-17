.class public final Landroidx/appcompat/app/AppCompatDelegateImpl;
.super Landroidx/appcompat/app/k;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$f;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$e;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$d;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$h;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$j;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$i;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$g;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$k;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$b;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$l;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$c;
    }
.end annotation


# static fields
.field public static final m0:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final n0:[I

.field public static final o0:Z

.field public static final p0:Z


# instance fields
.field public A:Landroid/widget/PopupWindow;

.field public B:Landroidx/appcompat/app/n;

.field public C:Lm0/o0;

.field public D:Z

.field public E:Z

.field public F:Landroid/view/ViewGroup;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field public R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Landroid/content/res/Configuration;

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:Z

.field public b0:Landroidx/appcompat/app/AppCompatDelegateImpl$j;

.field public c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

.field public d0:Z

.field public e0:I

.field public final f0:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

.field public g0:Z

.field public h0:Landroid/graphics/Rect;

.field public i0:Landroid/graphics/Rect;

.field public j0:Landroidx/appcompat/app/r;

.field public k0:Landroid/window/OnBackInvokedDispatcher;

.field public final l:Ljava/lang/Object;

.field public l0:Landroid/window/OnBackInvokedCallback;

.field public final m:Landroid/content/Context;

.field public n:Landroid/view/Window;

.field public o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

.field public final p:Landroidx/appcompat/app/i;

.field public q:Landroidx/appcompat/app/a0;

.field public r:Lm/f;

.field public s:Ljava/lang/CharSequence;

.field public v:Landroidx/appcompat/widget/c0;

.field public w:Landroidx/appcompat/app/AppCompatDelegateImpl$b;

.field public x:Landroidx/appcompat/app/AppCompatDelegateImpl$l;

.field public y:Lm/a;

.field public z:Landroidx/appcompat/widget/ActionBarContextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/collection/f;

    .line 3
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 6
    sput-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m0:Landroidx/collection/f;

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [I

    .line 11
    const v2, 0x1010054

    .line 14
    const/4 v3, 0x0

    .line 15
    aput v2, v1, v3

    .line 17
    sput-object v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n0:[I

    .line 19
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 21
    const-string v2, "robolectric"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    xor-int/2addr v1, v0

    .line 28
    sput-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->o0:Z

    .line 30
    sput-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p0:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/i;Ljava/lang/Object;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/k;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    .line 10
    const/16 v1, -0x64

    .line 12
    iput v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 14
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 16
    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 19
    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 21
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    .line 25
    iput-object p4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 27
    instance-of p3, p4, Landroid/app/Dialog;

    .line 29
    if-eqz p3, :cond_3f

    .line 31
    :goto_1e
    if-eqz p1, :cond_33

    .line 33
    instance-of p3, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    if-eqz p3, :cond_28

    .line 37
    move-object v0, p1

    .line 38
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    goto :goto_33

    .line 41
    :cond_28
    instance-of p3, p1, Landroid/content/ContextWrapper;

    .line 43
    if-eqz p3, :cond_33

    .line 45
    check-cast p1, Landroid/content/ContextWrapper;

    .line 47
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 50
    move-result-object p1

    .line 51
    goto :goto_1e

    .line 52
    :cond_33
    :goto_33
    if-eqz v0, :cond_3f

    .line 54
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroidx/appcompat/app/k;->f()I

    .line 61
    move-result p1

    .line 62
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 64
    :cond_3f
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 66
    if-ne p1, v1, :cond_6a

    .line 68
    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m0:Landroidx/collection/f;

    .line 70
    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 72
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p1, p3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Ljava/lang/Integer;

    .line 86
    if-eqz p3, :cond_6a

    .line 88
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result p3

    .line 92
    iput p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 94
    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p1, p3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_6a
    if-eqz p2, :cond_6f

    .line 109
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->B(Landroid/view/Window;)V

    .line 112
    :cond_6f
    invoke-static {}, Landroidx/appcompat/widget/g;->d()V

    .line 115
    return-void
.end method

.method public static C(Landroid/content/Context;)Li0/f;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x21

    .line 6
    if-lt v0, v2, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    sget-object v0, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-object v1

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b(Landroid/content/res/Configuration;)Li0/f;

    .line 29
    move-result-object p0

    .line 30
    iget-object v1, v0, Li0/f;->a:Li0/g;

    .line 32
    invoke-interface {v1}, Li0/g;->isEmpty()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_28

    .line 38
    sget-object v0, Li0/f;->b:Li0/f;

    .line 40
    goto :goto_7d

    .line 41
    :cond_28
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 43
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_2e
    iget-object v3, v0, Li0/f;->a:Li0/g;

    .line 49
    invoke-interface {v3}, Li0/g;->size()I

    .line 52
    move-result v3

    .line 53
    iget-object v4, p0, Li0/f;->a:Li0/g;

    .line 55
    invoke-interface {v4}, Li0/g;->size()I

    .line 58
    move-result v4

    .line 59
    add-int/2addr v4, v3

    .line 60
    if-ge v2, v4, :cond_62

    .line 62
    iget-object v3, v0, Li0/f;->a:Li0/g;

    .line 64
    invoke-interface {v3}, Li0/g;->size()I

    .line 67
    move-result v3

    .line 68
    if-ge v2, v3, :cond_4c

    .line 70
    iget-object v3, v0, Li0/f;->a:Li0/g;

    .line 72
    invoke-interface {v3, v2}, Li0/g;->get(I)Ljava/util/Locale;

    .line 75
    move-result-object v3

    .line 76
    goto :goto_5a

    .line 77
    :cond_4c
    iget-object v3, v0, Li0/f;->a:Li0/g;

    .line 79
    invoke-interface {v3}, Li0/g;->size()I

    .line 82
    move-result v3

    .line 83
    sub-int v3, v2, v3

    .line 85
    iget-object v4, p0, Li0/f;->a:Li0/g;

    .line 87
    invoke-interface {v4, v3}, Li0/g;->get(I)Ljava/util/Locale;

    .line 90
    move-result-object v3

    .line 91
    :goto_5a
    if-eqz v3, :cond_5f

    .line 93
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_2e

    .line 99
    :cond_62
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 102
    move-result v0

    .line 103
    new-array v0, v0, [Ljava/util/Locale;

    .line 105
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    check-cast v0, [Ljava/util/Locale;

    .line 111
    invoke-static {v0}, Li0/f$b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Li0/f;

    .line 117
    new-instance v2, Li0/h;

    .line 119
    invoke-direct {v2, v0}, Li0/h;-><init>(Ljava/lang/Object;)V

    .line 122
    invoke-direct {v1, v2}, Li0/f;-><init>(Li0/h;)V

    .line 125
    move-object v0, v1

    .line 126
    :goto_7d
    iget-object v1, v0, Li0/f;->a:Li0/g;

    .line 128
    invoke-interface {v1}, Li0/g;->isEmpty()Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_86

    .line 134
    goto :goto_87

    .line 135
    :cond_86
    move-object p0, v0

    .line 136
    :goto_87
    return-object p0
.end method

.method public static G(Landroid/content/Context;ILi0/f;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1e

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1b

    .line 7
    if-eqz p4, :cond_a

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_20

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    move-result-object p0

    .line 23
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    and-int/lit8 p0, p0, 0x30

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    const/16 p0, 0x20

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const/16 p0, 0x10

    .line 33
    :goto_20
    new-instance p1, Landroid/content/res/Configuration;

    .line 35
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 38
    const/4 p4, 0x0

    .line 39
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 41
    if-eqz p3, :cond_2d

    .line 43
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 46
    :cond_2d
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    and-int/lit8 p3, p3, -0x31

    .line 50
    or-int/2addr p0, p3

    .line 51
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 53
    if-eqz p2, :cond_39

    .line 55
    invoke-static {p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->d(Landroid/content/res/Configuration;Li0/f;)V

    .line 58
    :cond_39
    return-object p1
.end method


# virtual methods
.method public final A(ZZ)Z
    .registers 14

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 9
    const/16 v2, -0x64

    .line 11
    if-eq v0, v2, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    sget v0, Landroidx/appcompat/app/k;->b:I

    .line 16
    :goto_f
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 18
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->P(Landroid/content/Context;I)I

    .line 21
    move-result v2

    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    const/16 v4, 0x21

    .line 26
    const/4 v5, 0x0

    .line 27
    if-ge v3, v4, :cond_23

    .line 29
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 31
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->C(Landroid/content/Context;)Li0/f;

    .line 34
    move-result-object v4

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-object v4, v5

    .line 37
    :goto_24
    if-nez p2, :cond_36

    .line 39
    if-eqz v4, :cond_36

    .line 41
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b(Landroid/content/res/Configuration;)Li0/f;

    .line 54
    move-result-object v4

    .line 55
    :cond_36
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 57
    invoke-static {p2, v2, v4, v5, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->G(Landroid/content/Context;ILi0/f;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 60
    move-result-object p2

    .line 61
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 63
    iget-boolean v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Z

    .line 65
    const/4 v7, 0x1

    .line 66
    if-nez v6, :cond_7a

    .line 68
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 70
    instance-of v6, v6, Landroid/app/Activity;

    .line 72
    if-eqz v6, :cond_7a

    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    move-result-object v6

    .line 78
    if-nez v6, :cond_51

    .line 80
    move v2, v1

    .line 81
    goto :goto_7e

    .line 82
    :cond_51
    const/16 v8, 0x1d

    .line 84
    if-lt v3, v8, :cond_58

    .line 86
    const/high16 v3, 0x100c0000

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    const/high16 v3, 0xc0000

    .line 91
    :goto_5a
    :try_start_5a
    new-instance v8, Landroid/content/ComponentName;

    .line 93
    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 95
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    move-result-object v9

    .line 99
    invoke-direct {v8, v2, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {v6, v8, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_7a

    .line 108
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 110
    iput v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:I
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_6f} :catch_70

    .line 112
    goto :goto_7a

    .line 113
    :catch_70
    move-exception v2

    .line 114
    const-string v3, "AppCompatDelegate"

    .line 116
    const-string v6, "Exception while getting ActivityInfo"

    .line 118
    invoke-static {v3, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iput v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:I

    .line 123
    :cond_7a
    :goto_7a
    iput-boolean v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Z

    .line 125
    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:I

    .line 127
    :goto_7e
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Landroid/content/res/Configuration;

    .line 129
    if-nez v3, :cond_8c

    .line 131
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 133
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 140
    move-result-object v3

    .line 141
    :cond_8c
    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 143
    and-int/lit8 v6, v6, 0x30

    .line 145
    iget v8, p2, Landroid/content/res/Configuration;->uiMode:I

    .line 147
    and-int/lit8 v8, v8, 0x30

    .line 149
    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b(Landroid/content/res/Configuration;)Li0/f;

    .line 152
    move-result-object v3

    .line 153
    if-nez v4, :cond_9c

    .line 155
    move-object p2, v5

    .line 156
    goto :goto_a0

    .line 157
    :cond_9c
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b(Landroid/content/res/Configuration;)Li0/f;

    .line 160
    move-result-object p2

    .line 161
    :goto_a0
    if-eq v6, v8, :cond_a5

    .line 163
    const/16 v4, 0x200

    .line 165
    goto :goto_a6

    .line 166
    :cond_a5
    move v4, v1

    .line 167
    :goto_a6
    if-eqz p2, :cond_b2

    .line 169
    invoke-virtual {v3, p2}, Li0/f;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_b2

    .line 175
    or-int/lit8 v3, v4, 0x4

    .line 177
    or-int/lit16 v4, v3, 0x2000

    .line 179
    :cond_b2
    not-int v3, v2

    .line 180
    and-int/2addr v3, v4

    .line 181
    const/16 v6, 0x1c

    .line 183
    const/4 v9, 0x3

    .line 184
    if-eqz v3, :cond_f6

    .line 186
    if-eqz p1, :cond_f6

    .line 188
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    .line 190
    if-eqz p1, :cond_f6

    .line 192
    sget-boolean p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->o0:Z

    .line 194
    if-nez p1, :cond_c7

    .line 196
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:Z

    .line 198
    if-eqz p1, :cond_f6

    .line 200
    :cond_c7
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 202
    instance-of v3, p1, Landroid/app/Activity;

    .line 204
    if-eqz v3, :cond_f6

    .line 206
    check-cast p1, Landroid/app/Activity;

    .line 208
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_f6

    .line 214
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 216
    check-cast p1, Landroid/app/Activity;

    .line 218
    sget v3, Ld0/a;->a:I

    .line 220
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 222
    if-lt v3, v6, :cond_e3

    .line 224
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    .line 227
    goto :goto_f4

    .line 228
    :cond_e3
    new-instance v3, Landroid/os/Handler;

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 233
    move-result-object v10

    .line 234
    invoke-direct {v3, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 237
    new-instance v10, Landroidx/activity/b;

    .line 239
    invoke-direct {v10, p1, v9}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 242
    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    :goto_f4
    move p1, v7

    .line 246
    goto :goto_f7

    .line 247
    :cond_f6
    move p1, v1

    .line 248
    :goto_f7
    if-nez p1, :cond_21b

    .line 250
    if-eqz v4, :cond_21b

    .line 252
    and-int p1, v4, v2

    .line 254
    if-ne p1, v4, :cond_100

    .line 256
    move v1, v7

    .line 257
    :cond_100
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    move-result-object p1

    .line 263
    new-instance v2, Landroid/content/res/Configuration;

    .line 265
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 268
    move-result-object v3

    .line 269
    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 272
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 275
    move-result-object v3

    .line 276
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 278
    and-int/lit8 v3, v3, -0x31

    .line 280
    or-int/2addr v3, v8

    .line 281
    iput v3, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 283
    if-eqz p2, :cond_11f

    .line 285
    invoke-static {v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->d(Landroid/content/res/Configuration;Li0/f;)V

    .line 288
    :cond_11f
    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 291
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 293
    const/16 v8, 0x1a

    .line 295
    if-ge v3, v8, :cond_1d6

    .line 297
    if-lt v3, v6, :cond_12c

    .line 299
    goto/16 :goto_1d6

    .line 301
    :cond_12c
    sget-boolean v3, Landroidx/appcompat/app/w;->h:Z

    .line 303
    const-string v6, "ResourcesFlusher"

    .line 305
    if-nez v3, :cond_148

    .line 307
    :try_start_132
    const-class v3, Landroid/content/res/Resources;

    .line 309
    const-string v8, "mResourcesImpl"

    .line 311
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 314
    move-result-object v3

    .line 315
    sput-object v3, Landroidx/appcompat/app/w;->g:Ljava/lang/reflect/Field;

    .line 317
    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_13f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_132 .. :try_end_13f} :catch_140

    .line 320
    goto :goto_146

    .line 321
    :catch_140
    move-exception v3

    .line 322
    const-string v8, "Could not retrieve Resources#mResourcesImpl field"

    .line 324
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :goto_146
    sput-boolean v7, Landroidx/appcompat/app/w;->h:Z

    .line 329
    :cond_148
    sget-object v3, Landroidx/appcompat/app/w;->g:Ljava/lang/reflect/Field;

    .line 331
    if-nez v3, :cond_14e

    .line 333
    goto/16 :goto_1d6

    .line 335
    :cond_14e
    :try_start_14e
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    move-result-object p1
    :try_end_152
    .catch Ljava/lang/IllegalAccessException; {:try_start_14e .. :try_end_152} :catch_153

    .line 339
    goto :goto_15a

    .line 340
    :catch_153
    move-exception p1

    .line 341
    const-string v3, "Could not retrieve value from Resources#mResourcesImpl"

    .line 343
    invoke-static {v6, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    move-object p1, v5

    .line 347
    :goto_15a
    if-nez p1, :cond_15e

    .line 349
    goto/16 :goto_1d6

    .line 351
    :cond_15e
    sget-boolean v3, Landroidx/appcompat/app/w;->b:Z

    .line 353
    if-nez v3, :cond_17a

    .line 355
    :try_start_162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    move-result-object v3

    .line 359
    const-string v8, "mDrawableCache"

    .line 361
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 364
    move-result-object v3

    .line 365
    sput-object v3, Landroidx/appcompat/app/w;->a:Ljava/lang/reflect/Field;

    .line 367
    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_171
    .catch Ljava/lang/NoSuchFieldException; {:try_start_162 .. :try_end_171} :catch_172

    .line 370
    goto :goto_178

    .line 371
    :catch_172
    move-exception v3

    .line 372
    const-string v8, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 374
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    :goto_178
    sput-boolean v7, Landroidx/appcompat/app/w;->b:Z

    .line 379
    :cond_17a
    sget-object v3, Landroidx/appcompat/app/w;->a:Ljava/lang/reflect/Field;

    .line 381
    if-eqz v3, :cond_189

    .line 383
    :try_start_17e
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-result-object p1
    :try_end_182
    .catch Ljava/lang/IllegalAccessException; {:try_start_17e .. :try_end_182} :catch_183

    .line 387
    goto :goto_18a

    .line 388
    :catch_183
    move-exception p1

    .line 389
    const-string v3, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 391
    invoke-static {v6, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    :cond_189
    move-object p1, v5

    .line 395
    :goto_18a
    if-eqz p1, :cond_1d6

    .line 397
    sget-boolean v3, Landroidx/appcompat/app/w;->d:Z

    .line 399
    if-nez v3, :cond_1a1

    .line 401
    :try_start_190
    const-string v3, "android.content.res.ThemedResourceCache"

    .line 403
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 406
    move-result-object v3

    .line 407
    sput-object v3, Landroidx/appcompat/app/w;->c:Ljava/lang/Class;
    :try_end_198
    .catch Ljava/lang/ClassNotFoundException; {:try_start_190 .. :try_end_198} :catch_199

    .line 409
    goto :goto_19f

    .line 410
    :catch_199
    move-exception v3

    .line 411
    const-string v8, "Could not find ThemedResourceCache class"

    .line 413
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :goto_19f
    sput-boolean v7, Landroidx/appcompat/app/w;->d:Z

    .line 418
    :cond_1a1
    sget-object v3, Landroidx/appcompat/app/w;->c:Ljava/lang/Class;

    .line 420
    if-nez v3, :cond_1a6

    .line 422
    goto :goto_1d6

    .line 423
    :cond_1a6
    sget-boolean v8, Landroidx/appcompat/app/w;->f:Z

    .line 425
    if-nez v8, :cond_1be

    .line 427
    :try_start_1aa
    const-string v8, "mUnthemedEntries"

    .line 429
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 432
    move-result-object v3

    .line 433
    sput-object v3, Landroidx/appcompat/app/w;->e:Ljava/lang/reflect/Field;

    .line 435
    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1aa .. :try_end_1b5} :catch_1b6

    .line 438
    goto :goto_1bc

    .line 439
    :catch_1b6
    move-exception v3

    .line 440
    const-string v8, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 442
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    :goto_1bc
    sput-boolean v7, Landroidx/appcompat/app/w;->f:Z

    .line 447
    :cond_1be
    sget-object v3, Landroidx/appcompat/app/w;->e:Ljava/lang/reflect/Field;

    .line 449
    if-nez v3, :cond_1c3

    .line 451
    goto :goto_1d6

    .line 452
    :cond_1c3
    :try_start_1c3
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-result-object p1

    .line 456
    check-cast p1, Landroid/util/LongSparseArray;
    :try_end_1c9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c3 .. :try_end_1c9} :catch_1cb

    .line 458
    move-object v5, p1

    .line 459
    goto :goto_1d1

    .line 460
    :catch_1cb
    move-exception p1

    .line 461
    const-string v3, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 463
    invoke-static {v6, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    :goto_1d1
    if-eqz v5, :cond_1d6

    .line 468
    invoke-static {v5}, Landroidx/appcompat/app/w$a;->a(Landroid/util/LongSparseArray;)V

    .line 471
    :cond_1d6
    :goto_1d6
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:I

    .line 473
    if-eqz p1, :cond_1ea

    .line 475
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 477
    invoke-virtual {v3, p1}, Landroid/content/Context;->setTheme(I)V

    .line 480
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 485
    move-result-object p1

    .line 486
    iget v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:I

    .line 488
    invoke-virtual {p1, v3, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 491
    :cond_1ea
    if-eqz v1, :cond_21c

    .line 493
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 495
    instance-of v1, p1, Landroid/app/Activity;

    .line 497
    if-eqz v1, :cond_21c

    .line 499
    check-cast p1, Landroid/app/Activity;

    .line 501
    instance-of v1, p1, Landroidx/lifecycle/m;

    .line 503
    if-eqz v1, :cond_20f

    .line 505
    move-object v1, p1

    .line 506
    check-cast v1, Landroidx/lifecycle/m;

    .line 508
    invoke-interface {v1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 515
    move-result-object v1

    .line 516
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 518
    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 521
    move-result v1

    .line 522
    if-eqz v1, :cond_21c

    .line 524
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 527
    goto :goto_21c

    .line 528
    :cond_20f
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:Z

    .line 530
    if-eqz v1, :cond_21c

    .line 532
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 534
    if-nez v1, :cond_21c

    .line 536
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 539
    goto :goto_21c

    .line 540
    :cond_21b
    move v7, p1

    .line 541
    :cond_21c
    :goto_21c
    if-eqz v7, :cond_238

    .line 543
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 545
    instance-of v1, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 547
    if-eqz v1, :cond_238

    .line 549
    and-int/lit16 v1, v4, 0x200

    .line 551
    if-eqz v1, :cond_22d

    .line 553
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    :cond_22d
    and-int/lit8 p1, v4, 0x4

    .line 560
    if-eqz p1, :cond_238

    .line 562
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 564
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    :cond_238
    if-eqz v7, :cond_24d

    .line 571
    if-eqz p2, :cond_24d

    .line 573
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 578
    move-result-object p1

    .line 579
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 582
    move-result-object p1

    .line 583
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b(Landroid/content/res/Configuration;)Li0/f;

    .line 586
    move-result-object p1

    .line 587
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->c(Li0/f;)V

    .line 590
    :cond_24d
    if-nez v0, :cond_259

    .line 592
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 594
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->L(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$i;

    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e()V

    .line 601
    goto :goto_260

    .line 602
    :cond_259
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    .line 604
    if-eqz p1, :cond_260

    .line 606
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()V

    .line 609
    :cond_260
    :goto_260
    if-ne v0, v9, :cond_275

    .line 611
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 613
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 615
    if-nez p2, :cond_26f

    .line 617
    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 619
    invoke-direct {p2, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    .line 622
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 624
    :cond_26f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 626
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e()V

    .line 629
    goto :goto_27c

    .line 630
    :cond_275
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 632
    if-eqz p1, :cond_27c

    .line 634
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()V

    .line 637
    :cond_27c
    :goto_27c
    return v7
.end method

.method public final B(Landroid/view/Window;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 3
    const-string v1, "AppCompat has already installed itself into the Window"

    .line 5
    if-nez v0, :cond_84

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 13
    if-nez v2, :cond_7e

    .line 15
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 17
    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    .line 20
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 25
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 27
    sget-object v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n0:[I

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3f

    .line 41
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3f

    .line 47
    invoke-static {}, Landroidx/appcompat/widget/g;->a()Landroidx/appcompat/widget/g;

    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x1

    .line 52
    monitor-enter v4

    .line 53
    :try_start_34
    iget-object v6, v4, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 55
    invoke-virtual {v6, v0, v3, v5}, Landroidx/appcompat/widget/n0;->f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3c

    .line 59
    monitor-exit v4

    .line 60
    goto :goto_40

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    monitor-exit v4

    .line 63
    throw p1

    .line 64
    :cond_3f
    move-object v0, v2

    .line 65
    :goto_40
    if-eqz v0, :cond_45

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_45
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    const/16 v0, 0x21

    .line 79
    if-lt p1, v0, :cond_7d

    .line 81
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k0:Landroid/window/OnBackInvokedDispatcher;

    .line 83
    if-nez p1, :cond_7d

    .line 85
    if-eqz p1, :cond_5f

    .line 87
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l0:Landroid/window/OnBackInvokedCallback;

    .line 89
    if-eqz v0, :cond_5f

    .line 91
    invoke-static {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l0:Landroid/window/OnBackInvokedCallback;

    .line 96
    :cond_5f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Landroid/app/Activity;

    .line 100
    if-eqz v0, :cond_78

    .line 102
    check-cast p1, Landroid/app/Activity;

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_78

    .line 110
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 112
    check-cast p1, Landroid/app/Activity;

    .line 114
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k0:Landroid/window/OnBackInvokedDispatcher;

    .line 120
    goto :goto_7a

    .line 121
    :cond_78
    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k0:Landroid/window/OnBackInvokedDispatcher;

    .line 123
    :goto_7a
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    .line 126
    :cond_7d
    return-void

    .line 127
    :cond_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1

    .line 133
    :cond_84
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 135
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1
.end method

.method public final D(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroidx/appcompat/view/menu/h;)V
    .registers 7

    .line 1
    if-nez p3, :cond_11

    .line 3
    if-nez p2, :cond_d

    .line 5
    if-ltz p1, :cond_d

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_d

    .line 12
    aget-object p2, v0, p1

    .line 14
    :cond_d
    if-eqz p2, :cond_11

    .line 16
    iget-object p3, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 18
    :cond_11
    if-eqz p2, :cond_18

    .line 20
    iget-boolean p2, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 22
    if-nez p2, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 27
    if-nez p2, :cond_35

    .line 29
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_29
    iput-boolean v1, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c:Z

    .line 44
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_31

    .line 47
    iput-boolean v2, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c:Z

    .line 49
    goto :goto_35

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    iput-boolean v2, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c:Z

    .line 53
    throw p1

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method public final E(Landroidx/appcompat/view/menu/h;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z

    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 11
    invoke-interface {v0}, Landroidx/appcompat/widget/c0;->i()V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()Landroid/view/Window$Callback;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1c

    .line 20
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 22
    if-nez v1, :cond_1c

    .line 24
    const/16 v1, 0x6c

    .line 26
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z

    .line 32
    return-void
.end method

.method public final F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .registers 6

    .line 1
    if-eqz p2, :cond_16

    .line 3
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 5
    if-nez v0, :cond_16

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-interface {v0}, Landroidx/appcompat/widget/c0;->a()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_16

    .line 17
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 19
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->E(Landroidx/appcompat/view/menu/h;)V

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 25
    const-string v1, "window"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/WindowManager;

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_35

    .line 36
    iget-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 38
    if-eqz v2, :cond_35

    .line 40
    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 42
    if-eqz v2, :cond_35

    .line 44
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 47
    if-eqz p2, :cond_35

    .line 49
    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 51
    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->D(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroidx/appcompat/view/menu/h;)V

    .line 54
    :cond_35
    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 57
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 59
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 61
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 63
    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 66
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 68
    if-ne p2, p1, :cond_47

    .line 70
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 72
    :cond_47
    iget p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 74
    if-nez p1, :cond_4e

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    .line 79
    :cond_4e
    return-void
.end method

.method public final H(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lm0/h$a;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_b

    .line 8
    instance-of v0, v0, Landroidx/appcompat/app/q;

    .line 10
    if-eqz v0, :cond_1a

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    invoke-static {v0, p1}, Lm0/h;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    return v2

    .line 27
    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    move-result v0

    .line 31
    const/16 v1, 0x52

    .line 33
    const/4 v3, 0x0

    .line 34
    if-ne v0, v1, :cond_3d

    .line 36
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 38
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 40
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    :try_start_2e
    iput-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->b:Z

    .line 49
    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 52
    move-result v4
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_39

    .line 53
    iput-boolean v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->b:Z

    .line 55
    if-eqz v4, :cond_3d

    .line 57
    return v2

    .line 58
    :catchall_39
    move-exception p1

    .line 59
    iput-boolean v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->b:Z

    .line 61
    throw p1

    .line 62
    :cond_3d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_49

    .line 72
    move v4, v2

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v4, v3

    .line 75
    :goto_4a
    const/4 v5, 0x4

    .line 76
    if-eqz v4, :cond_74

    .line 78
    if-eq v0, v5, :cond_66

    .line 80
    if-eq v0, v1, :cond_53

    .line 82
    goto/16 :goto_105

    .line 84
    :cond_53
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_106

    .line 90
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 93
    move-result-object v0

    .line 94
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 96
    if-nez v1, :cond_106

    .line 98
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 101
    goto/16 :goto_106

    .line 103
    :cond_66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 106
    move-result p1

    .line 107
    and-int/lit16 p1, p1, 0x80

    .line 109
    if-eqz p1, :cond_6f

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move v2, v3

    .line 113
    :goto_70
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Z

    .line 115
    goto/16 :goto_105

    .line 117
    :cond_74
    if-eq v0, v5, :cond_fe

    .line 119
    if-eq v0, v1, :cond_7a

    .line 121
    goto/16 :goto_105

    .line 123
    :cond_7a
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 125
    if-eqz v0, :cond_80

    .line 127
    goto/16 :goto_106

    .line 129
    :cond_80
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 135
    if-eqz v1, :cond_ba

    .line 137
    invoke-interface {v1}, Landroidx/appcompat/widget/c0;->c()Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_ba

    .line 143
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 145
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_ba

    .line 155
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 157
    invoke-interface {v1}, Landroidx/appcompat/widget/c0;->a()Z

    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_b3

    .line 163
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 165
    if-nez v1, :cond_da

    .line 167
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_da

    .line 173
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 175
    invoke-interface {p1}, Landroidx/appcompat/widget/c0;->g()Z

    .line 178
    move-result p1

    .line 179
    goto :goto_e0

    .line 180
    :cond_b3
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 182
    invoke-interface {p1}, Landroidx/appcompat/widget/c0;->f()Z

    .line 185
    move-result p1

    .line 186
    goto :goto_e0

    .line 187
    :cond_ba
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 189
    if-nez v1, :cond_dc

    .line 191
    iget-boolean v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 193
    if-eqz v4, :cond_c3

    .line 195
    goto :goto_dc

    .line 196
    :cond_c3
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 198
    if-eqz v1, :cond_da

    .line 200
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 202
    if-eqz v1, :cond_d2

    .line 204
    iput-boolean v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 206
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 209
    move-result v1

    .line 210
    goto :goto_d3

    .line 211
    :cond_d2
    move v1, v2

    .line 212
    :goto_d3
    if-eqz v1, :cond_da

    .line 214
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 217
    move p1, v2

    .line 218
    goto :goto_e0

    .line 219
    :cond_da
    move p1, v3

    .line 220
    goto :goto_e0

    .line 221
    :cond_dc
    :goto_dc
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 224
    move p1, v1

    .line 225
    :goto_e0
    if-eqz p1, :cond_106

    .line 227
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 232
    move-result-object p1

    .line 233
    const-string v0, "audio"

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Landroid/media/AudioManager;

    .line 241
    if-eqz p1, :cond_f6

    .line 243
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 246
    goto :goto_106

    .line 247
    :cond_f6
    const-string p1, "AppCompatDelegate"

    .line 249
    const-string v0, "Couldn\'t get audio manager"

    .line 251
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    goto :goto_106

    .line 255
    :cond_fe
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q()Z

    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_105

    .line 261
    goto :goto_106

    .line 262
    :cond_105
    :goto_105
    move v2, v3

    .line 263
    :cond_106
    :goto_106
    return v2
.end method

.method public final I(I)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 7
    if-eqz v1, :cond_24

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 16
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_1a

    .line 25
    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Landroid/os/Bundle;

    .line 27
    :cond_1a
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 29
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 32
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 34
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->clear()V

    .line 37
    :cond_24
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 40
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 42
    const/16 v0, 0x6c

    .line 44
    if-eq p1, v0, :cond_2f

    .line 46
    if-nez p1, :cond_3e

    .line 48
    :cond_2f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 50
    if-eqz p1, :cond_3e

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 56
    move-result-object v0

    .line 57
    iput-boolean p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 63
    :cond_3e
    return-void
.end method

.method public final J()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    .line 3
    if-nez v0, :cond_2a5

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 7
    sget-object v1, Lh/j;->AppCompatTheme:[I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 12
    move-result-object v0

    .line 13
    sget v1, Lh/j;->AppCompatTheme_windowActionBar:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_29a

    .line 21
    sget v2, Lh/j;->AppCompatTheme_windowNoTitle:I

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    move-result v2

    .line 28
    const/16 v4, 0x6c

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eqz v2, :cond_24

    .line 33
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->t(I)Z

    .line 36
    goto :goto_2d

    .line 37
    :cond_24
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2d

    .line 43
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->t(I)Z

    .line 46
    :cond_2d
    :goto_2d
    sget v1, Lh/j;->AppCompatTheme_windowActionBarOverlay:I

    .line 48
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 51
    move-result v1

    .line 52
    const/16 v2, 0x6d

    .line 54
    if-eqz v1, :cond_3a

    .line 56
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->t(I)Z

    .line 59
    :cond_3a
    sget v1, Lh/j;->AppCompatTheme_windowActionModeOverlay:I

    .line 61
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_47

    .line 67
    const/16 v1, 0xa

    .line 69
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->t(I)Z

    .line 72
    :cond_47
    sget v1, Lh/j;->AppCompatTheme_android_windowIsFloating:I

    .line 74
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 77
    move-result v1

    .line 78
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->K()V

    .line 86
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 88
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 91
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 96
    move-result-object v0

    .line 97
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:Z

    .line 99
    const/4 v4, 0x0

    .line 100
    if-nez v1, :cond_d8

    .line 102
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    .line 104
    if-eqz v1, :cond_77

    .line 106
    sget v1, Lh/g;->abc_dialog_title_material:I

    .line 108
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 116
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 118
    goto/16 :goto_ed

    .line 120
    :cond_77
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 122
    if-eqz v0, :cond_d6

    .line 124
    new-instance v0, Landroid/util/TypedValue;

    .line 126
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 129
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 134
    move-result-object v1

    .line 135
    sget v6, Lh/a;->actionBarTheme:I

    .line 137
    invoke-virtual {v1, v6, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 140
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 142
    if-eqz v1, :cond_99

    .line 144
    new-instance v1, Lm/c;

    .line 146
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 148
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 150
    invoke-direct {v1, v6, v0}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 153
    goto :goto_9b

    .line 154
    :cond_99
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 156
    :goto_9b
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 159
    move-result-object v0

    .line 160
    sget v1, Lh/g;->abc_screen_toolbar:I

    .line 162
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/view/ViewGroup;

    .line 168
    sget v1, Lh/f;->decor_content_parent:I

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Landroidx/appcompat/widget/c0;

    .line 176
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 178
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()Landroid/view/Window$Callback;

    .line 181
    move-result-object v6

    .line 182
    invoke-interface {v1, v6}, Landroidx/appcompat/widget/c0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 185
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 187
    if-eqz v1, :cond_c1

    .line 189
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 191
    invoke-interface {v1, v2}, Landroidx/appcompat/widget/c0;->h(I)V

    .line 194
    :cond_c1
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    .line 196
    if-eqz v1, :cond_cb

    .line 198
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 200
    const/4 v2, 0x2

    .line 201
    invoke-interface {v1, v2}, Landroidx/appcompat/widget/c0;->h(I)V

    .line 204
    :cond_cb
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    .line 206
    if-eqz v1, :cond_ed

    .line 208
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 210
    const/4 v2, 0x5

    .line 211
    invoke-interface {v1, v2}, Landroidx/appcompat/widget/c0;->h(I)V

    .line 214
    goto :goto_ed

    .line 215
    :cond_d6
    move-object v0, v4

    .line 216
    goto :goto_ed

    .line 217
    :cond_d8
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    .line 219
    if-eqz v1, :cond_e5

    .line 221
    sget v1, Lh/g;->abc_screen_simple_overlay_action_mode:I

    .line 223
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Landroid/view/ViewGroup;

    .line 229
    goto :goto_ed

    .line 230
    :cond_e5
    sget v1, Lh/g;->abc_screen_simple:I

    .line 232
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    :cond_ed
    :goto_ed
    if-eqz v0, :cond_258

    .line 240
    new-instance v1, Landroidx/appcompat/app/l;

    .line 242
    invoke-direct {v1, p0}, Landroidx/appcompat/app/l;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 245
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 247
    invoke-static {v0, v1}, Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V

    .line 250
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 252
    if-nez v1, :cond_107

    .line 254
    sget v1, Lh/f;->title:I

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Landroid/widget/TextView;

    .line 262
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:Landroid/widget/TextView;

    .line 264
    :cond_107
    sget-object v1, Landroidx/appcompat/widget/h1;->a:Ljava/lang/reflect/Method;

    .line 266
    const-string v1, "Could not invoke makeOptionalFitsSystemWindows"

    .line 268
    const-string v2, "ViewUtils"

    .line 270
    :try_start_10d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    move-result-object v6

    .line 274
    const-string v7, "makeOptionalFitsSystemWindows"

    .line 276
    new-array v8, v3, [Ljava/lang/Class;

    .line 278
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v6}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 285
    move-result v7

    .line 286
    if-nez v7, :cond_122

    .line 288
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 291
    :cond_122
    new-array v7, v3, [Ljava/lang/Object;

    .line 293
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_127
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10d .. :try_end_127} :catch_132
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10d .. :try_end_127} :catch_12d
    .catch Ljava/lang/IllegalAccessException; {:try_start_10d .. :try_end_127} :catch_128

    .line 296
    goto :goto_137

    .line 297
    :catch_128
    move-exception v6

    .line 298
    invoke-static {v2, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    goto :goto_137

    .line 302
    :catch_12d
    move-exception v6

    .line 303
    invoke-static {v2, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    goto :goto_137

    .line 307
    :catch_132
    const-string v1, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    .line 309
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_137
    sget v1, Lh/f;->action_bar_activity_content:I

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 320
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 322
    const v6, 0x1020002

    .line 325
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Landroid/view/ViewGroup;

    .line 331
    if-eqz v2, :cond_16d

    .line 333
    :goto_14c
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 336
    move-result v7

    .line 337
    if-lez v7, :cond_15d

    .line 339
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 346
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    goto :goto_14c

    .line 350
    :cond_15d
    const/4 v7, -0x1

    .line 351
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 354
    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 357
    instance-of v7, v2, Landroid/widget/FrameLayout;

    .line 359
    if-eqz v7, :cond_16d

    .line 361
    check-cast v2, Landroid/widget/FrameLayout;

    .line 363
    invoke-virtual {v2, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_16d
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 368
    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 371
    new-instance v2, Landroidx/appcompat/app/m;

    .line 373
    invoke-direct {v2, p0}, Landroidx/appcompat/app/m;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 376
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 379
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 381
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 383
    instance-of v1, v0, Landroid/app/Activity;

    .line 385
    if-eqz v1, :cond_189

    .line 387
    check-cast v0, Landroid/app/Activity;

    .line 389
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 392
    move-result-object v0

    .line 393
    goto :goto_18b

    .line 394
    :cond_189
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Ljava/lang/CharSequence;

    .line 396
    :goto_18b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    move-result v1

    .line 400
    if-nez v1, :cond_1a8

    .line 402
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 404
    if-eqz v1, :cond_199

    .line 406
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 409
    goto :goto_1a8

    .line 410
    :cond_199
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 412
    if-eqz v1, :cond_1a1

    .line 414
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 417
    goto :goto_1a8

    .line 418
    :cond_1a1
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:Landroid/widget/TextView;

    .line 420
    if-eqz v1, :cond_1a8

    .line 422
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_1a8
    :goto_1a8
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 427
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 430
    move-result-object v0

    .line 431
    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 433
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 435
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 442
    move-result v2

    .line 443
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 446
    move-result v4

    .line 447
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 450
    move-result v6

    .line 451
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 454
    move-result v1

    .line 455
    iget-object v7, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 457
    invoke-virtual {v7, v2, v4, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 460
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 462
    invoke-static {v0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_1d6

    .line 468
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 471
    :cond_1d6
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 473
    sget-object v2, Lh/j;->AppCompatTheme:[I

    .line 475
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 478
    move-result-object v1

    .line 479
    sget v2, Lh/j;->AppCompatTheme_windowMinWidthMajor:I

    .line 481
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 484
    move-result-object v4

    .line 485
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 488
    sget v2, Lh/j;->AppCompatTheme_windowMinWidthMinor:I

    .line 490
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 497
    sget v2, Lh/j;->AppCompatTheme_windowFixedWidthMajor:I

    .line 499
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_1ff

    .line 505
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 508
    move-result-object v4

    .line 509
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 512
    :cond_1ff
    sget v2, Lh/j;->AppCompatTheme_windowFixedWidthMinor:I

    .line 514
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 517
    move-result v4

    .line 518
    if-eqz v4, :cond_20e

    .line 520
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 523
    move-result-object v4

    .line 524
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 527
    :cond_20e
    sget v2, Lh/j;->AppCompatTheme_windowFixedHeightMajor:I

    .line 529
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 532
    move-result v4

    .line 533
    if-eqz v4, :cond_21d

    .line 535
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 538
    move-result-object v4

    .line 539
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 542
    :cond_21d
    sget v2, Lh/j;->AppCompatTheme_windowFixedHeightMinor:I

    .line 544
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 547
    move-result v4

    .line 548
    if-eqz v4, :cond_22c

    .line 550
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 557
    :cond_22c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 563
    iput-boolean v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    .line 565
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 568
    move-result-object v0

    .line 569
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 571
    if-nez v1, :cond_2a5

    .line 573
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 575
    if-nez v0, :cond_2a5

    .line 577
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:I

    .line 579
    or-int/lit16 v0, v0, 0x1000

    .line 581
    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:I

    .line 583
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    .line 585
    if-nez v0, :cond_2a5

    .line 587
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 589
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 592
    move-result-object v0

    .line 593
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 595
    invoke-static {v0, v1}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 598
    iput-boolean v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    .line 600
    goto :goto_2a5

    .line 601
    :cond_258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 603
    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 605
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    move-result-object v1

    .line 609
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 614
    const-string v2, ", windowActionBarOverlay: "

    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 624
    const-string v2, ", android:windowIsFloating: "

    .line 626
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 634
    const-string v2, ", windowActionModeOverlay: "

    .line 636
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 644
    const-string v2, ", windowNoTitle: "

    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:Z

    .line 651
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 654
    const-string v2, " }"

    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    move-result-object v1

    .line 663
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 666
    throw v0

    .line 667
    :cond_29a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 670
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 672
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 674
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 677
    throw v0

    .line 678
    :cond_2a5
    :goto_2a5
    return-void
.end method

.method public final K()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 3
    if-nez v0, :cond_13

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    .line 9
    if-eqz v1, :cond_13

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->B(Landroid/view/Window;)V

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 22
    if-eqz v0, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    const-string v1, "We have not been given a Window"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public final L(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$i;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    .line 3
    if-nez v0, :cond_24

    .line 5
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    .line 7
    sget-object v1, Landroidx/appcompat/app/z;->d:Landroidx/appcompat/app/z;

    .line 9
    if-nez v1, :cond_1d

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Landroidx/appcompat/app/z;

    .line 17
    const-string v2, "location"

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationManager;

    .line 25
    invoke-direct {v1, p1, v2}, Landroidx/appcompat/app/z;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 28
    sput-object v1, Landroidx/appcompat/app/z;->d:Landroidx/appcompat/app/z;

    .line 30
    :cond_1d
    sget-object p1, Landroidx/appcompat/app/z;->d:Landroidx/appcompat/app/z;

    .line 32
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$j;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/z;)V

    .line 35
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    .line 37
    :cond_24
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    .line 39
    return-object p1
.end method

.method public final M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    array-length v1, v0

    .line 6
    if-gt v1, p1, :cond_15

    .line 8
    :cond_7
    add-int/lit8 v1, p1, 0x1

    .line 10
    new-array v1, v1, [Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    array-length v2, v0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    :cond_12
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 21
    move-object v0, v1

    .line 22
    :cond_15
    aget-object v1, v0, p1

    .line 24
    if-nez v1, :cond_20

    .line 26
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 28
    invoke-direct {v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    .line 31
    aput-object v1, v0, p1

    .line 33
    :cond_20
    return-object v1
.end method

.method public final N()Landroid/view/Window$Callback;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final O()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J()V

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 6
    if-eqz v0, :cond_38

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 10
    if-eqz v0, :cond_c

    .line 12
    goto :goto_38

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 17
    if-eqz v1, :cond_20

    .line 19
    new-instance v0, Landroidx/appcompat/app/a0;

    .line 21
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 23
    check-cast v1, Landroid/app/Activity;

    .line 25
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 27
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/a0;-><init>(Landroid/app/Activity;Z)V

    .line 30
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 32
    goto :goto_2f

    .line 33
    :cond_20
    instance-of v0, v0, Landroid/app/Dialog;

    .line 35
    if-eqz v0, :cond_2f

    .line 37
    new-instance v0, Landroidx/appcompat/app/a0;

    .line 39
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 41
    check-cast v1, Landroid/app/Dialog;

    .line 43
    invoke-direct {v0, v1}, Landroidx/appcompat/app/a0;-><init>(Landroid/app/Dialog;)V

    .line 46
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 48
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 50
    if-eqz v0, :cond_38

    .line 52
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g0:Z

    .line 54
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a0;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public final P(Landroid/content/Context;I)I
    .registers 5

    .line 1
    const/16 v0, -0x64

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_49

    .line 6
    if-eq p2, v1, :cond_48

    .line 8
    if-eqz p2, :cond_2c

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_48

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_48

    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_24

    .line 19
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 21
    if-nez p2, :cond_1d

    .line 23
    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 25
    invoke-direct {p2, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 30
    :cond_1d
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->c()I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    const-string v0, "uimode"

    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/app/UiModeManager;

    .line 57
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3f

    .line 63
    return v1

    .line 64
    :cond_3f
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->L(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$i;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c()I

    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_48
    return p2

    .line 74
    :cond_49
    return v1
.end method

.method public final Q()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Z

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_14

    .line 15
    if-nez v0, :cond_13

    .line 17
    invoke-virtual {p0, v2, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 20
    :cond_13
    return v4

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 23
    if-eqz v0, :cond_1c

    .line 25
    invoke-virtual {v0}, Lm/a;->a()V

    .line 28
    return v4

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 32
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 34
    if-eqz v0, :cond_2a

    .line 36
    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->collapseActionView()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2a

    .line 42
    return v4

    .line 43
    :cond_2a
    return v1
.end method

.method public final R(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 16

    .line 1
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 3
    if-nez v0, :cond_1e1

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_1e1

    .line 11
    :cond_a
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_27

    .line 17
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 29
    and-int/lit8 v0, v0, 0xf

    .line 31
    const/4 v3, 0x4

    .line 32
    if-ne v0, v3, :cond_23

    .line 34
    move v0, v2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v1

    .line 37
    :goto_24
    if-eqz v0, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()Landroid/view/Window$Callback;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3b

    .line 46
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 48
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 50
    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3b

    .line 56
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 59
    return-void

    .line 60
    :cond_3b
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 62
    const-string v3, "window"

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/view/WindowManager;

    .line 70
    if-nez v0, :cond_48

    .line 72
    return-void

    .line 73
    :cond_48
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_4f

    .line 79
    return-void

    .line 80
    :cond_4f
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 82
    const/4 v3, -0x1

    .line 83
    const/4 v4, -0x2

    .line 84
    if-eqz p2, :cond_6b

    .line 86
    iget-boolean v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 88
    if-eqz v5, :cond_5a

    .line 90
    goto :goto_6b

    .line 91
    :cond_5a
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 93
    if-eqz p2, :cond_1b7

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    move-result-object p2

    .line 99
    if-eqz p2, :cond_1b7

    .line 101
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    if-ne p2, v3, :cond_1b7

    .line 105
    move v6, v3

    .line 106
    goto/16 :goto_1b8

    .line 108
    :cond_6b
    :goto_6b
    if-nez p2, :cond_e5

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 113
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 115
    if-eqz p2, :cond_79

    .line 117
    invoke-virtual {p2}, Landroidx/appcompat/app/a0;->getThemedContext()Landroid/content/Context;

    .line 120
    move-result-object p2

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    const/4 p2, 0x0

    .line 123
    :goto_7a
    if-nez p2, :cond_7e

    .line 125
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 127
    :cond_7e
    new-instance v3, Landroid/util/TypedValue;

    .line 129
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 147
    sget v6, Lh/a;->actionBarPopupTheme:I

    .line 149
    invoke-virtual {v5, v6, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 152
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    .line 154
    if-eqz v6, :cond_9e

    .line 156
    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 159
    :cond_9e
    sget v6, Lh/a;->panelMenuListTheme:I

    .line 161
    invoke-virtual {v5, v6, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 164
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 166
    if-eqz v3, :cond_ab

    .line 168
    invoke-virtual {v5, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 171
    goto :goto_b0

    .line 172
    :cond_ab
    sget v3, Lh/i;->Theme_AppCompat_CompactMenu:I

    .line 174
    invoke-virtual {v5, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 177
    :goto_b0
    new-instance v3, Lm/c;

    .line 179
    invoke-direct {v3, p2, v1}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 182
    invoke-virtual {v3}, Lm/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 189
    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lm/c;

    .line 191
    sget-object p2, Lh/j;->AppCompatTheme:[I

    .line 193
    invoke-virtual {v3, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 196
    move-result-object p2

    .line 197
    sget v3, Lh/j;->AppCompatTheme_panelBackground:I

    .line 199
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 202
    move-result v3

    .line 203
    iput v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->b:I

    .line 205
    sget v3, Lh/j;->AppCompatTheme_android_windowAnimationStyle:I

    .line 207
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 210
    move-result v3

    .line 211
    iput v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->d:I

    .line 213
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 218
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lm/c;

    .line 220
    invoke-direct {p2, p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$k;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lm/c;)V

    .line 223
    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 225
    const/16 p2, 0x51

    .line 227
    iput p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    .line 229
    goto :goto_f4

    .line 230
    :cond_e5
    iget-boolean v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 232
    if-eqz v3, :cond_f4

    .line 234
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 237
    move-result p2

    .line 238
    if-lez p2, :cond_f4

    .line 240
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 242
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 245
    :cond_f4
    :goto_f4
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 247
    if-eqz p2, :cond_fb

    .line 249
    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 251
    goto :goto_154

    .line 252
    :cond_fb
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 254
    if-nez p2, :cond_100

    .line 256
    goto :goto_156

    .line 257
    :cond_100
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroidx/appcompat/app/AppCompatDelegateImpl$l;

    .line 259
    if-nez p2, :cond_10b

    .line 261
    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$l;

    .line 263
    invoke-direct {p2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$l;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 266
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroidx/appcompat/app/AppCompatDelegateImpl$l;

    .line 268
    :cond_10b
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroidx/appcompat/app/AppCompatDelegateImpl$l;

    .line 270
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/f;

    .line 272
    if-nez v3, :cond_123

    .line 274
    new-instance v3, Landroidx/appcompat/view/menu/f;

    .line 276
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lm/c;

    .line 278
    sget v6, Lh/g;->abc_list_menu_item_layout:I

    .line 280
    invoke-direct {v3, v5, v6}, Landroidx/appcompat/view/menu/f;-><init>(Landroid/content/Context;I)V

    .line 283
    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/f;

    .line 285
    iput-object p2, v3, Landroidx/appcompat/view/menu/f;->f:Landroidx/appcompat/view/menu/n$a;

    .line 287
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 289
    invoke-virtual {p2, v3}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 292
    :cond_123
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/f;

    .line 294
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 296
    iget-object v5, p2, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 298
    if-nez v5, :cond_14e

    .line 300
    iget-object v5, p2, Landroidx/appcompat/view/menu/f;->b:Landroid/view/LayoutInflater;

    .line 302
    sget v6, Lh/g;->abc_expanded_menu_layout:I

    .line 304
    invoke-virtual {v5, v6, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 310
    iput-object v3, p2, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 312
    iget-object v3, p2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 314
    if-nez v3, :cond_142

    .line 316
    new-instance v3, Landroidx/appcompat/view/menu/f$a;

    .line 318
    invoke-direct {v3, p2}, Landroidx/appcompat/view/menu/f$a;-><init>(Landroidx/appcompat/view/menu/f;)V

    .line 321
    iput-object v3, p2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 323
    :cond_142
    iget-object v3, p2, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 325
    iget-object v5, p2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 327
    invoke-virtual {v3, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iget-object v3, p2, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 332
    invoke-virtual {v3, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 335
    :cond_14e
    iget-object p2, p2, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 337
    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 339
    if-eqz p2, :cond_156

    .line 341
    :goto_154
    move p2, v2

    .line 342
    goto :goto_157

    .line 343
    :cond_156
    :goto_156
    move p2, v1

    .line 344
    :goto_157
    if-eqz p2, :cond_1df

    .line 346
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 348
    if-nez p2, :cond_15e

    .line 350
    goto :goto_17a

    .line 351
    :cond_15e
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 353
    if-eqz p2, :cond_163

    .line 355
    goto :goto_178

    .line 356
    :cond_163
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/f;

    .line 358
    iget-object v3, p2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 360
    if-nez v3, :cond_170

    .line 362
    new-instance v3, Landroidx/appcompat/view/menu/f$a;

    .line 364
    invoke-direct {v3, p2}, Landroidx/appcompat/view/menu/f$a;-><init>(Landroidx/appcompat/view/menu/f;)V

    .line 367
    iput-object v3, p2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 369
    :cond_170
    iget-object p2, p2, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 371
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/f$a;->getCount()I

    .line 374
    move-result p2

    .line 375
    if-lez p2, :cond_17a

    .line 377
    :goto_178
    move p2, v2

    .line 378
    goto :goto_17b

    .line 379
    :cond_17a
    :goto_17a
    move p2, v1

    .line 380
    :goto_17b
    if-nez p2, :cond_17e

    .line 382
    goto :goto_1df

    .line 383
    :cond_17e
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 385
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 388
    move-result-object p2

    .line 389
    if-nez p2, :cond_18b

    .line 391
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 393
    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 396
    :cond_18b
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->b:I

    .line 398
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 400
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->setBackgroundResource(I)V

    .line 403
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 405
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 408
    move-result-object v3

    .line 409
    instance-of v5, v3, Landroid/view/ViewGroup;

    .line 411
    if-eqz v5, :cond_1a3

    .line 413
    check-cast v3, Landroid/view/ViewGroup;

    .line 415
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 417
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 420
    :cond_1a3
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 422
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 424
    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 429
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    .line 432
    move-result p2

    .line 433
    if-nez p2, :cond_1b7

    .line 435
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    .line 437
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 440
    :cond_1b7
    move v6, v4

    .line 441
    :goto_1b8
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 443
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 445
    const/4 v7, -0x2

    .line 446
    const/4 v8, 0x0

    .line 447
    const/4 v9, 0x0

    .line 448
    const/16 v10, 0x3ea

    .line 450
    const/high16 v11, 0x820000

    .line 452
    const/4 v12, -0x3

    .line 453
    move-object v5, p2

    .line 454
    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 457
    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    .line 459
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 461
    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->d:I

    .line 463
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 465
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 467
    invoke-interface {v0, v1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 472
    iget p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 474
    if-nez p1, :cond_1de

    .line 476
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    .line 479
    :cond_1de
    return-void

    .line 480
    :cond_1df
    :goto_1df
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 482
    :cond_1e1
    :goto_1e1
    return-void
.end method

.method public final S(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 11
    if-nez v0, :cond_12

    .line 13
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    :cond_12
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 21
    if-eqz p1, :cond_1b

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 27
    move-result v1

    .line 28
    :cond_1b
    return v1
.end method

.method public final T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 13

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 15
    if-eqz v0, :cond_15

    .line 17
    if-eq v0, p1, :cond_15

    .line 19
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()Landroid/view/Window$Callback;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_23

    .line 28
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 30
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 33
    move-result-object v3

    .line 34
    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 36
    :cond_23
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 38
    const/16 v4, 0x6c

    .line 40
    if-eqz v3, :cond_2e

    .line 42
    if-ne v3, v4, :cond_2c

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    move v3, v1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    :goto_2e
    move v3, v2

    .line 48
    :goto_2f
    if-eqz v3, :cond_38

    .line 50
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 52
    if-eqz v5, :cond_38

    .line 54
    invoke-interface {v5}, Landroidx/appcompat/widget/c0;->b()V

    .line 57
    :cond_38
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 59
    if-nez v5, :cond_15d

    .line 61
    if-eqz v3, :cond_44

    .line 63
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 65
    instance-of v5, v5, Landroidx/appcompat/app/x;

    .line 67
    if-nez v5, :cond_15d

    .line 69
    :cond_44
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 71
    const/4 v6, 0x0

    .line 72
    if-eqz v5, :cond_4d

    .line 74
    iget-boolean v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 76
    if-eqz v7, :cond_113

    .line 78
    :cond_4d
    if-nez v5, :cond_d0

    .line 80
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 82
    iget v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 84
    if-eqz v7, :cond_57

    .line 86
    if-ne v7, v4, :cond_ae

    .line 88
    :cond_57
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 90
    if-eqz v4, :cond_ae

    .line 92
    new-instance v4, Landroid/util/TypedValue;

    .line 94
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 97
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 100
    move-result-object v7

    .line 101
    sget v8, Lh/a;->actionBarTheme:I

    .line 103
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 106
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    .line 108
    if-eqz v8, :cond_83

    .line 110
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 121
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 123
    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 126
    sget v9, Lh/a;->actionBarWidgetTheme:I

    .line 128
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 131
    goto :goto_89

    .line 132
    :cond_83
    sget v8, Lh/a;->actionBarWidgetTheme:I

    .line 134
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 137
    move-object v8, v6

    .line 138
    :goto_89
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 140
    if-eqz v9, :cond_9f

    .line 142
    if-nez v8, :cond_9a

    .line 144
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 155
    :cond_9a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 157
    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 160
    :cond_9f
    if-eqz v8, :cond_ae

    .line 162
    new-instance v4, Lm/c;

    .line 164
    invoke-direct {v4, v5, v1}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 167
    invoke-virtual {v4}, Lm/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 174
    move-object v5, v4

    .line 175
    :cond_ae
    new-instance v4, Landroidx/appcompat/view/menu/h;

    .line 177
    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v4, p0}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    .line 183
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 185
    if-ne v4, v5, :cond_bb

    .line 187
    goto :goto_cb

    .line 188
    :cond_bb
    if-eqz v5, :cond_c2

    .line 190
    iget-object v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/f;

    .line 192
    invoke-virtual {v5, v7}, Landroidx/appcompat/view/menu/h;->removeMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 195
    :cond_c2
    iput-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 197
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/f;

    .line 199
    if-eqz v5, :cond_cb

    .line 201
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 204
    :cond_cb
    :goto_cb
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 206
    if-nez v4, :cond_d0

    .line 208
    return v1

    .line 209
    :cond_d0
    if-eqz v3, :cond_e8

    .line 211
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 213
    if-eqz v4, :cond_e8

    .line 215
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    .line 217
    if-nez v5, :cond_e1

    .line 219
    new-instance v5, Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    .line 221
    invoke-direct {v5, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$b;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 224
    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    .line 226
    :cond_e1
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 228
    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    .line 230
    invoke-interface {v4, v5, v7}, Landroidx/appcompat/widget/c0;->e(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/app/AppCompatDelegateImpl$b;)V

    .line 233
    :cond_e8
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 235
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 238
    iget v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 240
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 242
    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_111

    .line 248
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 250
    if-nez p2, :cond_fc

    .line 252
    goto :goto_105

    .line 253
    :cond_fc
    if-eqz p2, :cond_103

    .line 255
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/f;

    .line 257
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/h;->removeMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 260
    :cond_103
    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 262
    :goto_105
    if-eqz v3, :cond_110

    .line 264
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 266
    if-eqz p1, :cond_110

    .line 268
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    .line 270
    invoke-interface {p1, v6, p2}, Landroidx/appcompat/widget/c0;->e(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/app/AppCompatDelegateImpl$b;)V

    .line 273
    :cond_110
    return v1

    .line 274
    :cond_111
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 276
    :cond_113
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 278
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 281
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Landroid/os/Bundle;

    .line 283
    if-eqz v4, :cond_123

    .line 285
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 287
    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/h;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 290
    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Landroid/os/Bundle;

    .line 292
    :cond_123
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 294
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 296
    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_13e

    .line 302
    if-eqz v3, :cond_138

    .line 304
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 306
    if-eqz p2, :cond_138

    .line 308
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    .line 310
    invoke-interface {p2, v6, v0}, Landroidx/appcompat/widget/c0;->e(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/app/AppCompatDelegateImpl$b;)V

    .line 313
    :cond_138
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 315
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 318
    return v1

    .line 319
    :cond_13e
    if-eqz p2, :cond_145

    .line 321
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 324
    move-result p2

    .line 325
    goto :goto_146

    .line 326
    :cond_145
    const/4 p2, -0x1

    .line 327
    :goto_146
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 330
    move-result-object p2

    .line 331
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 334
    move-result p2

    .line 335
    if-eq p2, v2, :cond_152

    .line 337
    move p2, v2

    .line 338
    goto :goto_153

    .line 339
    :cond_152
    move p2, v1

    .line 340
    :goto_153
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 342
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/h;->setQwertyMode(Z)V

    .line 345
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 347
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 350
    :cond_15d
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 352
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 354
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 356
    return v2
.end method

.method public final U()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 8
    const-string v1, "Window feature must be requested before adding content"

    .line 10
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public final V()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_35

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k0:Landroid/window/OnBackInvokedDispatcher;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_1b

    .line 13
    :cond_c
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_16

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    :goto_1a
    move v1, v2

    .line 28
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_2a

    .line 30
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l0:Landroid/window/OnBackInvokedCallback;

    .line 32
    if-nez v0, :cond_2a

    .line 34
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k0:Landroid/window/OnBackInvokedDispatcher;

    .line 36
    invoke-static {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->b(Ljava/lang/Object;Landroidx/appcompat/app/AppCompatDelegateImpl;)Landroid/window/OnBackInvokedCallback;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l0:Landroid/window/OnBackInvokedCallback;

    .line 42
    goto :goto_35

    .line 43
    :cond_2a
    if-nez v1, :cond_35

    .line 45
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l0:Landroid/window/OnBackInvokedCallback;

    .line 47
    if-eqz v0, :cond_35

    .line 49
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k0:Landroid/window/OnBackInvokedDispatcher;

    .line 51
    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 6
    const v1, 0x1020002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 20
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 22
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a(Landroid/view/Window$Callback;)V

    .line 29
    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroidx/appcompat/app/k;->l(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_21

    .line 10
    sget-object v0, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 12
    if-eqz v0, :cond_21

    .line 14
    sget-object v2, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 16
    invoke-virtual {v0, v2}, Li0/f;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_21

    .line 22
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 24
    sget-object v2, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/t$a;

    .line 26
    new-instance v3, Landroidx/appcompat/app/j;

    .line 28
    invoke-direct {v3, v0, v1}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/t$a;->execute(Ljava/lang/Runnable;)V

    .line 34
    :cond_21
    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->A(ZZ)Z

    .line 37
    return-void
.end method

.method public final c(Landroid/content/Context;)Landroid/content/Context;
    .registers 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    .line 4
    iget v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 6
    const/16 v2, -0x64

    .line 8
    if-eq v1, v2, :cond_a

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    sget v1, Landroidx/appcompat/app/k;->b:I

    .line 13
    :goto_c
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->P(Landroid/content/Context;I)I

    .line 16
    move-result v1

    .line 17
    invoke-static {p1}, Landroidx/appcompat/app/k;->l(Landroid/content/Context;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_19

    .line 23
    invoke-static {p1}, Landroidx/appcompat/app/k;->z(Landroid/content/Context;)V

    .line 26
    :cond_19
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->C(Landroid/content/Context;)Li0/f;

    .line 29
    move-result-object v2

    .line 30
    sget-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->p0:Z

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v3, :cond_32

    .line 36
    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    .line 38
    if-eqz v3, :cond_32

    .line 40
    invoke-static {p1, v1, v2, v5, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->G(Landroid/content/Context;ILi0/f;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 43
    move-result-object v3

    .line 44
    :try_start_2b
    move-object v6, p1

    .line 45
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 47
    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_31} :catch_32

    .line 50
    return-object p1

    .line 51
    :catch_32
    :cond_32
    instance-of v3, p1, Lm/c;

    .line 53
    if-eqz v3, :cond_41

    .line 55
    invoke-static {p1, v1, v2, v5, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->G(Landroid/content/Context;ILi0/f;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 58
    move-result-object v3

    .line 59
    :try_start_3a
    move-object v6, p1

    .line 60
    check-cast v6, Lm/c;

    .line 62
    invoke-virtual {v6, v3}, Lm/c;->a(Landroid/content/res/Configuration;)V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_40} :catch_41

    .line 65
    return-object p1

    .line 66
    :catch_41
    :cond_41
    sget-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->o0:Z

    .line 68
    if-nez v3, :cond_46

    .line 70
    return-object p1

    .line 71
    :cond_46
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    new-instance v6, Landroid/content/res/Configuration;

    .line 75
    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 78
    const/4 v7, -0x1

    .line 79
    iput v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 81
    const/4 v7, 0x0

    .line 82
    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 84
    invoke-virtual {p1, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 103
    move-result-object v8

    .line 104
    iget v9, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 106
    iput v9, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 108
    invoke-virtual {v6, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 111
    move-result v9

    .line 112
    if-nez v9, :cond_14e

    .line 114
    new-instance v5, Landroid/content/res/Configuration;

    .line 116
    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 119
    iput v7, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 121
    invoke-virtual {v6, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 124
    move-result v7

    .line 125
    if-nez v7, :cond_80

    .line 127
    goto/16 :goto_14e

    .line 129
    :cond_80
    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 131
    iget v9, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 133
    cmpl-float v7, v7, v9

    .line 135
    if-eqz v7, :cond_8a

    .line 137
    iput v9, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 139
    :cond_8a
    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    .line 141
    iget v9, v8, Landroid/content/res/Configuration;->mcc:I

    .line 143
    if-eq v7, v9, :cond_92

    .line 145
    iput v9, v5, Landroid/content/res/Configuration;->mcc:I

    .line 147
    :cond_92
    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    .line 149
    iget v9, v8, Landroid/content/res/Configuration;->mnc:I

    .line 151
    if-eq v7, v9, :cond_9a

    .line 153
    iput v9, v5, Landroid/content/res/Configuration;->mnc:I

    .line 155
    :cond_9a
    invoke-static {v6, v8, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 158
    iget v7, v6, Landroid/content/res/Configuration;->touchscreen:I

    .line 160
    iget v9, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 162
    if-eq v7, v9, :cond_a5

    .line 164
    iput v9, v5, Landroid/content/res/Configuration;->touchscreen:I

    .line 166
    :cond_a5
    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 168
    iget v9, v8, Landroid/content/res/Configuration;->keyboard:I

    .line 170
    if-eq v7, v9, :cond_ad

    .line 172
    iput v9, v5, Landroid/content/res/Configuration;->keyboard:I

    .line 174
    :cond_ad
    iget v7, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 176
    iget v9, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 178
    if-eq v7, v9, :cond_b5

    .line 180
    iput v9, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 182
    :cond_b5
    iget v7, v6, Landroid/content/res/Configuration;->navigation:I

    .line 184
    iget v9, v8, Landroid/content/res/Configuration;->navigation:I

    .line 186
    if-eq v7, v9, :cond_bd

    .line 188
    iput v9, v5, Landroid/content/res/Configuration;->navigation:I

    .line 190
    :cond_bd
    iget v7, v6, Landroid/content/res/Configuration;->navigationHidden:I

    .line 192
    iget v9, v8, Landroid/content/res/Configuration;->navigationHidden:I

    .line 194
    if-eq v7, v9, :cond_c5

    .line 196
    iput v9, v5, Landroid/content/res/Configuration;->navigationHidden:I

    .line 198
    :cond_c5
    iget v7, v6, Landroid/content/res/Configuration;->orientation:I

    .line 200
    iget v9, v8, Landroid/content/res/Configuration;->orientation:I

    .line 202
    if-eq v7, v9, :cond_cd

    .line 204
    iput v9, v5, Landroid/content/res/Configuration;->orientation:I

    .line 206
    :cond_cd
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 208
    and-int/lit8 v7, v7, 0xf

    .line 210
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 212
    and-int/lit8 v9, v9, 0xf

    .line 214
    if-eq v7, v9, :cond_dc

    .line 216
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 218
    or-int/2addr v7, v9

    .line 219
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 221
    :cond_dc
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 223
    and-int/lit16 v7, v7, 0xc0

    .line 225
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 227
    and-int/lit16 v9, v9, 0xc0

    .line 229
    if-eq v7, v9, :cond_eb

    .line 231
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 233
    or-int/2addr v7, v9

    .line 234
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 236
    :cond_eb
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 238
    and-int/lit8 v7, v7, 0x30

    .line 240
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 242
    and-int/lit8 v9, v9, 0x30

    .line 244
    if-eq v7, v9, :cond_fa

    .line 246
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 248
    or-int/2addr v7, v9

    .line 249
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 251
    :cond_fa
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 253
    and-int/lit16 v7, v7, 0x300

    .line 255
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 257
    and-int/lit16 v9, v9, 0x300

    .line 259
    if-eq v7, v9, :cond_109

    .line 261
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 263
    or-int/2addr v7, v9

    .line 264
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 266
    :cond_109
    const/16 v7, 0x1a

    .line 268
    if-lt v3, v7, :cond_110

    .line 270
    invoke-static {v6, v8, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 273
    :cond_110
    iget v3, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 275
    and-int/lit8 v3, v3, 0xf

    .line 277
    iget v7, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 279
    and-int/lit8 v7, v7, 0xf

    .line 281
    if-eq v3, v7, :cond_11f

    .line 283
    iget v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 285
    or-int/2addr v3, v7

    .line 286
    iput v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 288
    :cond_11f
    iget v3, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 290
    and-int/lit8 v3, v3, 0x30

    .line 292
    iget v7, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 294
    and-int/lit8 v7, v7, 0x30

    .line 296
    if-eq v3, v7, :cond_12e

    .line 298
    iget v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 300
    or-int/2addr v3, v7

    .line 301
    iput v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 303
    :cond_12e
    iget v3, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 305
    iget v7, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 307
    if-eq v3, v7, :cond_136

    .line 309
    iput v7, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 311
    :cond_136
    iget v3, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 313
    iget v7, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 315
    if-eq v3, v7, :cond_13e

    .line 317
    iput v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 319
    :cond_13e
    iget v3, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 321
    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 323
    if-eq v3, v7, :cond_146

    .line 325
    iput v7, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 327
    :cond_146
    iget v3, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 329
    iget v6, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 331
    if-eq v3, v6, :cond_14e

    .line 333
    iput v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 335
    :cond_14e
    :goto_14e
    invoke-static {p1, v1, v2, v5, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->G(Landroid/content/Context;ILi0/f;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 338
    move-result-object v1

    .line 339
    new-instance v2, Lm/c;

    .line 341
    sget v3, Lh/i;->Theme_AppCompat_Empty:I

    .line 343
    invoke-direct {v2, p1, v3}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 346
    invoke-virtual {v2, v1}, Lm/c;->a(Landroid/content/res/Configuration;)V

    .line 349
    :try_start_15c
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 352
    move-result-object p1
    :try_end_160
    .catch Ljava/lang/NullPointerException; {:try_start_15c .. :try_end_160} :catch_165

    .line 353
    if-eqz p1, :cond_163

    .line 355
    goto :goto_164

    .line 356
    :cond_163
    move v0, v4

    .line 357
    :goto_164
    move v4, v0

    .line 358
    :catch_165
    if-eqz v4, :cond_16e

    .line 360
    invoke-virtual {v2}, Lm/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 363
    move-result-object p1

    .line 364
    invoke-static {p1}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat;->rebase(Landroid/content/res/Resources$Theme;)V

    .line 367
    :cond_16e
    return-object v2
.end method

.method public final d(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final e()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public final f()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 3
    return v0
.end method

.method public final h()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Lm/f;

    .line 3
    if-nez v0, :cond_19

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 8
    new-instance v0, Lm/f;

    .line 10
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 12
    if-eqz v1, :cond_12

    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/a0;->getThemedContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 21
    :goto_14
    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Lm/f;

    .line 26
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Lm/f;

    .line 28
    return-object v0
.end method

.method public final i()Landroidx/appcompat/app/a0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 6
    return-object v0
.end method

.method public final j()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_10

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 16
    goto :goto_1f

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 23
    if-nez v0, :cond_1f

    .line 25
    const-string v0, "AppCompatDelegate"

    .line 27
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method

.method public final k()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->invalidateOptionsMenu()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_29

    .line 17
    :cond_10
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:I

    .line 19
    const/4 v1, 0x1

    .line 20
    or-int/2addr v0, v1

    .line 21
    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:I

    .line 23
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    .line 25
    if-nez v0, :cond_29

    .line 27
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 35
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 37
    invoke-static {v0, v2}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 40
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    .line 42
    :cond_29
    :goto_29
    return-void
.end method

.method public final m(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    .line 7
    if-eqz v0, :cond_12

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 19
    :cond_12
    invoke-static {}, Landroidx/appcompat/widget/g;->a()Landroidx/appcompat/widget/g;

    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 25
    monitor-enter p1

    .line 26
    :try_start_19
    iget-object v1, p1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 28
    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_44

    .line 29
    :try_start_1c
    iget-object v2, v1, Landroidx/appcompat/widget/n0;->b:Ljava/util/WeakHashMap;

    .line 31
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/collection/d;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0}, Landroidx/collection/d;->a()V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_41

    .line 42
    :cond_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_44

    .line 43
    monitor-exit p1

    .line 44
    new-instance p1, Landroid/content/res/Configuration;

    .line 46
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 59
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Landroid/content/res/Configuration;

    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->A(ZZ)Z

    .line 65
    return-void

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    :try_start_42
    monitor-exit v1

    .line 68
    throw v0
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_44

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    monitor-exit p1

    .line 71
    throw v0
.end method

.method public final n()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->A(ZZ)Z

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->K()V

    .line 11
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 15
    if-eqz v2, :cond_44

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_11
    check-cast v1, Landroid/app/Activity;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_13} :catch_23

    .line 20
    :try_start_13
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 23
    move-result-object v3

    .line 24
    invoke-static {v1, v3}, Ld0/i;->c(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 27
    move-result-object v2
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1b} :catch_23

    .line 28
    goto :goto_23

    .line 29
    :catch_1c
    move-exception v1

    .line 30
    :try_start_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 32
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    throw v3
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_23} :catch_23

    .line 36
    :catch_23
    :goto_23
    if-eqz v2, :cond_2f

    .line 38
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 40
    if-nez v1, :cond_2c

    .line 42
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g0:Z

    .line 44
    goto :goto_2f

    .line 45
    :cond_2c
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a0;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 48
    :cond_2f
    :goto_2f
    sget-object v1, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    .line 50
    monitor-enter v1

    .line 51
    :try_start_32
    invoke-static {p0}, Landroidx/appcompat/app/k;->s(Landroidx/appcompat/app/k;)V

    .line 54
    sget-object v2, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    .line 56
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 58
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2, v3}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v1

    .line 65
    goto :goto_44

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_41

    .line 68
    throw v0

    .line 69
    :cond_44
    :goto_44
    new-instance v1, Landroid/content/res/Configuration;

    .line 71
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 84
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Landroid/content/res/Configuration;

    .line 86
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:Z

    .line 88
    return-void
.end method

.method public final o()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 5
    if-eqz v0, :cond_11

    .line 7
    sget-object v0, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    invoke-static {p0}, Landroidx/appcompat/app/k;->s(Landroidx/appcompat/app/k;)V

    .line 13
    monitor-exit v0

    .line 14
    goto :goto_11

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    .line 17
    throw v1

    .line 18
    :cond_11
    :goto_11
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    .line 20
    if-eqz v0, :cond_20

    .line 22
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 36
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 38
    const/16 v1, -0x64

    .line 40
    if-eq v0, v1, :cond_4d

    .line 42
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 44
    instance-of v1, v0, Landroid/app/Activity;

    .line 46
    if-eqz v1, :cond_4d

    .line 48
    check-cast v0, Landroid/app/Activity;

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4d

    .line 56
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m0:Landroidx/collection/f;

    .line 58
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:I

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_5c

    .line 78
    :cond_4d
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m0:Landroidx/collection/f;

    .line 80
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/Object;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_5c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 95
    if-eqz v0, :cond_63

    .line 97
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->onDestroy()V

    .line 100
    :cond_63
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    .line 102
    if-eqz v0, :cond_6a

    .line 104
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()V

    .line 107
    :cond_6a
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 109
    if-eqz v0, :cond_71

    .line 111
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()V

    .line 114
    :cond_71
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j0:Landroidx/appcompat/app/r;

    if-nez v0, :cond_5b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    sget-object v1, Lh/j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v1, Lh/j;->AppCompatTheme_viewInflaterClass:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 5
    new-instance v0, Landroidx/appcompat/app/r;

    invoke-direct {v0}, Landroidx/appcompat/app/r;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j0:Landroidx/appcompat/app/r;

    goto :goto_5b

    .line 6
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/r;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j0:Landroidx/appcompat/app/r;
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_38

    goto :goto_5b

    :catchall_38
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v0, Landroidx/appcompat/app/r;

    invoke-direct {v0}, Landroidx/appcompat/app/r;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j0:Landroidx/appcompat/app/r;

    :cond_5b
    :goto_5b
    const/4 v6, 0x0

    .line 12
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j0:Landroidx/appcompat/app/r;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 13
    sget v0, Landroidx/appcompat/widget/g1;->a:I

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 14
    invoke-virtual/range {v1 .. v9}, Landroidx/appcompat/app/r;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()Landroid/view/Window$Callback;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_30

    .line 8
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 10
    if-nez v2, :cond_30

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getRootMenu()Landroidx/appcompat/view/menu/h;

    .line 15
    move-result-object p1

    .line 16
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 18
    if-eqz v2, :cond_16

    .line 20
    array-length v3, v2

    .line 21
    move v4, v1

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    move v3, v1

    .line 24
    move v4, v3

    .line 25
    :goto_18
    if-ge v4, v3, :cond_26

    .line 27
    aget-object v5, v2, v4

    .line 29
    if-eqz v5, :cond_23

    .line 31
    iget-object v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 33
    if-ne v6, p1, :cond_23

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    add-int/lit8 v4, v4, 0x1

    .line 38
    goto :goto_18

    .line 39
    :cond_26
    const/4 v5, 0x0

    .line 40
    :goto_27
    if-eqz v5, :cond_30

    .line 42
    iget p1, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 44
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_30
    return v1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 7

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_7f

    .line 7
    invoke-interface {p1}, Landroidx/appcompat/widget/c0;->c()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_7f

    .line 13
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_20

    .line 25
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 27
    invoke-interface {p1}, Landroidx/appcompat/widget/c0;->d()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_7f

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()Landroid/view/Window$Callback;

    .line 36
    move-result-object p1

    .line 37
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 39
    invoke-interface {v2}, Landroidx/appcompat/widget/c0;->a()Z

    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x6c

    .line 45
    if-eqz v2, :cond_41

    .line 47
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 49
    invoke-interface {v0}, Landroidx/appcompat/widget/c0;->f()Z

    .line 52
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 54
    if-nez v0, :cond_8c

    .line 56
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 62
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 65
    goto :goto_8c

    .line 66
    :cond_41
    if-eqz p1, :cond_8c

    .line 68
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 70
    if-nez v2, :cond_8c

    .line 72
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    .line 74
    if-eqz v2, :cond_60

    .line 76
    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:I

    .line 78
    and-int/2addr v0, v2

    .line 79
    if-eqz v0, :cond_60

    .line 81
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 92
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 94
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$a;->run()V

    .line 97
    :cond_60
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 100
    move-result-object v0

    .line 101
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 103
    if-eqz v2, :cond_8c

    .line 105
    iget-boolean v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 107
    if-nez v4, :cond_8c

    .line 109
    iget-object v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 111
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_8c

    .line 117
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 119
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 122
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 124
    invoke-interface {p1}, Landroidx/appcompat/widget/c0;->g()Z

    .line 127
    goto :goto_8c

    .line 128
    :cond_7f
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 131
    move-result-object p1

    .line 132
    iput-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 134
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 141
    :cond_8c
    :goto_8c
    return-void
.end method

.method public final p()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a0;->setShowHideAnimationEnabled(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public final q()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->A(ZZ)Z

    .line 6
    return-void
.end method

.method public final r()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a0;->setShowHideAnimationEnabled(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public final t(I)Z
    .registers 7

    .line 1
    const-string v0, "AppCompatDelegate"

    .line 3
    const/16 v1, 0x8

    .line 5
    const/16 v2, 0x6d

    .line 7
    const/16 v3, 0x6c

    .line 9
    if-ne p1, v1, :cond_11

    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move p1, v3

    .line 17
    goto :goto_1b

    .line 18
    :cond_11
    const/16 v1, 0x9

    .line 20
    if-ne p1, v1, :cond_1b

    .line 22
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move p1, v2

    .line 28
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:Z

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_23

    .line 33
    if-ne p1, v3, :cond_23

    .line 35
    return v1

    .line 36
    :cond_23
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v0, :cond_2c

    .line 41
    if-ne p1, v4, :cond_2c

    .line 43
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 45
    :cond_2c
    if-eq p1, v4, :cond_61

    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq p1, v0, :cond_5b

    .line 50
    const/4 v0, 0x5

    .line 51
    if-eq p1, v0, :cond_55

    .line 53
    const/16 v0, 0xa

    .line 55
    if-eq p1, v0, :cond_4f

    .line 57
    if-eq p1, v3, :cond_49

    .line 59
    if-eq p1, v2, :cond_43

    .line 61
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_43
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U()V

    .line 71
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 73
    return v4

    .line 74
    :cond_49
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U()V

    .line 77
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 79
    return v4

    .line 80
    :cond_4f
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U()V

    .line 83
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    .line 85
    return v4

    .line 86
    :cond_55
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U()V

    .line 89
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    .line 91
    return v4

    .line 92
    :cond_5b
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U()V

    .line 95
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    .line 97
    return v4

    .line 98
    :cond_61
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U()V

    .line 101
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:Z

    .line 103
    return v4
.end method

.method public final u(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 6
    const v1, 0x1020002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 29
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a(Landroid/view/Window$Callback;)V

    .line 38
    return-void
.end method

.method public final v(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 6
    const v1, 0x1020002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 23
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a(Landroid/view/Window$Callback;)V

    .line 32
    return-void
.end method

.method public final w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 6
    const v1, 0x1020002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 23
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 25
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a(Landroid/view/Window$Callback;)V

    .line 32
    return-void
.end method

.method public final x(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:I

    .line 3
    return-void
.end method

.method public final y(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 10
    goto :goto_19

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 13
    if-eqz v0, :cond_12

    .line 15
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 18
    goto :goto_19

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:Landroid/widget/TextView;

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_19
    :goto_19
    return-void
.end method
