.class public final Ln4/i$a;
.super Lm4/m;
.source "ExtractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lm4/i;)V
    .registers 4

    .line 1
    invoke-direct {p0, p3}, Lm4/m;-><init>(Lm4/i;)V

    .line 4
    iput-object p1, p0, Ln4/i$a;->b:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Ln4/i$a;->c:Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Ln4/i$a;->d:Ljava/lang/String;

    .line 11
    return-void
.end method
