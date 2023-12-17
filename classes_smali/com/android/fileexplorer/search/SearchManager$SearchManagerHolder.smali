.class Lcom/android/fileexplorer/search/SearchManager$SearchManagerHolder;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/search/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchManagerHolder"
.end annotation


# static fields
.field public static instance:Lcom/android/fileexplorer/search/SearchManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/search/SearchManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/search/SearchManager;-><init>(Lcom/android/fileexplorer/search/SearchManager$1;)V

    .line 7
    sput-object v0, Lcom/android/fileexplorer/search/SearchManager$SearchManagerHolder;->instance:Lcom/android/fileexplorer/search/SearchManager;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
