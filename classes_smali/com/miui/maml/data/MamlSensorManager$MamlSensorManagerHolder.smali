.class Lcom/miui/maml/data/MamlSensorManager$MamlSensorManagerHolder;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/MamlSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamlSensorManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/data/MamlSensorManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/miui/maml/data/MamlSensorManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/data/MamlSensorManager;-><init>(Lcom/miui/maml/data/MamlSensorManager$1;)V

    .line 7
    sput-object v0, Lcom/miui/maml/data/MamlSensorManager$MamlSensorManagerHolder;->INSTANCE:Lcom/miui/maml/data/MamlSensorManager;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
