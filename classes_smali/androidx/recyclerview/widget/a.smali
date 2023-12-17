.class public final Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/a$a;,
        Landroidx/recyclerview/widget/a$b;
    }
.end annotation


# instance fields
.field public a:Lt/c;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/recyclerview/widget/a$a;

.field public final e:Landroidx/recyclerview/widget/m;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$f;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lt/c;

    .line 6
    const/16 v1, 0x1e

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v1, v2}, Lt/c;-><init>(II)V

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lt/c;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroidx/recyclerview/widget/a;->f:I

    .line 31
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 33
    new-instance p1, Landroidx/recyclerview/widget/m;

    .line 35
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/m;-><init>(Landroidx/recyclerview/widget/m$a;)V

    .line 38
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->e:Landroidx/recyclerview/widget/m;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_3c

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 19
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    .line 21
    const/16 v5, 0x8

    .line 23
    const/4 v6, 0x1

    .line 24
    if-ne v4, v5, :cond_24

    .line 26
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 28
    add-int/lit8 v4, v2, 0x1

    .line 30
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/a;->f(II)I

    .line 33
    move-result v3

    .line 34
    if-ne v3, p1, :cond_39

    .line 36
    return v6

    .line 37
    :cond_24
    if-ne v4, v6, :cond_39

    .line 39
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 41
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 43
    add-int/2addr v3, v4

    .line 44
    :goto_2b
    if-ge v4, v3, :cond_39

    .line 46
    add-int/lit8 v5, v2, 0x1

    .line 48
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/a;->f(II)I

    .line 51
    move-result v5

    .line 52
    if-ne v5, p1, :cond_36

    .line 54
    return v6

    .line 55
    :cond_36
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_2b

    .line 58
    :cond_39
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_8

    .line 61
    :cond_3c
    return v1
.end method

.method public final b()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_1c

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 13
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroidx/recyclerview/widget/a$b;

    .line 21
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 23
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->l(Ljava/util/ArrayList;)V

    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/a;->f:I

    .line 36
    return-void
.end method

.method public final c()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->b()V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_b
    if-ge v2, v0, :cond_95

    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 22
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v4, v5, :cond_79

    .line 27
    const/4 v6, 0x2

    .line 28
    if-eq v4, v6, :cond_59

    .line 30
    const/4 v6, 0x4

    .line 31
    if-eq v4, v6, :cond_3e

    .line 33
    const/16 v6, 0x8

    .line 35
    if-eq v4, v6, :cond_25

    .line 37
    goto :goto_91

    .line 38
    :cond_25
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 40
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 42
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 45
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 47
    iget v6, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 49
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 51
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 53
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 58
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 62
    goto :goto_91

    .line 63
    :cond_3e
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 65
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 67
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 70
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 72
    iget v6, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 74
    iget v7, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 76
    iget-object v3, v3, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 78
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 80
    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    invoke-virtual {v8, v6, v7, v3}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 85
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 89
    goto :goto_91

    .line 90
    :cond_59
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 92
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 94
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 97
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 99
    iget v6, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 101
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 103
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 105
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    invoke-virtual {v7, v6, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 110
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    iput-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 114
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 116
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 118
    add-int/2addr v5, v3

    .line 119
    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 121
    goto :goto_91

    .line 122
    :cond_79
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 124
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 126
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 129
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 131
    iget v6, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 133
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 135
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 137
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 142
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 146
    :goto_91
    add-int/lit8 v2, v2, 0x1

    .line 148
    goto/16 :goto_b

    .line 150
    :cond_95
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->l(Ljava/util/ArrayList;)V

    .line 155
    iput v1, p0, Landroidx/recyclerview/widget/a;->f:I

    .line 157
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/a$b;)V
    .registers 14

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_85

    .line 6
    const/16 v2, 0x8

    .line 8
    if-eq v0, v2, :cond_85

    .line 10
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 12
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/a;->m(II)I

    .line 15
    move-result v0

    .line 16
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 18
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eq v3, v4, :cond_33

    .line 25
    if-ne v3, v5, :cond_1c

    .line 27
    move v3, v1

    .line 28
    goto :goto_34

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v2, "op should be remove or update."

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0

    .line 52
    :cond_33
    move v3, v6

    .line 53
    :goto_34
    move v7, v1

    .line 54
    move v8, v7

    .line 55
    :goto_36
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 57
    if-ge v7, v9, :cond_71

    .line 59
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 61
    mul-int v10, v3, v7

    .line 63
    add-int/2addr v10, v9

    .line 64
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 66
    invoke-virtual {p0, v10, v9}, Landroidx/recyclerview/widget/a;->m(II)I

    .line 69
    move-result v9

    .line 70
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 72
    if-eq v10, v4, :cond_51

    .line 74
    if-eq v10, v5, :cond_4c

    .line 76
    goto :goto_55

    .line 77
    :cond_4c
    add-int/lit8 v11, v0, 0x1

    .line 79
    if-ne v9, v11, :cond_55

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    if-ne v9, v0, :cond_55

    .line 84
    :goto_53
    move v11, v1

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    :goto_55
    move v11, v6

    .line 87
    :goto_56
    if-eqz v11, :cond_5b

    .line 89
    add-int/lit8 v8, v8, 0x1

    .line 91
    goto :goto_6e

    .line 92
    :cond_5b
    iget-object v11, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, v11, v10, v0, v8}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;I)V

    .line 101
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 104
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 106
    if-ne v0, v5, :cond_6c

    .line 108
    add-int/2addr v2, v8

    .line 109
    :cond_6c
    move v8, v1

    .line 110
    move v0, v9

    .line 111
    :goto_6e
    add-int/lit8 v7, v7, 0x1

    .line 113
    goto :goto_36

    .line 114
    :cond_71
    iget-object v1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 119
    if-lez v8, :cond_84

    .line 121
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 123
    invoke-virtual {p0, v1, p1, v0, v8}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;I)V

    .line 130
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 133
    :cond_84
    return-void

    .line 134
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 136
    const-string v0, "should not dispatch add or move for pre layout"

    .line 138
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p1
.end method

