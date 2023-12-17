.class abstract Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;
.super Ljava/lang/Object;
.source "PrivateFileSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/PrivateFileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FileComparator"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;->this$0:Lcom/android/fileexplorer/model/PrivateFileSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    check-cast p2, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v1

    if-ne v0, v1, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;->doCompare(Lcom/android/fileexplorer/encryption/PrivateFile;Lcom/android/fileexplorer/encryption/PrivateFile;)I

    move-result p1

    return p1

    :cond_17
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, -0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x1

    :goto_20
    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public abstract doCompare(Lcom/android/fileexplorer/encryption/PrivateFile;Lcom/android/fileexplorer/encryption/PrivateFile;)I
.end method
