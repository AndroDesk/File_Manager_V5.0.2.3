.class public Lcom/xiaomi/onetrack/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/xiaomi/onetrack/a/c/a;->a:I

    .line 6
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    .line 8
    iput-boolean p3, p0, Lcom/xiaomi/onetrack/a/c/a;->c:Z

    .line 10
    return-void
.end method
