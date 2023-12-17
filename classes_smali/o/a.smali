.class public final Lo/a;
.super Lo/b;
.source "FastSafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lo/b$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lo/b;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lo/a;->e:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lo/b$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/a;->e:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lo/b$c;

    .line 9
    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lo/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo/a;->e:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lo/a;->a(Ljava/lang/Object;)Lo/b$c;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iget-object p1, v0, Lo/b$c;->b:Ljava/lang/Object;

    .line 9
    return-object p1

    .line 10
    :cond_9
    iget-object v0, p0, Lo/a;->e:Ljava/util/HashMap;

    .line 12
    new-instance v1, Lo/b$c;

    .line 14
    invoke-direct {v1, p1, p2}, Lo/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    iget p2, p0, Lo/b;->d:I

    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 21
    iput p2, p0, Lo/b;->d:I

    .line 23
    iget-object p2, p0, Lo/b;->b:Lo/b$c;

    .line 25
    if-nez p2, :cond_1f

    .line 27
    iput-object v1, p0, Lo/b;->a:Lo/b$c;

    .line 29
    iput-object v1, p0, Lo/b;->b:Lo/b$c;

    .line 31
    goto :goto_25

    .line 32
    :cond_1f
    iput-object v1, p2, Lo/b$c;->c:Lo/b$c;

    .line 34
    iput-object p2, v1, Lo/b$c;->d:Lo/b$c;

    .line 36
    iput-object v1, p0, Lo/b;->b:Lo/b$c;

    .line 38
    :goto_25
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method
