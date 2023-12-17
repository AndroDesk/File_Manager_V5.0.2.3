.class Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;
.super Ljava/lang/Object;
.source "FileGroupDbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/FileGroupDbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultHolder"
.end annotation


# instance fields
.field public toRemovedFileItemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public toRemovedFileItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItemIds:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/apptag/FileGroupDbManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;-><init>()V

    return-void
.end method
