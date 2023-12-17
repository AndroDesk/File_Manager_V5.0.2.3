.class public final Lg/b;
.super Lg/a;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a<",
        "[",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg/a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 4

    .line 1
    check-cast p2, [Ljava/lang/String;

    .line 3
    const-string v0, "context"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string p1, "input"

    .line 10
    invoke-static {p2, p1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 15
    const-string v0, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 17
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 22
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    move-result-object p1

    .line 26
    const-string p2, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)"

    .line 28
    invoke-static {p1, p2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    return-object p1
.end method

.method public final b(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Lg/a$a;
    .registers 8

    .line 1
    check-cast p2, [Ljava/lang/String;

    .line 3
    const-string v0, "context"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v0, "input"

    .line 10
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v0, p2

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_13

    .line 18
    move v0, v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v2

    .line 21
    :goto_14
    if-eqz v0, :cond_20

    .line 23
    new-instance p1, Lg/a$a;

    .line 25
    invoke-static {}, Lkotlin/collections/a;->d()Ljava/util/Map;

    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p1, p2}, Lg/a$a;-><init>(Ljava/lang/Object;)V

    .line 32
    goto :goto_68

    .line 33
    :cond_20
    array-length v0, p2

    .line 34
    move v3, v2

    .line 35
    :goto_22
    if-ge v3, v0, :cond_36

    .line 37
    aget-object v4, p2, v3

    .line 39
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_2e

    .line 45
    move v4, v1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v4, v2

    .line 48
    :goto_2f
    if-nez v4, :cond_33

    .line 50
    move v1, v2

    .line 51
    goto :goto_36

    .line 52
    :cond_33
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_22

    .line 55
    :cond_36
    :goto_36
    if-eqz v1, :cond_67

    .line 57
    array-length p1, p2

    .line 58
    invoke-static {p1}, Lz2/c;->b(I)I

    .line 61
    move-result p1

    .line 62
    const/16 v0, 0x10

    .line 64
    if-ge p1, v0, :cond_42

    .line 66
    move p1, v0

    .line 67
    :cond_42
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 69
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 72
    array-length p1, p2

    .line 73
    :goto_48
    if-ge v2, p1, :cond_61

    .line 75
    aget-object v1, p2, v2

    .line 77
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    new-instance v4, Lkotlin/Pair;

    .line 81
    invoke-direct {v4, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_48

    .line 98
    :cond_61
    new-instance p1, Lg/a$a;

    .line 100
    invoke-direct {p1, v0}, Lg/a$a;-><init>(Ljava/lang/Object;)V

    .line 103
    goto :goto_68

    .line 104
    :cond_67
    const/4 p1, 0x0

    .line 105
    :goto_68
    return-object p1
.end method

.method public final c(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 4
    invoke-static {}, Lkotlin/collections/a;->d()Ljava/util/Map;

    .line 7
    move-result-object p1

    .line 8
    goto/16 :goto_90

    .line 10
    :cond_9
    if-nez p2, :cond_11

    .line 12
    invoke-static {}, Lkotlin/collections/a;->d()Ljava/util/Map;

    .line 15
    move-result-object p1

    .line 16
    goto/16 :goto_90

    .line 18
    :cond_11
    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 26
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_8c

    .line 32
    if-nez p1, :cond_23

    .line 34
    goto/16 :goto_8c

    .line 36
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    array-length v1, p2

    .line 39
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    array-length v1, p2

    .line 43
    const/4 v2, 0x0

    .line 44
    move v3, v2

    .line 45
    :goto_2c
    if-ge v3, v1, :cond_3f

    .line 47
    aget v4, p2, v3

    .line 49
    if-nez v4, :cond_34

    .line 51
    const/4 v4, 0x1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v4, v2

    .line 54
    :goto_35
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_2c

    .line 64
    :cond_3f
    new-instance p2, Ljava/util/ArrayList;

    .line 66
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    array-length v1, p1

    .line 70
    :goto_45
    if-ge v2, v1, :cond_51

    .line 72
    aget-object v3, p1, v2

    .line 74
    if-eqz v3, :cond_4e

    .line 76
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_45

    .line 82
    :cond_51
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 95
    move-result p2

    .line 96
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 99
    move-result v0

    .line 100
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 103
    move-result p2

    .line 104
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_87

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_87

    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object p2

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    new-instance v3, Lkotlin/Pair;

    .line 129
    invoke-direct {v3, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto :goto_6a

    .line 136
    :cond_87
    invoke-static {v2}, Lkotlin/collections/a;->e(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 139
    move-result-object p1

    .line 140
    goto :goto_90

    .line 141
    :cond_8c
    :goto_8c
    invoke-static {}, Lkotlin/collections/a;->d()Ljava/util/Map;

    .line 144
    move-result-object p1

    .line 145
    :goto_90
    return-object p1
.end method
