.class public final Landroidx/recyclerview/widget/LinearLayoutManager$a;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/p;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d()V

    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 10
    move-result v0

    .line 11
    goto :goto_11

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 17
    move-result v0

    .line 18
    :goto_11
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 20
    return-void
.end method

.method public final b(ILandroid/view/View;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 7
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 10
    move-result p2

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->m()I

    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p2

    .line 18
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 20
    goto :goto_1c

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 23
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 26
    move-result p2

    .line 27
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 29
    :goto_1c
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 31
    return-void
.end method

.method public final c(ILandroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->m()I

    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_c

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(ILandroid/view/View;)V

    .line 12
    return-void

    .line 13
    :cond_c
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 15
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_55

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 25
    move-result p1

    .line 26
    sub-int/2addr p1, v0

    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 29
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 32
    move-result v0

    .line 33
    sub-int/2addr p1, v0

    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 39
    move-result v0

    .line 40
    sub-int/2addr v0, p1

    .line 41
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 43
    if-lez p1, :cond_94

    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 47
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 50
    move-result v0

    .line 51
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 53
    sub-int/2addr v2, v0

    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 56
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 59
    move-result v0

    .line 60
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 62
    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 65
    move-result p2

    .line 66
    sub-int/2addr p2, v0

    .line 67
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result p2

    .line 71
    add-int/2addr p2, v0

    .line 72
    sub-int/2addr v2, p2

    .line 73
    if-gez v2, :cond_94

    .line 75
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 77
    neg-int v0, v2

    .line 78
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 81
    move-result p1

    .line 82
    add-int/2addr p1, p2

    .line 83
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 85
    goto :goto_94

    .line 86
    :cond_55
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 88
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 91
    move-result p1

    .line 92
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 94
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->k()I

    .line 97
    move-result v2

    .line 98
    sub-int v2, p1, v2

    .line 100
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 102
    if-lez v2, :cond_94

    .line 104
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 106
    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 109
    move-result v3

    .line 110
    add-int/2addr v3, p1

    .line 111
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 113
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 116
    move-result p1

    .line 117
    sub-int/2addr p1, v0

    .line 118
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 120
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 123
    move-result p2

    .line 124
    sub-int/2addr p1, p2

    .line 125
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 127
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->g()I

    .line 130
    move-result p2

    .line 131
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 134
    move-result p1

    .line 135
    sub-int/2addr p2, p1

    .line 136
    sub-int/2addr p2, v3

    .line 137
    if-gez p2, :cond_94

    .line 139
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 141
    neg-int p2, p2

    .line 142
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 145
    move-result p2

    .line 146
    sub-int/2addr p1, p2

    .line 147
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 149
    :cond_94
    :goto_94
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 4
    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 11
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "AnchorInfo{mPosition="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mCoordinate="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mLayoutFromEnd="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", mValid="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const/16 v1, 0x7d

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
