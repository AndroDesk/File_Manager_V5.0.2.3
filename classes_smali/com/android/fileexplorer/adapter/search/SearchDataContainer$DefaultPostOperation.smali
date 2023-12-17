.class Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DefaultPostOperation;
.super Ljava/lang/Object;
.source "SearchDataContainer.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/search/SearchDataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultPostOperation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/search/SearchDataContainer;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DefaultPostOperation;->this$0:Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DefaultPostOperation;-><init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer;)V

    return-void
.end method


# virtual methods
.method public postProcessNormalSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 2

    return-object p1
.end method

.method public postProcessTagSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 2

    return-object p1
.end method
