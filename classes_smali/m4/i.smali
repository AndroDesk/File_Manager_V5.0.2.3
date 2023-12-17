.class public final Lm4/i;
.super Ljava/lang/Object;
.source "Zip4jConfig.java"


# instance fields
.field public final a:Ljava/nio/charset/Charset;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 7
    iput p1, p0, Lm4/i;->b:I

    .line 9
    iput-boolean p2, p0, Lm4/i;->c:Z

    .line 11
    return-void
.end method
