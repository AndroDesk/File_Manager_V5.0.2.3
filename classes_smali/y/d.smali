.class public abstract Ly/d;
.super Ljava/lang/Object;
.source "Key.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ly/d;->a:I

    .line 7
    iput v0, p0, Ly/d;->b:I

    .line 9
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Ly/d;
.end method

.method public c(Ly/d;)Ly/d;
    .registers 3

    .line 1
    iget v0, p1, Ly/d;->a:I

    .line 3
    iput v0, p0, Ly/d;->a:I

    .line 5
    iget v0, p1, Ly/d;->b:I

    .line 7
    iput v0, p0, Ly/d;->b:I

    .line 9
    iget-object p1, p1, Ly/d;->c:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 13
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly/d;->b()Ly/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract d(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract e(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method public f(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
