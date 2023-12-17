.class Leu/medsea/mimeutil/MimeTypeHashSet;
.super Ljava/lang/Object;
.source "MimeTypeHashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/util/Collection;


# instance fields
.field private hashSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1, p2}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/MimeType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private get(Leu/medsea/mimeutil/MimeType;)Leu/medsea/mimeutil/MimeType;
    .registers 5

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return-object p1

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/medsea/mimeutil/MimeType;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1
.end method

.method private match(Ljava/util/Collection;)Z
    .registers 5

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeTypeHashSet;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Leu/medsea/mimeutil/MimeType;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Leu/medsea/mimeutil/MimeType;

    move v0, v2

    :goto_19
    array-length v1, p1

    if-lt v0, v1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method private updateSpecificity(Leu/medsea/mimeutil/MimeType;)V
    .registers 5

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->get(Leu/medsea/mimeutil/MimeType;)Leu/medsea/mimeutil/MimeType;

    move-result-object v0

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    move-result v1

    invoke-virtual {p1}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Leu/medsea/mimeutil/MimeType;->setSpecificity(I)V

    invoke-virtual {p1, v2}, Leu/medsea/mimeutil/MimeType;->setSpecificity(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Leu/medsea/mimeutil/MimeType;

    if-eqz v1, :cond_21

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Leu/medsea/mimeutil/MimeType;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->updateSpecificity(Leu/medsea/mimeutil/MimeType;)V

    :cond_14
    move-object v0, p1

    check-cast v0, Leu/medsea/mimeutil/MimeType;

    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2c

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_2c
    instance-of v1, p1, Ljava/lang/String;

    const-string v2, ","

    const/4 v3, 0x1

    if-eqz v1, :cond_4f

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move p1, v0

    :goto_3a
    array-length v2, v1

    if-lt v0, v2, :cond_3e

    return p1

    :cond_3e
    :try_start_3e
    new-instance v2, Leu/medsea/mimeutil/MimeType;

    aget-object v4, v1, v0

    invoke-direct {v2, v4}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_4c

    if-eqz v2, :cond_4c

    move p1, v3

    :catch_4c
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4f
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_79

    check-cast p1, [Ljava/lang/String;

    move v1, v0

    move v4, v1

    :goto_57
    array-length v5, p1

    if-lt v1, v5, :cond_5b

    return v4

    :cond_5b
    aget-object v5, p1, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v6, v0

    :goto_62
    array-length v7, v5

    if-lt v6, v7, :cond_68

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_68
    :try_start_68
    new-instance v7, Leu/medsea/mimeutil/MimeType;

    aget-object v8, v5, v6

    invoke-direct {v7, v8}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    move-result v7
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_73} :catch_76

    if-eqz v7, :cond_76

    move v4, v3

    :catch_76
    :cond_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    :cond_79
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_8
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    :try_start_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_8

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10

    instance-of v0, p1, Leu/medsea/mimeutil/MimeType;

    if-eqz v0, :cond_b

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_16
    instance-of v0, p1, Ljava/lang/String;

    const-string v1, ","

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move p1, v3

    :goto_25
    array-length v1, v0

    if-lt p1, v1, :cond_29

    return v2

    :cond_29
    new-instance v1, Leu/medsea/mimeutil/MimeType;

    aget-object v4, v0, p1

    invoke-direct {v1, v4}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v3

    :cond_37
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    :cond_3a
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_63

    check-cast p1, [Ljava/lang/String;

    move v0, v3

    :goto_41
    array-length v4, p1

    if-lt v0, v4, :cond_45

    return v2

    :cond_45
    aget-object v4, p1, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_4c
    array-length v6, v4

    if-lt v5, v6, :cond_52

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_52
    new-instance v6, Leu/medsea/mimeutil/MimeType;

    aget-object v7, v4, v5

    invoke-direct {v6, v7}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    return v3

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_63
    return v3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->match(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Ljava/util/Collection;
    .registers 6

    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeTypeHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-object v0

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/MimeType;

    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Leu/medsea/mimeutil/MimeType;

    if-eqz v1, :cond_f

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    instance-of v1, p1, Ljava/lang/String;

    const-string v2, ","

    const/4 v3, 0x1

    if-eqz v1, :cond_33

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move p1, v0

    :goto_1d
    array-length v2, v1

    if-lt v0, v2, :cond_22

    :goto_20
    move v0, p1

    goto :goto_69

    :cond_22
    new-instance v2, Leu/medsea/mimeutil/MimeType;

    aget-object v4, v1, v0

    invoke-direct {v2, v4}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Leu/medsea/mimeutil/MimeTypeHashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move p1, v3

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_5e

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    move p1, v0

    move v4, p1

    :goto_3c
    array-length v5, v1

    if-lt v4, v5, :cond_40

    goto :goto_20

    :cond_40
    aget-object v5, v1, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v6, v0

    :goto_47
    array-length v7, v5

    if-lt v6, v7, :cond_4d

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4d
    new-instance v7, Leu/medsea/mimeutil/MimeType;

    aget-object v8, v5, v6

    invoke-direct {v7, v8}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Leu/medsea/mimeutil/MimeTypeHashSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    move p1, v3

    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_5e
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_69

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_69
    :goto_69
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/MimeTypeHashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/MimeTypeHashSet;->hashSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeTypeHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/MimeType;

    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9
.end method
