.class public final Ly2/e;
.super Ljava/lang/Object;
.source "Unit.kt"


# static fields
.field public static final a:Ly2/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly2/e;

    invoke-direct {v0}, Ly2/e;-><init>()V

    sput-object v0, Ly2/e;->a:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
