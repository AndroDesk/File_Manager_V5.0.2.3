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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lo/b;)V
    .registers 2

    iput-object p1, p0, Lo/b$d;->c:Lo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/b$d;->b:Z

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

    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    if-ne p1, v0, :cond_f

    iget-object p1, v0, Lo/b$c;->d:Lo/b$c;

    iput-object p1, p0, Lo/b$d;->a:Lo/b$c;

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lo/b$d;->b:Z

    :cond_f
    return-void
.end method

.method public final hasNext()Z
    .registers 4

    iget-boolean v0, p0, Lo/b$d;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lo/b$d;->c:Lo/b;

    iget-object v0, v0, Lo/b;->a:Lo/b$c;

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    :cond_f
    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lo/b$c;->c:Lo/b$c;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lo/b$d;->b:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/b$d;->b:Z

    iget-object v0, p0, Lo/b$d;->c:Lo/b;

    iget-object v0, v0, Lo/b;->a:Lo/b$c;

    iput-object v0, p0, Lo/b$d;->a:Lo/b$c;

    goto :goto_18

    :cond_e
    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lo/b$c;->c:Lo/b$c;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, Lo/b$d;->a:Lo/b$c;

    :goto_18
    iget-object v0, p0, Lo/b$d;->a:Lo/b$c;

    return-object v0
.end method
