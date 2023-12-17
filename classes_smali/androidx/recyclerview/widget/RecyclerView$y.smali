.class public final Landroidx/recyclerview/widget/RecyclerView$y;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "y"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:J

.field public n:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:I

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z

    .line 23
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    .line 25
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 27
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    const-string v1, "Layout state should be one of "

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " but it is "

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0
.end method

.method public final b()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:I

    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 13
    :goto_c
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "State{mTargetPosition="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mData="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mItemCount="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mIsMeasuring="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mPreviousLayoutItemCount="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:I

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", mStructureChanged="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", mInPreLayout="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", mRunSimpleAnimations="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", mRunPredictiveAnimations="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    const/16 v1, 0x7d

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    return-object v0
.end method
