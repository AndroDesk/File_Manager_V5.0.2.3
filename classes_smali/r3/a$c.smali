.class public final Lr3/a$c;
.super Lp3/c;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lr3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/j<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lr3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr3/a;Lr3/a$b;)V
    .registers 3
    .param p1  # Lr3/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lr3/a$c;->b:Lr3/a;

    .line 3
    invoke-direct {p0}, Lp3/c;-><init>()V

    .line 6
    iput-object p2, p0, Lr3/a$c;->a:Lr3/j;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lr3/a$c;->a:Lr3/j;

    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    if-eqz p1, :cond_12

    .line 14
    iget-object p1, p0, Lr3/a$c;->b:Lr3/a;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :cond_12
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0, p1}, Lr3/a$c;->a(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 8
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RemoveReceiveOnCancel["

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lr3/a$c;->a:Lr3/j;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x5d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
