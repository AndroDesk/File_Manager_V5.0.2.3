.class Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;
.super Ljava/lang/Object;
.source "ModelAppliactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;-><init>(Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$1;)V

    sput-object v0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;->sInstance:Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;
    .registers 1

    sget-object v0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;->sInstance:Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    return-object v0
.end method
