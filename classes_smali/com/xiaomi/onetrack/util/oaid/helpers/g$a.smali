.class Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/helpers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/reflect/Method;

.field public c:[Ljava/lang/Object;

.field public final synthetic d:Lcom/xiaomi/onetrack/util/oaid/helpers/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;->d:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;->b:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;->c:[Ljava/lang/Object;

    return-void
.end method
