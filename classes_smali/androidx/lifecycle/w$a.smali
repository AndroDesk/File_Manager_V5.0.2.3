.class public final Landroidx/lifecycle/w$a;
.super Ljava/lang/Object;
.source "SavedStateHandle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/w;
    .registers 7
    .param p0  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p0, :cond_37

    .line 3
    if-nez p1, :cond_a

    .line 5
    new-instance p0, Landroidx/lifecycle/w;

    .line 7
    invoke-direct {p0}, Landroidx/lifecycle/w;-><init>()V

    .line 10
    goto :goto_36

    .line 11
    :cond_a
    new-instance p0, Ljava/util/HashMap;

    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_30

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 36
    const-string v2, "key"

    .line 38
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_17

    .line 49
    :cond_30
    new-instance p1, Landroidx/lifecycle/w;

    .line 51
    invoke-direct {p1, p0}, Landroidx/lifecycle/w;-><init>(Ljava/util/HashMap;)V

    .line 54
    move-object p0, p1

    .line 55
    :goto_36
    return-object p0

    .line 56
    :cond_37
    const-string p1, "keys"

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 61
    move-result-object p1

    .line 62
    const-string v0, "values"

    .line 64
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    move-result-object p0

    .line 68
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_54

    .line 71
    if-eqz p0, :cond_54

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v1

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v2

    .line 81
    if-ne v1, v2, :cond_54

    .line 83
    const/4 v1, 0x1

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v1, v0

    .line 86
    :goto_55
    if-eqz v1, :cond_82

    .line 88
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 90
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v2

    .line 97
    :goto_60
    if-ge v0, v2, :cond_7c

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_74

    .line 105
    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_60

    .line 117
    :cond_74
    new-instance p0, Ljava/lang/NullPointerException;

    .line 119
    const-string p1, "null cannot be cast to non-null type kotlin.String"

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0

    .line 125
    :cond_7c
    new-instance p0, Landroidx/lifecycle/w;

    .line 127
    invoke-direct {p0, v1}, Landroidx/lifecycle/w;-><init>(Ljava/util/HashMap;)V

    .line 130
    return-object p0

    .line 131
    :cond_82
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    const-string p1, "Invalid bundle passed as restored state"

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p0
.end method
