.class public abstract Lo/b$e;
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
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
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

.field public b:Lo/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/b$c;Lo/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b$c<",
            "TK;TV;>;",
            "Lo/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lo/b$e;->a:Lo/b$c;

    .line 6
    iput-object p1, p0, Lo/b$e;->b:Lo/b$c;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lo/b$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/b$e;->a:Lo/b$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_d

    .line 6
    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    .line 8
    if-ne p1, v0, :cond_d

    .line 10
    iput-object v1, p0, Lo/b$e;->b:Lo/b$c;

    .line 12
    iput-object v1, p0, Lo/b$e;->a:Lo/b$c;

    .line 14
    :cond_d
    iget-object v0, p0, Lo/b$e;->a:Lo/b$c;

    .line 16
    if-ne v0, p1, :cond_17

    .line 18
    invoke-virtual {p0, v0}, Lo/b$e;->b(Lo/b$c;)Lo/b$c;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lo/b$e;->a:Lo/b$c;

    .line 24
    :cond_17
    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    .line 26
    if-ne v0, p1, :cond_28

    .line 28
    iget-object p1, p0, Lo/b$e;->a:Lo/b$c;

    .line 30
    if-eq v0, p1, :cond_26

    .line 32
    if-nez p1, :cond_22

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    invoke-virtual {p0, v0}, Lo/b$e;->c(Lo/b$c;)Lo/b$c;

    .line 38
    move-result-object v1

    .line 39
    :cond_26
    :goto_26
    iput-object v1, p0, Lo/b$e;->b:Lo/b$c;

    .line 41
    :cond_28
    return-void
.end method

.method public abstract b(Lo/b$c;)Lo/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b$c<",
            "TK;TV;>;)",
            "Lo/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract c(Lo/b$c;)Lo/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b$c<",
            "TK;TV;>;)",
            "Lo/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    .line 3
    iget-object v1, p0, Lo/b$e;->a:Lo/b$c;

    .line 5
    if-eq v0, v1, :cond_e

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    invoke-virtual {p0, v0}, Lo/b$e;->c(Lo/b$c;)Lo/b$c;

    .line 13
    move-result-object v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    :goto_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    iput-object v1, p0, Lo/b$e;->b:Lo/b$c;

    .line 18
    return-object v0
.end method