.method public final e(Landroidx/recyclerview/widget/a$b;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 8
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_2a

    .line 14
    const/4 v2, 0x4

    .line 15
    if-ne v0, v2, :cond_22

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 19
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 23
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 25
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    invoke-virtual {v3, p2, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 30
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 34
    goto :goto_40

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    const-string p2, "only remove and update ops can be dispatched in first pass"

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_2a
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 45
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 47
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 49
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    invoke-virtual {v2, p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 54
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    iput-boolean v1, p2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 58
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 60
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 62
    add-int/2addr v0, p1

    .line 63
    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 65
    :goto_40
    return-void
.end method

.method public final f(II)I
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    :goto_6
    if-ge p2, v0, :cond_41

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/recyclerview/widget/a$b;

    .line 17
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 19
    const/16 v3, 0x8

    .line 21
    if-ne v2, v3, :cond_28

    .line 23
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 25
    if-ne v2, p1, :cond_1d

    .line 27
    iget p1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 29
    goto :goto_3e

    .line 30
    :cond_1d
    if-ge v2, p1, :cond_21

    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 34
    :cond_21
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 36
    if-gt v1, p1, :cond_3e

    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 40
    goto :goto_3e

    .line 41
    :cond_28
    iget v3, v1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 43
    if-gt v3, p1, :cond_3e

    .line 45
    const/4 v4, 0x2

    .line 46
    if-ne v2, v4, :cond_38

    .line 48
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 50
    add-int/2addr v3, v1

    .line 51
    if-ge p1, v3, :cond_36

    .line 53
    const/4 p1, -0x1

    .line 54
    return p1

    .line 55
    :cond_36
    sub-int/2addr p1, v1

    .line 56
    goto :goto_3e

    .line 57
    :cond_38
    const/4 v3, 0x1

    .line 58
    if-ne v2, v3, :cond_3e

    .line 60
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 62
    add-int/2addr p1, v1

    .line 63
    :cond_3e
    :goto_3e
    add-int/lit8 p2, p2, 0x1

    .line 65
    goto :goto_6

    .line 66
    :cond_41
    return p1
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public final h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lt/c;

    .line 3
    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 9
    if-nez v0, :cond_10

    .line 11
    new-instance v0, Landroidx/recyclerview/widget/a$b;

    .line 13
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/a$b;-><init>(Ljava/lang/Object;III)V

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    iput p2, v0, Landroidx/recyclerview/widget/a$b;->a:I

    .line 19
    iput p3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 21
    iput p4, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 23
    iput-object p1, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 25
    :goto_18
    return-object v0
.end method

.method public final i(Landroidx/recyclerview/widget/a$b;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_64

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_51

    .line 14
    const/4 v2, 0x4

    .line 15
    if-eq v0, v2, :cond_3d

    .line 17
    const/16 v2, 0x8

    .line 19
    if-ne v0, v2, :cond_26

    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 23
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 25
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 27
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 29
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-virtual {v3, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 34
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 38
    goto :goto_75

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v2, "Unknown update op type for "

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    :cond_3d
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 64
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 66
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 68
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 70
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 72
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    invoke-virtual {v4, v2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 77
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 81
    goto :goto_75

    .line 82
    :cond_51
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 84
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 86
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 88
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 90
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-virtual {v3, v2, p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 96
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 100
    goto :goto_75

    .line 101
    :cond_64
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 103
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 105
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 107
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 109
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    invoke-virtual {v3, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 114
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 118
    :goto_75
    return-void
.end method

.method public final j()V
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/a;->e:Landroidx/recyclerview/widget/m;

    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :cond_9
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_10
    const/16 v7, 0x8

    .line 19
    const/4 v8, -0x1

    .line 20
    if-ltz v3, :cond_26

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Landroidx/recyclerview/widget/a$b;

    .line 28
    iget v9, v9, Landroidx/recyclerview/widget/a$b;->a:I

    .line 30
    if-ne v9, v7, :cond_22

    .line 32
    if-eqz v6, :cond_23

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    move v6, v4

    .line 36
    :cond_23
    add-int/lit8 v3, v3, -0x1

    .line 38
    goto :goto_10

    .line 39
    :cond_26
    move v3, v8

    .line 40
    :goto_27
    const/4 v6, 0x4

    .line 41
    const/4 v9, 0x2

    .line 42
    const/4 v10, 0x0

    .line 43
    if-eq v3, v8, :cond_1c6

    .line 45
    add-int/lit8 v7, v3, 0x1

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v11

    .line 51
    check-cast v11, Landroidx/recyclerview/widget/a$b;

    .line 53
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v12

    .line 57
    check-cast v12, Landroidx/recyclerview/widget/a$b;

    .line 59
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->a:I

    .line 61
    if-eq v13, v4, :cond_19c

    .line 63
    if-eq v13, v9, :cond_a8

    .line 65
    if-eq v13, v6, :cond_43

    .line 67
    goto :goto_9

    .line 68
    :cond_43
    iget v5, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 70
    iget v8, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 72
    if-ge v5, v8, :cond_4e

    .line 74
    add-int/lit8 v8, v8, -0x1

    .line 76
    iput v8, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 78
    goto :goto_64

    .line 79
    :cond_4e
    iget v9, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 81
    add-int/2addr v8, v9

    .line 82
    if-ge v5, v8, :cond_64

    .line 84
    add-int/lit8 v9, v9, -0x1

    .line 86
    iput v9, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 88
    iget-object v5, v1, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/m$a;

    .line 90
    iget v8, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 92
    iget-object v9, v12, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 94
    check-cast v5, Landroidx/recyclerview/widget/a;

    .line 96
    invoke-virtual {v5, v9, v6, v8, v4}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 99
    move-result-object v4

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    :goto_64
    move-object v4, v10

    .line 102
    :goto_65
    iget v5, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 104
    iget v8, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 106
    if-gt v5, v8, :cond_70

    .line 108
    add-int/lit8 v8, v8, 0x1

    .line 110
    iput v8, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 112
    goto :goto_87

    .line 113
    :cond_70
    iget v9, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 115
    add-int/2addr v8, v9

    .line 116
    if-ge v5, v8, :cond_87

    .line 118
    sub-int/2addr v8, v5

    .line 119
    iget-object v9, v1, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/m$a;

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 123
    iget-object v10, v12, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 125
    check-cast v9, Landroidx/recyclerview/widget/a;

    .line 127
    invoke-virtual {v9, v10, v6, v5, v8}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 130
    move-result-object v10

    .line 131
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 133
    sub-int/2addr v5, v8

    .line 134
    iput v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 136
    :cond_87
    :goto_87
    invoke-virtual {v2, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 141
    if-lez v5, :cond_92

    .line 143
    invoke-virtual {v2, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    goto :goto_9c

    .line 147
    :cond_92
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    iget-object v5, v1, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/m$a;

    .line 152
    check-cast v5, Landroidx/recyclerview/widget/a;

    .line 154
    invoke-virtual {v5, v12}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 157
    :goto_9c
    if-eqz v4, :cond_a1

    .line 159
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    :cond_a1
    if-eqz v10, :cond_9

    .line 164
    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    goto/16 :goto_9

    .line 169
    :cond_a8
    iget v6, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 171
    iget v8, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 173
    if-ge v6, v8, :cond_bd

    .line 175
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 177
    if-ne v13, v6, :cond_bb

    .line 179
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 181
    sub-int v6, v8, v6

    .line 183
    if-ne v13, v6, :cond_bb

    .line 185
    move v5, v4

    .line 186
    const/4 v6, 0x0

    .line 187
    goto :goto_cd

    .line 188
    :cond_bb
    const/4 v5, 0x0

    .line 189
    goto :goto_c9

    .line 190
    :cond_bd
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 192
    add-int/lit8 v14, v8, 0x1

    .line 194
    if-ne v13, v14, :cond_cb

    .line 196
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 198
    sub-int/2addr v6, v8

    .line 199
    if-ne v13, v6, :cond_cb

    .line 201
    move v5, v4

    .line 202
    :goto_c9
    move v6, v5

    .line 203
    goto :goto_cd

    .line 204
    :cond_cb
    move v6, v4

    .line 205
    const/4 v5, 0x0

    .line 206
    :goto_cd
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 208
    if-ge v8, v13, :cond_d6

    .line 210
    add-int/lit8 v13, v13, -0x1

    .line 212
    iput v13, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 214
    goto :goto_f3

    .line 215
    :cond_d6
    iget v14, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 217
    add-int/2addr v13, v14

    .line 218
    if-ge v8, v13, :cond_f3

    .line 220
    add-int/lit8 v14, v14, -0x1

    .line 222
    iput v14, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 224
    iput v9, v11, Landroidx/recyclerview/widget/a$b;->a:I

    .line 226
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 228
    iget v3, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 230
    if-nez v3, :cond_9

    .line 232
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 235
    iget-object v3, v1, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/m$a;

    .line 237
    check-cast v3, Landroidx/recyclerview/widget/a;

    .line 239
    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 242
    goto/16 :goto_9

    .line 244
    :cond_f3
    :goto_f3
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 246
    iget v8, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 248
    if-gt v4, v8, :cond_fe

    .line 250
    add-int/lit8 v8, v8, 0x1

    .line 252
    iput v8, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 254
    goto :goto_115

    .line 255
    :cond_fe
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 257
    add-int/2addr v8, v13

    .line 258
    if-ge v4, v8, :cond_115

    .line 260
    sub-int/2addr v8, v4

    .line 261
    iget-object v13, v1, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/m$a;

    .line 263
    add-int/lit8 v4, v4, 0x1

    .line 265
    check-cast v13, Landroidx/recyclerview/widget/a;

    .line 267
    invoke-virtual {v13, v10, v9, v4, v8}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 270
    move-result-object v10

    .line 271
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 273
    iget v8, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 275
    sub-int/2addr v4, v8

    .line 276
    iput v4, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 278
    :cond_115
    :goto_115
    if-eqz v5, :cond_126

    .line 280
    invoke-virtual {v2, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 286
    iget-object v3, v1, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/m$a;

    .line 288
    check-cast v3, Landroidx/recyclerview/widget/a;

    .line 290
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 293
    goto/16 :goto_9

    .line 295
    :cond_126
    if-eqz v6, :cond_157

    .line 297
    if-eqz v10, :cond_140

    .line 299
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 301
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->b:I

    .line 303
    if-le v4, v5, :cond_135

    .line 305
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->d:I

    .line 307
    sub-int/2addr v4, v5

    .line 308
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 310
    :cond_135
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 312
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->b:I

    .line 314
    if-le v4, v5, :cond_140

    .line 316
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->d:I

    .line 318
    sub-int/2addr v4, v5

    .line 319
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 321
    :cond_140
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 323
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 325
    if-le v4, v5, :cond_14b

    .line 327
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 329
    sub-int/2addr v4, v5

    .line 330
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 332
    :cond_14b
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 334
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 336
    if-le v4, v5, :cond_185

    .line 338
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 340
    sub-int/2addr v4, v5

    .line 341
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 343
    goto :goto_185

    .line 344
    :cond_157
    if-eqz v10, :cond_16f

    .line 346
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 348
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->b:I

    .line 350
    if-lt v4, v5, :cond_164

    .line 352
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->d:I

    .line 354
    sub-int/2addr v4, v5

    .line 355
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 357
    :cond_164
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 359
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->b:I

    .line 361
    if-lt v4, v5, :cond_16f

    .line 363
    iget v5, v10, Landroidx/recyclerview/widget/a$b;->d:I

    .line 365
    sub-int/2addr v4, v5

    .line 366
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 368
    :cond_16f
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 370
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 372
    if-lt v4, v5, :cond_17a

    .line 374
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 376
    sub-int/2addr v4, v5

    .line 377
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 379
    :cond_17a
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 381
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 383
    if-lt v4, v5, :cond_185

    .line 385
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 387
    sub-int/2addr v4, v5

    .line 388
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 390
    :cond_185
    :goto_185
    invoke-virtual {v2, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 395
    iget v5, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 397
    if-eq v4, v5, :cond_192

    .line 399
    invoke-virtual {v2, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    goto :goto_195

    .line 403
    :cond_192
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 406
    :goto_195
    if-eqz v10, :cond_9

    .line 408
    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 411
    goto/16 :goto_9

    .line 413
    :cond_19c
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 415
    iget v6, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 417
    if-ge v4, v6, :cond_1a4

    .line 419
    move v5, v8

    .line 420
    goto :goto_1a5

    .line 421
    :cond_1a4
    const/4 v5, 0x0

    .line 422
    :goto_1a5
    iget v8, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 424
    if-ge v8, v6, :cond_1ab

    .line 426
    add-int/lit8 v5, v5, 0x1

    .line 428
    :cond_1ab
    if-gt v6, v8, :cond_1b2

    .line 430
    iget v6, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 432
    add-int/2addr v8, v6

    .line 433
    iput v8, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 435
    :cond_1b2
    iget v6, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 437
    if-gt v6, v4, :cond_1bb

    .line 439
    iget v8, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 441
    add-int/2addr v4, v8

    .line 442
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 444
    :cond_1bb
    add-int/2addr v6, v5

    .line 445
    iput v6, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 447
    invoke-virtual {v2, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-virtual {v2, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 453
    goto/16 :goto_9

    .line 455
    :cond_1c6
    iget-object v1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 457
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 460
    move-result v1

    .line 461
    const/4 v2, 0x0

    .line 462
    :goto_1cd
    if-ge v2, v1, :cond_2c6

    .line 464
    iget-object v3, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    move-result-object v3

    .line 470
    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 472
    iget v11, v3, Landroidx/recyclerview/widget/a$b;->a:I

    .line 474
    if-eq v11, v4, :cond_2bc

    .line 476
    if-eq v11, v9, :cond_253

    .line 478
    if-eq v11, v6, :cond_1e8

    .line 480
    if-eq v11, v7, :cond_1e3

    .line 482
    goto/16 :goto_2bf

    .line 484
    :cond_1e3
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->i(Landroidx/recyclerview/widget/a$b;)V

    .line 487
    goto/16 :goto_2bf

    .line 489
    :cond_1e8
    iget v11, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 491
    iget v12, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 493
    add-int/2addr v12, v11

    .line 494
    move v15, v8

    .line 495
    move v13, v11

    .line 496
    const/4 v14, 0x0

    .line 497
    :goto_1f0
    if-ge v11, v12, :cond_23a

    .line 499
    iget-object v5, v0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 501
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 503
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 505
    invoke-virtual {v7, v11, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 508
    move-result-object v7

    .line 509
    if-nez v7, :cond_200

    .line 511
    :goto_1fe
    move-object v7, v10

    .line 512
    goto :goto_20d

    .line 513
    :cond_200
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 515
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 517
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 519
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 522
    move-result v5

    .line 523
    if-eqz v5, :cond_20d

    .line 525
    goto :goto_1fe

    .line 526
    :cond_20d
    :goto_20d
    if-nez v7, :cond_225

    .line 528
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->a(I)Z

    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_216

    .line 534
    goto :goto_225

    .line 535
    :cond_216
    if-ne v15, v4, :cond_223

    .line 537
    iget-object v5, v3, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 539
    invoke-virtual {v0, v5, v6, v13, v14}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 542
    move-result-object v5

    .line 543
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/a;->i(Landroidx/recyclerview/widget/a$b;)V

    .line 546
    move v13, v11

    .line 547
    const/4 v14, 0x0

    .line 548
    :cond_223
    const/4 v15, 0x0

    .line 549
    goto :goto_233

    .line 550
    :cond_225
    :goto_225
    if-nez v15, :cond_232

    .line 552
    iget-object v5, v3, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 554
    invoke-virtual {v0, v5, v6, v13, v14}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 557
    move-result-object v5

    .line 558
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    .line 561
    move v13, v11

    .line 562
    const/4 v14, 0x0

    .line 563
    :cond_232
    move v15, v4

    .line 564
    :goto_233
    add-int/2addr v14, v4

    .line 565
    add-int/lit8 v11, v11, 0x1

    .line 567
    const/16 v7, 0x8

    .line 569
    const/4 v8, -0x1

    .line 570
    goto :goto_1f0

    .line 571
    :cond_23a
    iget v5, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 573
    if-eq v14, v5, :cond_247

    .line 575
    iget-object v5, v3, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 577
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 580
    invoke-virtual {v0, v5, v6, v13, v14}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 583
    move-result-object v3

    .line 584
    :cond_247
    if-nez v15, :cond_24e

    .line 586
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    .line 589
    goto/16 :goto_2bf

    .line 591
    :cond_24e
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->i(Landroidx/recyclerview/widget/a$b;)V

    .line 594
    goto/16 :goto_2bf

    .line 596
    :cond_253
    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 598
    iget v7, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 600
    add-int/2addr v7, v5

    .line 601
    move v8, v5

    .line 602
    const/4 v11, 0x0

    .line 603
    const/4 v12, -0x1

    .line 604
    :goto_25b
    if-ge v8, v7, :cond_2a7

    .line 606
    iget-object v13, v0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 608
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 610
    iget-object v14, v13, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 612
    invoke-virtual {v14, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 615
    move-result-object v14

    .line 616
    if-nez v14, :cond_26b

    .line 618
    :goto_269
    move-object v14, v10

    .line 619
    goto :goto_278

    .line 620
    :cond_26b
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 622
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 624
    iget-object v15, v14, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 626
    invoke-virtual {v13, v15}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 629
    move-result v13

    .line 630
    if-eqz v13, :cond_278

    .line 632
    goto :goto_269

    .line 633
    :cond_278
    :goto_278
    if-nez v14, :cond_28f

    .line 635
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/a;->a(I)Z

    .line 638
    move-result v13

    .line 639
    if-eqz v13, :cond_281

    .line 641
    goto :goto_28f

    .line 642
    :cond_281
    if-ne v12, v4, :cond_28c

    .line 644
    invoke-virtual {v0, v10, v9, v5, v11}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 647
    move-result-object v12

    .line 648
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/a;->i(Landroidx/recyclerview/widget/a$b;)V

    .line 651
    move v12, v4

    .line 652
    goto :goto_28d

    .line 653
    :cond_28c
    const/4 v12, 0x0

    .line 654
    :goto_28d
    const/4 v13, 0x0

    .line 655
    goto :goto_29c

    .line 656
    :cond_28f
    :goto_28f
    if-nez v12, :cond_29a

    .line 658
    invoke-virtual {v0, v10, v9, v5, v11}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 661
    move-result-object v12

    .line 662
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    .line 665
    move v12, v4

    .line 666
    goto :goto_29b

    .line 667
    :cond_29a
    const/4 v12, 0x0

    .line 668
    :goto_29b
    move v13, v4

    .line 669
    :goto_29c
    if-eqz v12, :cond_2a2

    .line 671
    sub-int/2addr v8, v11

    .line 672
    sub-int/2addr v7, v11

    .line 673
    move v11, v4

    .line 674
    goto :goto_2a4

    .line 675
    :cond_2a2
    add-int/lit8 v11, v11, 0x1

    .line 677
    :goto_2a4
    add-int/2addr v8, v4

    .line 678
    move v12, v13

    .line 679
    goto :goto_25b

    .line 680
    :cond_2a7
    iget v7, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 682
    if-eq v11, v7, :cond_2b2

    .line 684
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 687
    invoke-virtual {v0, v10, v9, v5, v11}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 690
    move-result-object v3

    .line 691
    :cond_2b2
    if-nez v12, :cond_2b8

    .line 693
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    .line 696
    goto :goto_2bf

    .line 697
    :cond_2b8
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->i(Landroidx/recyclerview/widget/a$b;)V

    .line 700
    goto :goto_2bf

    .line 701
    :cond_2bc
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->i(Landroidx/recyclerview/widget/a$b;)V

    .line 704
    :goto_2bf
    add-int/lit8 v2, v2, 0x1

    .line 706
    const/16 v7, 0x8

    .line 708
    const/4 v8, -0x1

    .line 709
    goto/16 :goto_1cd

    .line 711
    :cond_2c6
    iget-object v1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 713
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 716
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/a$b;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lt/c;

    .line 6
    invoke-virtual {v0, p1}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public final l(Ljava/util/ArrayList;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_13

    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/recyclerview/widget/a$b;

    .line 14
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_5

    .line 20
    :cond_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 23
    return-void
.end method

.method public final m(II)I
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_8
    const/16 v2, 0x8

    .line 11
    if-ltz v0, :cond_82

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 21
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    .line 23
    const/4 v5, 0x2

    .line 24
    if-ne v4, v2, :cond_62

    .line 26
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 28
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 30
    if-ge v2, v4, :cond_22

    .line 32
    move v6, v2

    .line 33
    move v7, v4

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    move v7, v2

    .line 36
    move v6, v4

    .line 37
    :goto_24
    if-lt p1, v6, :cond_4a

    .line 39
    if-gt p1, v7, :cond_4a

    .line 41
    if-ne v6, v2, :cond_3a

    .line 43
    if-ne p2, v1, :cond_31

    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 47
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 49
    goto :goto_37

    .line 50
    :cond_31
    if-ne p2, v5, :cond_37

    .line 52
    add-int/lit8 v4, v4, -0x1

    .line 54
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 56
    :cond_37
    :goto_37
    add-int/lit8 p1, p1, 0x1

    .line 58
    goto :goto_7f

    .line 59
    :cond_3a
    if-ne p2, v1, :cond_41

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 63
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 65
    goto :goto_47

    .line 66
    :cond_41
    if-ne p2, v5, :cond_47

    .line 68
    add-int/lit8 v2, v2, -0x1

    .line 70
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 72
    :cond_47
    :goto_47
    add-int/lit8 p1, p1, -0x1

    .line 74
    goto :goto_7f

    .line 75
    :cond_4a
    if-ge p1, v2, :cond_7f

    .line 77
    if-ne p2, v1, :cond_57

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 85
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 87
    goto :goto_7f

    .line 88
    :cond_57
    if-ne p2, v5, :cond_7f

    .line 90
    add-int/lit8 v2, v2, -0x1

    .line 92
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 94
    add-int/lit8 v4, v4, -0x1

    .line 96
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 98
    goto :goto_7f

    .line 99
    :cond_62
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 101
    if-gt v2, p1, :cond_72

    .line 103
    if-ne v4, v1, :cond_6c

    .line 105
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 107
    sub-int/2addr p1, v2

    .line 108
    goto :goto_7f

    .line 109
    :cond_6c
    if-ne v4, v5, :cond_7f

    .line 111
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 113
    add-int/2addr p1, v2

    .line 114
    goto :goto_7f

    .line 115
    :cond_72
    if-ne p2, v1, :cond_79

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 119
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 121
    goto :goto_7f

    .line 122
    :cond_79
    if-ne p2, v5, :cond_7f

    .line 124
    add-int/lit8 v2, v2, -0x1

    .line 126
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 128
    :cond_7f
    :goto_7f
    add-int/lit8 v0, v0, -0x1

    .line 130
    goto :goto_8

    .line 131
    :cond_82
    iget-object p2, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 136
    move-result p2

    .line 137
    sub-int/2addr p2, v1

    .line 138
    :goto_89
    if-ltz p2, :cond_b7

    .line 140
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 148
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    .line 150
    if-ne v1, v2, :cond_a8

    .line 152
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 154
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 156
    if-eq v1, v3, :cond_9f

    .line 158
    if-gez v1, :cond_b4

    .line 160
    :cond_9f
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 168
    goto :goto_b4

    .line 169
    :cond_a8
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 171
    if-gtz v1, :cond_b4

    .line 173
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    .line 181
    :cond_b4
    :goto_b4
    add-int/lit8 p2, p2, -0x1

    .line 183
    goto :goto_89

    .line 184
    :cond_b7
    return p1
.end method
