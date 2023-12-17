.class public final Landroidx/constraintlayout/motion/widget/d;
.super Ljava/lang/Object;
.source "ViewTransitionController.java"


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    .line 11
    const-string v0, "ViewTransitionController"

    .line 13
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/d;->d:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    return-void
.end method

.method public static a(Landroidx/constraintlayout/motion/widget/c;Z)V
    .registers 5

    .line 1
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Lz/e;

    .line 4
    move-result-object p1

    .line 5
    iget p0, p0, Landroidx/constraintlayout/motion/widget/c;->u:I

    .line 7
    new-instance v0, Landroidx/constraintlayout/motion/widget/d$a;

    .line 9
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/d$a;-><init>()V

    .line 12
    iget-object v1, p1, Lz/e;->a:Ljava/util/HashMap;

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/HashSet;

    .line 24
    if-nez v1, :cond_27

    .line 26
    new-instance v1, Ljava/util/HashSet;

    .line 28
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 31
    iget-object p1, p1, Lz/e;->a:Ljava/util/HashMap;

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_27
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 42
    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
