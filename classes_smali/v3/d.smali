.class public final Lv3/d;
.super Lv3/f;
.source "Tasks.kt"


# static fields
.field public static final a:Lv3/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/d;

    invoke-direct {v0}, Lv3/d;-><init>()V

    sput-object v0, Lv3/d;->a:Lv3/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lv3/f;-><init>()V

    .line 4
    return-void
.end method
