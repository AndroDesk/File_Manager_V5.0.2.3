.class public Lcom/airbnb/lottie/model/KeyPath;
.super Ljava/lang/Object;
.source "KeyPath.java"


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/model/KeyPath;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 5
    iget-object p1, p1, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    iput-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    return-void
.end method

.method private endsWithGlobstar()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 15
    const-string v1, "**"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private isContainer(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "__container"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;
    .registers 4

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 3
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 6
    iget-object v1, v0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object v0
.end method

.method public fullyResolvesTo(Ljava/lang/String;I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lt p2, v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v0, v2

    .line 19
    if-ne p2, v0, :cond_16

    .line 21
    move v0, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, v1

    .line 24
    :goto_17
    iget-object v3, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 26
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 32
    const-string v4, "**"

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_4f

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_38

    .line 46
    const-string p1, "*"

    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_36

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    move p1, v1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    :goto_38
    move p1, v2

    .line 58
    :goto_39
    if-nez v0, :cond_4b

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    move-result v0

    .line 66
    add-int/lit8 v0, v0, -0x2

    .line 68
    if-ne p2, v0, :cond_4e

    .line 70
    invoke-direct {p0}, Lcom/airbnb/lottie/model/KeyPath;->endsWithGlobstar()Z

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_4e

    .line 76
    :cond_4b
    if-eqz p1, :cond_4e

    .line 78
    move v1, v2

    .line 79
    :cond_4e
    return v1

    .line 80
    :cond_4f
    if-nez v0, :cond_63

    .line 82
    iget-object v3, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 84
    add-int/lit8 v4, p2, 0x1

    .line 86
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_63

    .line 98
    move v3, v2

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v3, v1

    .line 101
    :goto_64
    if-eqz v3, :cond_82

    .line 103
    iget-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 108
    move-result p1

    .line 109
    add-int/lit8 p1, p1, -0x2

    .line 111
    if-eq p2, p1, :cond_80

    .line 113
    iget-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 118
    move-result p1

    .line 119
    add-int/lit8 p1, p1, -0x3

    .line 121
    if-ne p2, p1, :cond_81

    .line 123
    invoke-direct {p0}, Lcom/airbnb/lottie/model/KeyPath;->endsWithGlobstar()Z

    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_81

    .line 129
    :cond_80
    move v1, v2

    .line 130
    :cond_81
    return v1

    .line 131
    :cond_82
    if-eqz v0, :cond_85

    .line 133
    return v2

    .line 134
    :cond_85
    add-int/2addr p2, v2

    .line 135
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 140
    move-result v0

    .line 141
    sub-int/2addr v0, v2

    .line 142
    if-ge p2, v0, :cond_90

    .line 144
    return v1

    .line 145
    :cond_90
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 147
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Ljava/lang/String;

    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result p1

    .line 157
    return p1
.end method

.method public getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 3
    return-object v0
.end method

.method public incrementDepthBy(Ljava/lang/String;I)I
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/KeyPath;->isContainer(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 17
    const-string v2, "**"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v0, :cond_1a

    .line 26
    return v2

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result v0

    .line 33
    sub-int/2addr v0, v2

    .line 34
    if-ne p2, v0, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 39
    add-int/2addr p2, v2

    .line 40
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Ljava/lang/String;

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_35

    .line 52
    const/4 p1, 0x2

    .line 53
    return p1

    .line 54
    :cond_35
    return v1
.end method

.method public keysToString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public matches(Ljava/lang/String;I)Z
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/KeyPath;->isContainer(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-lt p2, v0, :cond_12

    .line 18
    return v2

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 21
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_42

    .line 33
    iget-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 41
    const-string v0, "**"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_42

    .line 49
    iget-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/String;

    .line 57
    const-string p2, "*"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    return v2

    .line 67
    :cond_42
    :goto_42
    return v1
.end method

.method public propagateToChildren(Ljava/lang/String;I)Z
    .registers 4

    .line 1
    const-string v0, "__container"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result p1

    .line 17
    sub-int/2addr p1, v0

    .line 18
    if-lt p2, p1, :cond_25

    .line 20
    iget-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 22
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 28
    const-string p2, "**"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :cond_25
    :goto_25
    return v0
.end method

.method public resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;
    .registers 3

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 3
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 6
    iput-object p1, v0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "KeyPath{keys="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ",resolved="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 19
    if-eqz v1, :cond_16

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v1, 0x0

    .line 24
    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const/16 v1, 0x7d

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
