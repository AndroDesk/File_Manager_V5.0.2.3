.class public Lo/b;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/b$c;,
        Lo/b$f;,
        Lo/b$d;,
        Lo/b$b;,
        Lo/b$a;,
        Lo/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public a:Lo/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Lo/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lo/b$f<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lo/b;->d:I

    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lo/b$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/b;->a:Lo/b$c;

    .line 3
    :goto_2
    if-eqz v0, :cond_10

    .line 5
    iget-object v1, v0, Lo/b$c;->a:Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    iget-object v0, v0, Lo/b$c;->c:Lo/b$c;

    .line 16
    goto :goto_2

    .line 17
    :cond_10
    :goto_10
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lo/b;->a(Ljava/lang/Object;)Lo/b$c;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    iget v1, p0, Lo/b;->d:I

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 13
    iput v1, p0, Lo/b;->d:I

    .line 15
    iget-object v1, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 17
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_30

    .line 23
    iget-object v1, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 25
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 33
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_30

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lo/b$f;

    .line 45
    invoke-interface {v2, p1}, Lo/b$f;->a(Lo/b$c;)V

    .line 48
    goto :goto_20

    .line 49
    :cond_30
    iget-object v1, p1, Lo/b$c;->d:Lo/b$c;

    .line 51
    if-eqz v1, :cond_39

    .line 53
    iget-object v2, p1, Lo/b$c;->c:Lo/b$c;

    .line 55
    iput-object v2, v1, Lo/b$c;->c:Lo/b$c;

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    iget-object v2, p1, Lo/b$c;->c:Lo/b$c;

    .line 60
    iput-object v2, p0, Lo/b;->a:Lo/b$c;

    .line 62
    :goto_3d
    iget-object v2, p1, Lo/b$c;->c:Lo/b$c;

    .line 64
    if-eqz v2, :cond_44

    .line 66
    iput-object v1, v2, Lo/b$c;->d:Lo/b$c;

    .line 68
    goto :goto_46

    .line 69
    :cond_44
    iput-object v1, p0, Lo/b;->b:Lo/b$c;

    .line 71
    :goto_46
    iput-object v0, p1, Lo/b$c;->c:Lo/b$c;

    .line 73
    iput-object v0, p1, Lo/b$c;->d:Lo/b$c;

    .line 75
    iget-object p1, p1, Lo/b$c;->b:Ljava/lang/Object;

    .line 77
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lo/b;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lo/b;

    .line 13
    iget v1, p0, Lo/b;->d:I

    .line 15
    iget v3, p1, Lo/b;->d:I

    .line 17
    if-eq v1, v3, :cond_13

    .line 19
    return v2

    .line 20
    :cond_13
    invoke-virtual {p0}, Lo/b;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lo/b;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 28
    :cond_1b
    move-object v3, v1

    .line 29
    check-cast v3, Lo/b$e;

    .line 31
    invoke-virtual {v3}, Lo/b$e;->hasNext()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_44

    .line 37
    move-object v4, p1

    .line 38
    check-cast v4, Lo/b$e;

    .line 40
    invoke-virtual {v4}, Lo/b$e;->hasNext()Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_44

    .line 46
    invoke-virtual {v3}, Lo/b$e;->next()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/util/Map$Entry;

    .line 52
    invoke-virtual {v4}, Lo/b$e;->next()Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    if-nez v3, :cond_3b

    .line 58
    if-nez v4, :cond_43

    .line 60
    :cond_3b
    if-eqz v3, :cond_1b

    .line 62
    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_1b

    .line 68
    :cond_43
    return v2

    .line 69
    :cond_44
    invoke-virtual {v3}, Lo/b$e;->hasNext()Z

    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_53

    .line 75
    check-cast p1, Lo/b$e;

    .line 77
    invoke-virtual {p1}, Lo/b$e;->hasNext()Z

    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_53

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v0, v2

    .line 85
    :goto_54
    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lo/b;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    move-object v2, v0

    .line 7
    check-cast v2, Lo/b$e;

    .line 9
    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1a

    .line 15
    invoke-virtual {v2}, Lo/b$e;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    .line 24
    move-result v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    goto :goto_5

    .line 27
    :cond_1a
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo/b$a;

    .line 3
    iget-object v1, p0, Lo/b;->a:Lo/b$c;

    .line 5
    iget-object v2, p0, Lo/b;->b:Lo/b$c;

    .line 7
    invoke-direct {v0, v1, v2}, Lo/b$a;-><init>(Lo/b$c;Lo/b$c;)V

    .line 10
    iget-object v1, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 12
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "["

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lo/b;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    :cond_a
    :goto_a
    move-object v2, v1

    .line 12
    check-cast v2, Lo/b$e;

    .line 14
    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2c

    .line 20
    invoke-virtual {v2}, Lo/b$e;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/util/Map$Entry;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_a

    .line 39
    const-string v2, ", "

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    goto :goto_a

    .line 45
    :cond_2c
    const-string v1, "]"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
