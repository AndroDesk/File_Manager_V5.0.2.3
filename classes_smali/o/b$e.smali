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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/b$e;->a:Lo/b$c;

    iput-object p1, p0, Lo/b$e;->b:Lo/b$c;

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

    iget-object v0, p0, Lo/b$e;->a:Lo/b$c;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    if-ne p1, v0, :cond_d

    iput-object v1, p0, Lo/b$e;->b:Lo/b$c;

    iput-object v1, p0, Lo/b$e;->a:Lo/b$c;

    :cond_d
    iget-object v0, p0, Lo/b$e;->a:Lo/b$c;

    if-ne v0, p1, :cond_17

    invoke-virtual {p0, v0}, Lo/b$e;->b(Lo/b$c;)Lo/b$c;

    move-result-object v0

    iput-object v0, p0, Lo/b$e;->a:Lo/b$c;

    :cond_17
    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    if-ne v0, p1, :cond_28

    iget-object p1, p0, Lo/b$e;->a:Lo/b$c;

    if-eq v0, p1, :cond_26

    if-nez p1, :cond_22

    goto :goto_26

    :cond_22
    invoke-virtual {p0, v0}, Lo/b$e;->c(Lo/b$c;)Lo/b$c;

    move-result-object v1

    :cond_26
    :goto_26
    iput-object v1, p0, Lo/b$e;->b:Lo/b$c;

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

    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lo/b$e;->b:Lo/b$c;

    iget-object v1, p0, Lo/b$e;->a:Lo/b$c;

    if-eq v0, v1, :cond_e

    if-nez v1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0, v0}, Lo/b$e;->c(Lo/b$c;)Lo/b$c;

    move-result-object v1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x0

    :goto_f
    iput-object v1, p0, Lo/b$e;->b:Lo/b$c;

    return-object v0
.end method
