.class public Lmiuix/recyclerview/tool/RecyclerViewHelper;
.super Ljava/lang/Object;
.source "RecyclerViewHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleListMove(Ljava/util/List;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p1, p2, :cond_6

    .line 5
    move v2, v1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move v2, v0

    .line 8
    :goto_7
    if-ne p3, v1, :cond_2e

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p3

    .line 14
    if-eqz v2, :cond_1c

    .line 16
    :goto_f
    if-ge p1, p2, :cond_2a

    .line 18
    add-int/lit8 v0, p1, 0x1

    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    move p1, v0

    .line 28
    goto :goto_f

    .line 29
    :cond_1c
    :goto_1c
    if-le p1, p2, :cond_2a

    .line 31
    add-int/lit8 v0, p1, -0x1

    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 p1, p1, -0x1

    .line 42
    goto :goto_1c

    .line 43
    :cond_2a
    invoke-interface {p0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_71

    .line 47
    :cond_2e
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    move v4, p1

    .line 53
    :goto_34
    add-int v5, p1, p3

    .line 55
    if-ge v4, v5, :cond_42

    .line 57
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 66
    goto :goto_34

    .line 67
    :cond_42
    if-eqz v2, :cond_52

    .line 69
    :goto_44
    if-ge p1, p2, :cond_63

    .line 71
    add-int v1, p1, p3

    .line 73
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 p1, p1, 0x1

    .line 82
    goto :goto_44

    .line 83
    :cond_52
    sub-int/2addr v5, v1

    .line 84
    :goto_53
    add-int p1, p2, p3

    .line 86
    if-lt v5, p1, :cond_63

    .line 88
    sub-int p1, v5, p3

    .line 90
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p0, v5, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v5, v5, -0x1

    .line 99
    goto :goto_53

    .line 100
    :cond_63
    :goto_63
    if-ge v0, p3, :cond_71

    .line 102
    add-int p1, p2, v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 113
    goto :goto_63

    .line 114
    :cond_71
    :goto_71
    return-void
.end method
