.class public abstract Lv3/g;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J

.field public b:Lv3/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Lv3/k;->f:Lv3/i;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lv3/g;-><init>(JLv3/h;)V

    return-void
.end method

.method public constructor <init>(JLv3/h;)V
    .registers 4
    .param p3  # Lv3/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lv3/g;->a:J

    iput-object p3, p0, Lv3/g;->b:Lv3/h;

    return-void
.end method
