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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lo/b;->d:I

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

    iget-object v0, p0, Lo/b;->a:Lo/b$c;

    :goto_2
    if-eqz v0, :cond_10

    iget-object v1, v0, Lo/b$c;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_10

    :cond_d
    iget-object v0, v0, Lo/b$c;->c:Lo/b$c;

    goto :goto_2

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

    invoke-virtual {p0, p1}, Lo/b;->a(Ljava/lang/Object;)Lo/b$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    iget v1, p0, Lo/b;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/b;->d:I

    iget-object v1, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/b$f;

    invoke-interface {v2, p1}, Lo/b$f;->a(Lo/b$c;)V

    goto :goto_20

    :cond_30
    iget-object v1, p1, Lo/b$c;->d:Lo/b$c;

    if-eqz v1, :cond_39

    iget-object v2, p1, Lo/b$c;->c:Lo/b$c;

    iput-object v2, v1, Lo/b$c;->c:Lo/b$c;

    goto :goto_3d

    :cond_39
    iget-object v2, p1, Lo/b$c;->c:Lo/b$c;

    iput-object v2, p0, Lo/b;->a:Lo/b$c;

    :goto_3d
    iget-object v2, p1, Lo/b$c;->c:Lo/b$c;

    if-eqz v2, :cond_44

    iput-object v1, v2, Lo/b$c;->d:Lo/b$c;

    goto :goto_46

    :cond_44
    iput-object v1, p0, Lo/b;->b:Lo/b$c;

    :goto_46
    iput-object v0, p1, Lo/b$c;->c:Lo/b$c;

    iput-object v0, p1, Lo/b$c;->d:Lo/b$c;

    iget-object p1, p1, Lo/b$c;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lo/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lo/b;

    iget v1, p0, Lo/b;->d:I

    iget v3, p1, Lo/b;->d:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lo/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lo/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    move-object v3, v1

    check-cast v3, Lo/b$e;

    invoke-virtual {v3}, Lo/b$e;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    move-object v4, p1

    check-cast v4, Lo/b$e;

    invoke-virtual {v4}, Lo/b$e;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {v3}, Lo/b$e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v4}, Lo/b$e;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3b

    if-nez v4, :cond_43

    :cond_3b
    if-eqz v3, :cond_1b

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_43
    return v2

    :cond_44
    invoke-virtual {v3}, Lo/b$e;->hasNext()Z

    move-result v1

    if-nez v1, :cond_53

    check-cast p1, Lo/b$e;

    invoke-virtual {p1}, Lo/b$e;->hasNext()Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_54

    :cond_53
    move v0, v2

    :goto_54
    return v0
.end method

.method public final hashCode()I
    .registers 5

    invoke-virtual {p0}, Lo/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    move-object v2, v0

    check-cast v2, Lo/b$e;

    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lo/b$e;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

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

    new-instance v0, Lo/b$a;

    iget-object v1, p0, Lo/b;->a:Lo/b$c;

    iget-object v2, p0, Lo/b;->b:Lo/b$c;

    invoke-direct {v0, v1, v2}, Lo/b$a;-><init>(Lo/b$c;Lo/b$c;)V

    iget-object v1, p0, Lo/b;->c:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "["

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    move-object v2, v1

    check-cast v2, Lo/b$e;

    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Lo/b$e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_2c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
