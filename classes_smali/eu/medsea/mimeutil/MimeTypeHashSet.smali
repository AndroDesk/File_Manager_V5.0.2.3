.class Leu/medsea/mimeutil/MimeTypeHashSet;
.super Ljava/lang/Object;
.source "MimeTypeHashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/util/Collection;


# instance fields
.field private hashSet:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1, p2}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/MimeType;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 20
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 14
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 5
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 17
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private get(Leu/medsea/mimeutil/MimeType;)Leu/medsea/mimeutil/MimeType;
    .registers 5

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_e

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Leu/medsea/mimeutil/MimeType;

    .line 21
    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeType;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_6

    .line 27
    return-object v1
.end method

.method private match(Ljava/util/Collection;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeTypeHashSet;->size()I

    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 16
    move-result v0

    .line 17
    new-array v0, v0, [Leu/medsea/mimeutil/MimeType;

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Leu/medsea/mimeutil/MimeType;

    .line 25
    move v0, v2

    .line 26
    :goto_19
    array-length v1, p1

    .line 27
    if-lt v0, v1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1e
    aget-object v1, p1, v0

    .line 33
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_27

    .line 39
    return v2

    .line 40
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_19
.end method

.method private updateSpecificity(Leu/medsea/mimeutil/MimeType;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->get(Leu/medsea/mimeutil/MimeType;)Leu/medsea/mimeutil/MimeType;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-virtual {v0, v2}, Leu/medsea/mimeutil/MimeType;->setSpecificity(I)V

    .line 17
    invoke-virtual {p1, v2}, Leu/medsea/mimeutil/MimeType;->setSpecificity(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Leu/medsea/mimeutil/MimeType;

    .line 7
    if-eqz v1, :cond_21

    .line 9
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_14

    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Leu/medsea/mimeutil/MimeType;

    .line 18
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->updateSpecificity(Leu/medsea/mimeutil/MimeType;)V

    .line 21
    :cond_14
    move-object v0, p1

    .line 22
    check-cast v0, Leu/medsea/mimeutil/MimeType;

    .line 24
    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V

    .line 27
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 29
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_21
    instance-of v1, p1, Ljava/util/Collection;

    .line 36
    if-eqz v1, :cond_2c

    .line 38
    check-cast p1, Ljava/util/Collection;

    .line 40
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->addAll(Ljava/util/Collection;)Z

    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_2c
    instance-of v1, p1, Ljava/lang/String;

    .line 47
    const-string v2, ","

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eqz v1, :cond_4f

    .line 52
    check-cast p1, Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    move p1, v0

    .line 59
    :goto_3a
    array-length v2, v1

    .line 60
    if-lt v0, v2, :cond_3e

    .line 62
    return p1

    .line 63
    :cond_3e
    :try_start_3e
    new-instance v2, Leu/medsea/mimeutil/MimeType;

    .line 65
    aget-object v4, v1, v0

    .line 67
    invoke-direct {v2, v4}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v2}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    .line 73
    move-result v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_4c

    .line 74
    if-eqz v2, :cond_4c

    .line 76
    move p1, v3

    .line 77
    :catch_4c
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_3a

    .line 80
    :cond_4f
    instance-of v1, p1, [Ljava/lang/String;

    .line 82
    if-eqz v1, :cond_79

    .line 84
    check-cast p1, [Ljava/lang/String;

    .line 86
    move v1, v0

    .line 87
    move v4, v1

    .line 88
    :goto_57
    array-length v5, p1

    .line 89
    if-lt v1, v5, :cond_5b

    .line 91
    return v4

    .line 92
    :cond_5b
    aget-object v5, p1, v1

    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    move-result-object v5

    .line 98
    move v6, v0

    .line 99
    :goto_62
    array-length v7, v5

    .line 100
    if-lt v6, v7, :cond_68

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_57

    .line 105
    :cond_68
    :try_start_68
    new-instance v7, Leu/medsea/mimeutil/MimeType;

    .line 107
    aget-object v8, v5, v6

    .line 109
    invoke-direct {v7, v8}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v7}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    .line 115
    move-result v7
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_73} :catch_76

    .line 116
    if-eqz v7, :cond_76

    .line 118
    move v4, v3

    .line 119
    :catch_76
    :cond_76
    add-int/lit8 v6, v6, 0x1

    .line 121
    goto :goto_62

    .line 122
    :cond_79
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :catch_8
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    :try_start_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    .line 23
    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_8

    .line 24
    if-eqz v1, :cond_8

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_8
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10

    .line 1
    instance-of v0, p1, Leu/medsea/mimeutil/MimeType;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    instance-of v0, p1, Ljava/util/Collection;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    check-cast p1, Ljava/util/Collection;

    .line 18
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->containsAll(Ljava/util/Collection;)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_16
    instance-of v0, p1, Ljava/lang/String;

    .line 25
    const-string v1, ","

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v0, :cond_3a

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    move p1, v3

    .line 38
    :goto_25
    array-length v1, v0

    .line 39
    if-lt p1, v1, :cond_29

    .line 41
    return v2

    .line 42
    :cond_29
    new-instance v1, Leu/medsea/mimeutil/MimeType;

    .line 44
    aget-object v4, v0, p1

    .line 46
    invoke-direct {v1, v4}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_37

    .line 55
    return v3

    .line 56
    :cond_37
    add-int/lit8 p1, p1, 0x1

    .line 58
    goto :goto_25

    .line 59
    :cond_3a
    instance-of v0, p1, [Ljava/lang/String;

    .line 61
    if-eqz v0, :cond_63

    .line 63
    check-cast p1, [Ljava/lang/String;

    .line 65
    move v0, v3

    .line 66
    :goto_41
    array-length v4, p1

    .line 67
    if-lt v0, v4, :cond_45

    .line 69
    return v2

    .line 70
    :cond_45
    aget-object v4, p1, v0

    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    move v5, v3

    .line 77
    :goto_4c
    array-length v6, v4

    .line 78
    if-lt v5, v6, :cond_52

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 82
    goto :goto_41

    .line 83
    :cond_52
    new-instance v6, Leu/medsea/mimeutil/MimeType;

    .line 85
    aget-object v7, v4, v5

    .line 87
    invoke-direct {v6, v7}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v6}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_60

    .line 96
    return v3

    .line 97
    :cond_60
    add-int/lit8 v5, v5, 0x1

    .line 99
    goto :goto_4c

    .line 100
    :cond_63
    return v3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_f

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_7

    .line 26
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    .line 7
    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->match(Ljava/util/Collection;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public matches(Ljava/lang/String;)Ljava/util/Collection;
    .registers 6

    .line 1
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    .line 3
    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    .line 6
    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeTypeHashSet;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_10

    .line 16
    return-object v0

    .line 17
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Leu/medsea/mimeutil/MimeType;

    .line 23
    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_9

    .line 33
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    goto :goto_9
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Leu/medsea/mimeutil/MimeType;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    instance-of v1, p1, Ljava/lang/String;

    .line 18
    const-string v2, ","

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_33

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    move p1, v0

    .line 30
    :goto_1d
    array-length v2, v1

    .line 31
    if-lt v0, v2, :cond_22

    .line 33
    :goto_20
    move v0, p1

    .line 34
    goto :goto_69

    .line 35
    :cond_22
    new-instance v2, Leu/medsea/mimeutil/MimeType;

    .line 37
    aget-object v4, v1, v0

    .line 39
    invoke-direct {v2, v4}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v2}, Leu/medsea/mimeutil/MimeTypeHashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_30

    .line 48
    move p1, v3

    .line 49
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_1d

    .line 52
    :cond_33
    instance-of v1, p1, [Ljava/lang/String;

    .line 54
    if-eqz v1, :cond_5e

    .line 56
    move-object v1, p1

    .line 57
    check-cast v1, [Ljava/lang/String;

    .line 59
    move p1, v0

    .line 60
    move v4, p1

    .line 61
    :goto_3c
    array-length v5, v1

    .line 62
    if-lt v4, v5, :cond_40

    .line 64
    goto :goto_20

    .line 65
    :cond_40
    aget-object v5, v1, v4

    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    move v6, v0

    .line 72
    :goto_47
    array-length v7, v5

    .line 73
    if-lt v6, v7, :cond_4d

    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 77
    goto :goto_3c

    .line 78
    :cond_4d
    new-instance v7, Leu/medsea/mimeutil/MimeType;

    .line 80
    aget-object v8, v5, v6

    .line 82
    invoke-direct {v7, v8}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v7}, Leu/medsea/mimeutil/MimeTypeHashSet;->remove(Ljava/lang/Object;)Z

    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_5b

    .line 91
    move p1, v3

    .line 92
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    .line 94
    goto :goto_47

    .line 95
    :cond_5e
    instance-of v1, p1, Ljava/util/Collection;

    .line 97
    if-eqz v1, :cond_69

    .line 99
    check-cast p1, Ljava/util/Collection;

    .line 101
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 104
    move-result p1

    .line 105
    return p1

    .line 106
    :cond_69
    :goto_69
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->remove(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_8

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_8
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    .line 6
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    iget-object p1, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeTypeHashSet;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_14

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Leu/medsea/mimeutil/MimeType;

    .line 27
    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_9

    .line 40
    const-string v2, ","

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    goto :goto_9
.end method
