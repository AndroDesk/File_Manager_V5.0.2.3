.class public final Landroidx/fragment/app/FragmentManager$o;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$o;->c:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p2, p0, Landroidx/fragment/app/FragmentManager$o;->a:I

    .line 8
    iput p3, p0, Landroidx/fragment/app/FragmentManager$o;->b:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$o;->c:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget v1, p0, Landroidx/fragment/app/FragmentManager$o;->a:I

    .line 9
    if-gez v1, :cond_16

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$o;->c:Landroidx/fragment/app/FragmentManager;

    .line 25
    iget v1, p0, Landroidx/fragment/app/FragmentManager$o;->a:I

    .line 27
    iget v2, p0, Landroidx/fragment/app/FragmentManager$o;->b:I

    .line 29
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method
