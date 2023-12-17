.class public final Landroidx/recyclerview/widget/e$a;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/e$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/e$c;

    .line 3
    check-cast p2, Landroidx/recyclerview/widget/e$c;

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_c

    .line 11
    move v3, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v3, v1

    .line 14
    :goto_d
    iget-object v4, p2, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    if-nez v4, :cond_13

    .line 18
    move v4, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v4, v1

    .line 21
    :goto_14
    const/4 v5, -0x1

    .line 22
    if-eq v3, v4, :cond_1d

    .line 24
    if-nez v0, :cond_1b

    .line 26
    :cond_19
    move v1, v2

    .line 27
    goto :goto_37

    .line 28
    :cond_1b
    :goto_1b
    move v1, v5

    .line 29
    goto :goto_37

    .line 30
    :cond_1d
    iget-boolean v0, p1, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 32
    iget-boolean v3, p2, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 34
    if-eq v0, v3, :cond_26

    .line 36
    if-eqz v0, :cond_19

    .line 38
    goto :goto_1b

    .line 39
    :cond_26
    iget v0, p2, Landroidx/recyclerview/widget/e$c;->b:I

    .line 41
    iget v2, p1, Landroidx/recyclerview/widget/e$c;->b:I

    .line 43
    sub-int/2addr v0, v2

    .line 44
    if-eqz v0, :cond_2f

    .line 46
    move v1, v0

    .line 47
    goto :goto_37

    .line 48
    :cond_2f
    iget p1, p1, Landroidx/recyclerview/widget/e$c;->c:I

    .line 50
    iget p2, p2, Landroidx/recyclerview/widget/e$c;->c:I

    .line 52
    sub-int/2addr p1, p2

    .line 53
    if-eqz p1, :cond_37

    .line 55
    move v1, p1

    .line 56
    :cond_37
    :goto_37
    return v1
.end method
