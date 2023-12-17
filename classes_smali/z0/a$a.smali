.class public final Lz0/a$a;
.super Lz0/a;
.source "CreationExtras.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lz0/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz0/a$a;

    invoke-direct {v0}, Lz0/a$a;-><init>()V

    sput-object v0, Lz0/a$a;->b:Lz0/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lz0/a;-><init>()V

    .line 4
    return-void
.end method
