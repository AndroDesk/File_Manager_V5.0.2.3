.class public Lmiuix/appcompat/internal/util/SinglePopControl;
.super Ljava/lang/Object;
.source "SinglePopControl.java"


# static fields
.field private static sPops:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    sput-object v0, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAssociatedActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_2
    if-nez v1, :cond_1b

    .line 5
    if-eqz p0, :cond_1b

    .line 7
    instance-of v2, p0, Landroid/app/Activity;

    .line 9
    if-eqz v2, :cond_e

    .line 11
    move-object v1, p0

    .line 12
    check-cast v1, Landroid/app/Activity;

    .line 14
    goto :goto_2

    .line 15
    :cond_e
    instance-of v2, p0, Landroid/content/ContextWrapper;

    .line 17
    if-eqz v2, :cond_19

    .line 19
    check-cast p0, Landroid/content/ContextWrapper;

    .line 21
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 24
    move-result-object p0

    .line 25
    goto :goto_2

    .line 26
    :cond_19
    move-object p0, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_1b
    return-object v1
.end method

.method private static getHashKey(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->getAssociatedActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result p0

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 15
    move-result p0

    .line 16
    :goto_f
    return p0
.end method

.method private static hide(Ljava/lang/Object;)V
    .registers 2

    .line 1
    instance-of v0, p0, Landroid/widget/PopupWindow;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p0, Landroid/widget/PopupWindow;

    .line 7
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 16
    :cond_f
    return-void
.end method

.method public static hidePop(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->getHashKey(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    sget-object p1, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    return-void
.end method

.method public static showPop(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->getHashKey(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    sget-object v0, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1f

    .line 13
    sget-object v0, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1f

    .line 27
    if-eq v0, p1, :cond_1f

    .line 29
    invoke-static {v0}, Lmiuix/appcompat/internal/util/SinglePopControl;->hide(Ljava/lang/Object;)V

    .line 32
    :cond_1f
    sget-object v0, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 34
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 36
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    return-void
.end method
