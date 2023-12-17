.class public final Lo/b$d;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lo/b$f<",
        "TK;TV;>;"
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

.field public b:Z

.field public final synthetic c:Lo/b;


# direct methods
.method public constructor <init>(Lo/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo/b$d;->c:Lo/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lo/b$d;->b:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lo/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    .line 3
    if-ne p1, v0, :cond_f

    .line 5
    iget-object p1, v0, Lo/b$c;->d:Lo/b$c;

    .line 7
    iput-object p1, p0, Lo/b$d;->a:Lo/b$c;

    .line 9
    if-nez p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    iput-boolean p1, p0, Lo/b$d;->b:Z

    .line 16
    :cond_f
    return-void
.end method

.method public final hasNext()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lo/b$d;->b:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object v0, p0, Lo/b$d;->c:Lo/b;

    .line 9
    iget-object v0, v0, Lo/b;->a:Lo/b$c;

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v1, v2

    .line 15
    :goto_e
    return v1

    .line 16
    :cond_f
    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    .line 18
    if-eqz v0, :cond_18

    .line 20
    iget-object v0, v0, Lo/b$c;->c:Lo/b$c;

    .line 22
    if-eqz v0, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v1, v2

    .line 26
    :goto_19
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lo/b$d;->b:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/b$d;->b:Z

    .line 8
    iget-object v0, p0, Lo/b$d;->c:Lo/b;

    .line 10
    iget-object v0, v0, Lo/b;->a:Lo/b$c;

    .line 12
    iput-object v0, p0, Lo/b$d;->a:Lo/b$c;

    .line 14
    goto :goto_18

    .line 15
    :cond_e
    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    iget-object v0, v0, Lo/b$c;->c:Lo/b$c;

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    iput-object v0, p0, Lo/b$d;->a:Lo/b$c;

    .line 25
    :goto_18
    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    .line 27
    return-object v0
.end method
