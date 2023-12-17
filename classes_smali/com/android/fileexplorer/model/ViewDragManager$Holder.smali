.class Lcom/android/fileexplorer/model/ViewDragManager$Holder;
.super Ljava/lang/Object;
.source "ViewDragManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/ViewDragManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/fileexplorer/model/ViewDragManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/ViewDragManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/model/ViewDragManager;-><init>(Lcom/android/fileexplorer/model/ViewDragManager$1;)V

    sput-object v0, Lcom/android/fileexplorer/model/ViewDragManager$Holder;->INSTANCE:Lcom/android/fileexplorer/model/ViewDragManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/android/fileexplorer/model/ViewDragManager;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/ViewDragManager$Holder;->INSTANCE:Lcom/android/fileexplorer/model/ViewDragManager;

    return-object v0
.end method
