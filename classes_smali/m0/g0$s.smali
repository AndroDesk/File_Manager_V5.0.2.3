.class public final Lm0/g0$s;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# static fields
.field public static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lm0/g0$s;->d:Ljava/util/ArrayList;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    .line 7
    iput-object v0, p0, Lm0/g0$s;->b:Landroid/util/SparseArray;

    .line 9
    iput-object v0, p0, Lm0/g0$s;->c:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    sget p1, Lc0/b;->tag_unhandled_key_listeners:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    if-eqz p0, :cond_22

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    sub-int/2addr p1, v0

    .line 17
    :goto_10
    if-ltz p1, :cond_22

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lm0/g0$r;

    .line 25
    invoke-interface {v1}, Lm0/g0$r;->a()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1f

    .line 31
    return v0

    .line 32
    :cond_1f
    add-int/lit8 p1, p1, -0x1

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    const/4 p0, 0x0

    .line 36
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    .line 3
    if-eqz v0, :cond_2c

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_2c

    .line 12
    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 14
    if-eqz v0, :cond_25

    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v1

    .line 23
    :cond_16
    add-int/lit8 v1, v1, -0x1

    .line 25
    if-ltz v1, :cond_25

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2, p2}, Lm0/g0$s;->a(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_16

    .line 37
    return-object v2

    .line 38
    :cond_25
    invoke-static {p1, p2}, Lm0/g0$s;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2c

    .line 44
    return-object p1

    .line 45
    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    .line 46
    return-object p1
.end method
