.class public Lcom/xiaomi/stat/a/k;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/json/JSONArray;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/util/ArrayList;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/stat/a/k;->a:Lorg/json/JSONArray;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/stat/a/k;->b:Ljava/util/ArrayList;

    .line 8
    iput-boolean p3, p0, Lcom/xiaomi/stat/a/k;->c:Z

    .line 10
    return-void
.end method
