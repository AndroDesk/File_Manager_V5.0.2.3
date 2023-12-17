.class public final Ln4/j$a;
.super Lm4/m;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lm4/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lm4/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lm4/m;-><init>(Lm4/i;)V

    .line 4
    iput-object p1, p0, Ln4/j$a;->b:Ljava/util/List;

    .line 6
    return-void
.end method
