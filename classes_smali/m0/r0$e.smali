.class public Lm0/r0$e;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lm0/r0;

    invoke-direct {v0}, Lm0/r0;-><init>()V

    invoke-direct {p0, v0}, Lm0/r0$e;-><init>(Lm0/r0;)V

    return-void
.end method

.method public constructor <init>(Lm0/r0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public b()Lm0/r0;
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lf0/f;)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public d(Lf0/f;)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method
