.class public Lcom/xiaomi/onetrack/c/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/json/JSONArray;

.field public b:I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;ILjava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/h;->a:Lorg/json/JSONArray;

    .line 6
    iput p2, p0, Lcom/xiaomi/onetrack/c/h;->b:I

    .line 8
    iput-object p3, p0, Lcom/xiaomi/onetrack/c/h;->c:Ljava/util/ArrayList;

    .line 10
    iput-boolean p4, p0, Lcom/xiaomi/onetrack/c/h;->d:Z

    .line 12
    return-void
.end method
