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

    .line 1
    new-instance v0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;-><init>(Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$1;)V

    .line 7
    sput-object v0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;->sInstance:Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$100()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;->sInstance:Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 3
    return-object v0
.end method
