.class public final Lm4/i;
.super Ljava/lang/Object;
.source "Zip4jConfig.java"


# instance fields
.field public final a:Ljava/nio/charset/Charset;

.field public final b:I

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm4/i;->a:Ljava/nio/charset/Charset;

    iput p1, p0, Lm4/i;->b:I

    iput-boolean p2, p0, Lm4/i;->c:Z

    return-void
.end method
