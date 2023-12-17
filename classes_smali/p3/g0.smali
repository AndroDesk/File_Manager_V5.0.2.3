.class public final Lp3/g0;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lp3/h0;


# instance fields
.field public final a:Lp3/s0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/s0;)V
    .registers 2
    .param p1  # Lp3/s0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp3/g0;->a:Lp3/s0;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getList()Lp3/s0;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/g0;->a:Lp3/s0;

    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
