.class public final Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# static fields
.field public static final a:Landroidx/fragment/app/e0;

.field public static final b:Landroidx/fragment/app/i0;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/fragment/app/e0;

    .line 3
    invoke-direct {v0}, Landroidx/fragment/app/e0;-><init>()V

    .line 6
    sput-object v0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/e0;

    .line 8
    :try_start_7
    const-class v0, Lf1/f;

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v2, v1, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    move-result-object v0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/fragment/app/i0;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    .line 25
    goto :goto_1a

    .line 26
    :catch_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    sput-object v0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/i0;

    .line 29
    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 10
    :goto_9
    if-ltz v0, :cond_17

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/View;

    .line 18
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    return-void
.end method
