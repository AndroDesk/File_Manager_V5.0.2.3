.class public final Lp3/i0;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# instance fields
.field public final a:Lp3/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lp3/h0;)V
    .registers 2
    .param p1  # Lp3/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/i0;->a:Lp3/h0;

    return-void
.end method
