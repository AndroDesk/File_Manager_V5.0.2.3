.class public final Lv3/b;
.super Lv3/e;
.source "Dispatcher.kt"


# static fields
.field public static final c:Lv3/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/b;

    invoke-direct {v0}, Lv3/b;-><init>()V

    sput-object v0, Lv3/b;->c:Lv3/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    sget v0, Lv3/k;->b:I

    .line 3
    sget v1, Lv3/k;->c:I

    .line 5
    sget-wide v2, Lv3/k;->d:J

    .line 7
    invoke-direct {p0, v0, v1, v2, v3}, Lv3/e;-><init>(IIJ)V

    .line 10
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "Dispatchers.Default cannot be closed"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
