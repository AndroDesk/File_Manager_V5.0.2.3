.class public final Landroidx/window/layout/h$a;
.super Ljava/lang/Object;
.source "FoldingFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Landroidx/window/layout/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Landroidx/window/layout/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/window/layout/h$a;

    .line 3
    const-string v1, "VERTICAL"

    .line 5
    invoke-direct {v0, v1}, Landroidx/window/layout/h$a;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Landroidx/window/layout/h$a;->b:Landroidx/window/layout/h$a;

    .line 10
    new-instance v0, Landroidx/window/layout/h$a;

    .line 12
    const-string v1, "HORIZONTAL"

    .line 14
    invoke-direct {v0, v1}, Landroidx/window/layout/h$a;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Landroidx/window/layout/h$a;->c:Landroidx/window/layout/h$a;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/window/layout/h$a;->a:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/window/layout/h$a;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method
